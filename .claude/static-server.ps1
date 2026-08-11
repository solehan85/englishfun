param(
  [int]$Port = 8080,
  [string]$Root = (Get-Location).Path
)

Add-Type -AssemblyName System.Net.HttpListener -ErrorAction SilentlyContinue

$listener = New-Object System.Net.HttpListener
$listener.Prefixes.Add("http://localhost:$Port/")
$listener.Start()
Write-Host "Serving $Root at http://localhost:$Port/"

$mimeMap = @{
  ".html" = "text/html; charset=utf-8"
  ".htm"  = "text/html; charset=utf-8"
  ".js"   = "application/javascript; charset=utf-8"
  ".json" = "application/json; charset=utf-8"
  ".css"  = "text/css; charset=utf-8"
  ".svg"  = "image/svg+xml"
  ".png"  = "image/png"
  ".jpg"  = "image/jpeg"
  ".jpeg" = "image/jpeg"
  ".mp3"  = "audio/mpeg"
  ".wav"  = "audio/wav"
}

while ($listener.IsListening) {
  $context = $listener.GetContext()
  $request = $context.Request
  $response = $context.Response
  try {
    $relPath = [Uri]::UnescapeDataString($request.Url.AbsolutePath.TrimStart('/'))
    if ([string]::IsNullOrWhiteSpace($relPath)) { $relPath = "index.html" }
    $fullPath = Join-Path $Root $relPath

    if (Test-Path $fullPath -PathType Container) {
      $fullPath = Join-Path $fullPath "index.html"
    }

    if (Test-Path $fullPath -PathType Leaf) {
      $ext = [IO.Path]::GetExtension($fullPath).ToLower()
      $contentType = $mimeMap[$ext]
      if (-not $contentType) { $contentType = "application/octet-stream" }
      $bytes = [IO.File]::ReadAllBytes($fullPath)
      $response.ContentType = $contentType
      $response.ContentLength64 = $bytes.Length
      $response.OutputStream.Write($bytes, 0, $bytes.Length)
    } else {
      $response.StatusCode = 404
      $notFound = [Text.Encoding]::UTF8.GetBytes("404 Not Found: $relPath")
      $response.OutputStream.Write($notFound, 0, $notFound.Length)
    }
  } catch {
    $response.StatusCode = 500
    $errBytes = [Text.Encoding]::UTF8.GetBytes("500 Server Error: $_")
    $response.OutputStream.Write($errBytes, 0, $errBytes.Length)
  } finally {
    $response.OutputStream.Close()
  }
}
