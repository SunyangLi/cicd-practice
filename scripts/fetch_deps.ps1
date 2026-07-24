# scripts/fetch_deps.ps1

$ErrorActionPreference = "Stop"   # 任何一步出错就立刻停止

# ---- 配置区,以后依赖变了只改这里 ----
$MathlibUrl = "https://github.com/SunyangLi/cicd-practice/releases/download/mathlib-v1.0.0/mathlib-win-x64-release.tar.gz"
$VendorDir = "vendor"

# ---- 下载 ----
Write-Host "Downloading mathlib..."
Invoke-WebRequest -Uri $MathlibUrl -OutFile "mathlib.tar.gz"

# ---- 解压 ----
Write-Host "Extracting to $VendorDir/..."
New-Item -ItemType Directory -Force -Path $VendorDir | Out-Null
tar -xzf mathlib.tar.gz -C $VendorDir

# ---- 清理压缩包 ----
Remove-Item mathlib.tar.gz

Write-Host "Done. mathlib is ready in $VendorDir/"