wordfast-pro:
{% for version in ['5.8.00800'] %}
  '{{ version }}':
    full_name: Wordfast Pro
    installer: 'http://cdn.wordfast.com/WFP5.8.0/Wordfast_Pro_5.8.0_64-bit.msi'
    source_hash: 'sha1=c61ad7bf571925a885d0d4fd84646fdb0b45f487'
    install_flags: '/qn /norestart AI_DESKTOP_SH=0'
    msiexec: True
    uninstaller: '{92DE52A4-384B-4C28-B67C-49F90B05936A}'
    uninstall_flags: '/qn /norestart'
{% endfor %}
