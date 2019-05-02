dejavu-x3:
{% for version in ['9.00.0765'] %}
  '{{ version }}':
    full_name: u'D\xe9j\xe0 Vu X3'
    installer: 'https://f000.backblazeb2.com/file/techneg-repo/dejavu/DejaVuX3.Setup.exe'
    source_hash: 'sha1=c8ec19335635a304fc5ab3d8d76a42bb45e4dd55'
    install_flags: '/S "/v/qn /norestart"'
    msiexec: False
    uninstaller: '{92DE52A4-384B-4C28-B67C-49F90B05936A}'
    uninstall_flags: '/qn /norestart'
{% endfor %}
