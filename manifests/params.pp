# = Class : ansible::params
#
# == Summary
#
# Ansible parameters
#
# == Description
#
#
class ansible::params {

  case $facts['osfamily'] {
    'Debian': {
      $pip_dep_package = ['python-yaml','python-jinja2','python-paramiko',
      'python-pkg-resources','python-pip','python-crypto','python-markupsafe',
      'python-httplib2']
    }
    'Redhat': {
      $pip_dep_package = ['PyYAML','libyaml','python-babel','python-crypto',
      'python-ecdsa','python-httplib2','python-jinja2','python-keyczar',
      'python-markupsafe','python-paramiko','python-pyasn1','python-six',
      'python-pip']
    }
    default : {
      $pip_dep_package = []
    }
  }

}
