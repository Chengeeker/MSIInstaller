# MSIInstaller

适用于部分无法直接双击运行 `.msi` 安装包的 Windows 电脑，通过封装 Windows 官方 `msiexec` 实现正常安装流程。

---

## ✨ 功能特点

- 支持双击 `.msi` 文件直接安装
- 支持拖拽 `.msi` 到程序上安装
- 自动调用 Windows Installer (`msiexec`)
- 自动请求管理员权限，兼容性更强
- 同时提供安装版与免安装便携版

---

## 📦 版本说明

### 🔧 安装版（推荐）

适合长期使用，一次安装后系统级生效。

功能：

- 自动接管 `.msi` 默认打开方式
- 双击即可进入安装流程
- 支持卸载并恢复系统默认行为

使用方式：

1. 在 [Releases](https://github.com/Chengeeker/MSIInstaller/releases) 下载安装版 `MSIInstaller-Setup.exe`
2. 双击安装完成
3. 之后直接双击任意 `.msi` 文件即可安装

---

### 📁 免安装便携版

适合临时使用或无管理员权限环境。

使用方式：

1. 在 [Releases](https://github.com/Chengeeker/MSIInstaller/releases) 下载 `MSIInstaller.exe`
2. 手动绑定 `.msi` 默认打开方式：

   - Windows 设置 → 应用 → 默认应用 → 按文件类型选择
   - 找到 `.msi` → 选择 `MSIInstaller.exe`

   或：

   - 右键 `.msi` → 打开方式 → 选择 `MSIInstaller.exe`

3. 双击 `.msi` 即可安装

---

## ⚙ 工作原理

```text
msiexec /i "yourfile.msi"