dejavu-x3:
{% for version, source_hash in [
  ('9.00.0765', 'c8ec19335635a304fc5ab3d8d76a42bb45e4dd55'),
  ('9.00.0780', '41b6cdeb15875b5350a73154540008c83bad7460')
] %}
  '{{ version }}':
    full_name: u'D\xe9j\xe0 Vu X3'
    installer: https://f000.backblazeb2.com/file/techneg-repo/dejavu/dejavu-x3-{{ version }}.exe
    source_hash: sha1={{ source_hash }}
    install_flags: '/S "/v/qn /norestart"'
    msiexec: False
    uninstaller: msiexec.exe
    uninstall_flags: '/x {E350DBC6-7B58-4AFE-AB3E-08A536B8514B} /qn /norestart'
{% endfor %}
