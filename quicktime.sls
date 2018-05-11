qt7:
{% for version in ['7.79.80.95'] %}
  '2.3.6':
    full_name: QuickTime 7
    installer: 'https://f000.backblazeb2.com/file/techneg-repo/quicktime/quicktime-{{ version }}.msi'
    source_hash: 'sha256=03ea287b99df2605a9d32b0fe9096d811b8c7ed1654f822ff76f7e172e0ed0b8'
    install_flags: '/qn /norestart DESKTOP_SHORTCUTS=0'
    msiexec: True
    uninstaller: 'https://f000.backblazeb2.com/file/techneg-repo/quicktime/quicktime-{{ version }}.msi'
    uninstall_flags: '/qn /norestart'
{% endfor %}
