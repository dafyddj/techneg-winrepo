ffmpeg-yag:
  '0.7.6':
    full_name: ffmpegyag
    installer: 'https://downloads.sourceforge.net/project/ffmpegyag/ffmpegyag_0.7.6_windows-10-setup_i686.exe'
    source_hash: 'sha256=fcf9b4e27af59a7962954c1543e3fa2bc2d380f777cb5d6b25394bd7af9366ea'
    install_flags: '/SP- /SILENT /SUPPRESSMSGBOXES /NORESTART /NOCANCEL "/TASKS=shortcuts,shortcuts\startmenu"'
    uninstaller: '%ProgramFiles(x86)%\ffmpegyag\unins000.exe'
    uninstall_flags: '/SILENT /SUPPRESSMSGBOXES /NORESTART'
