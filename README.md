# Azure Linux for WSL

This is based on the Azure Linux Base image without any modifications, other than a `dnf upgrade` and `dnf clean all`.

1. Extract the ZIP from the Releases page.
2. Run `install.cmd`.
3. Done!

> [!NOTE]  
> If you have installed this before, want to uninstall or already have a distro named `AzureLinux` installed, run this in an elevated Command Prompt:
> ```
> wsl --unregister AzureLinux
> ```
> And if you have installed this before or want to uninstall, run this as well:
> ```
> rd %systemdrive%\AzureLinux-WSL /s /q
> ```
