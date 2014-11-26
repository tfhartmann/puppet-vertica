class { 'r10k':
  sources => {
    'it' => {
      #'remote'  => 'ssh://git@github.com/webteam/somerepo.git',
      'remote'  => 'https://github.com/tfhartmann/puppet.git',
      'basedir' => "${::settings::confdir}/environments",
      'prefix'  => true,
    },
    'devtools'  => {
      'remote'  => 'https://github.com/tfhartmann/puppet-vertica.git',
      'basedir' => "${::settings::confdir}/devtools",
      'prefix'  => true,
    },
  },
}
