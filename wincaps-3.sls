wincaps-3:
{% for version, source_hash in [
  ('3.17.4', '213a5b16d8bdd62d051206e0fde2807474771ba7')
] %}
  '{{ version }}':
    full_name: WinCAPS
    msiexec: True
    installer: https://f000.backblazeb2.com/file/techneg-repo/wincaps3/wincaps3-{{ version }}.msi
    install_flags: /qn /norestart TRANSFORMS=c:\salt\var\cache\salt\minion\files\base\apps\wincaps\files\wincaps-3.mst
# MST file must be cached on minion prior to pkg.install
# TRANSFORMS applied on install are also applied automatically to the uninstall
    uninstall_flags: /qn /norestart
    source_hash: sha1={{ source_hash }}
{% endfor %}
