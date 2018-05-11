apple-app-support:
{% for version in ['2.3.6'] %}
  '2.3.6':
    full_name: Apple Application Support
    installer: 'https://f000.backblazeb2.com/file/techneg-repo/quicktime/appleapplicationsupport-{{ version }}.msi'
    source_hash: 'sha256=07bad38b7f9972aa3f8228676b76200b7f675d6ddf75eb9c78ee6b3512eb94a8'
    install_flags: '/qn /norestart'
    msiexec: True
    uninstaller: 'https://f000.backblazeb2.com/file/techneg-repo/quicktime/appleapplicationsupport-{{ version }}.msi'
    uninstall_flags: '/qn /norestart'
{% endfor %}
