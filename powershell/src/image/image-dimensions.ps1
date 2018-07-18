add-type -AssemblyName System.Drawing
$png = New-Object System.Drawing.Bitmap 'c:\test\box.png'
$png.Height
$png.Width
$png.PhysicalDimension
$png.HorizontalResolution
$png.VerticalResolution
