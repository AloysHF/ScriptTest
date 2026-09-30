adb devices
if (Test-Path "system") {
    Remove-Item -Recurse -Force "system"
}
New-Item -ItemType Directory -Name "system"
adb pull /system/framework "system"