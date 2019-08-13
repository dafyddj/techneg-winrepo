sentinel:
{% for version, source_hash in [
  ('7.6.1', '07b35395c28839d01d6f6c6a0fb5e71607e7d98e')
] %}
  '{{ version }}':
    full_name: Sentinel Protection Installer {{ version }}
    msiexec: False
    installer: https://f000.backblazeb2.com/file/techneg-repo/wincaps3/sentinel-{{ version }}.exe
    install_flags: /S "/v/qn /norestart"
    uninstaller: msiexec.exe
    uninstall_flags: '/x {7B1AA2AB-ACD2-45C7-B1B1-364BEA40615F} /qn /norestart'
    source_hash: sha1={{ source_hash }}
{% endfor %}
