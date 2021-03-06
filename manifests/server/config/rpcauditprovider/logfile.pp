# private class
class mcollective::server::config::rpcauditprovider::logfile {
  assert_private()

  ::mcollective::server::setting { 'rpcauditprovider':
    value => 'logfile',
  }

  ::mcollective::server::setting { 'rpcaudit':
    value => 1,
  }

  ::mcollective::server::setting { 'plugin.rpcaudit.logfile':
    value => '/var/log/mcollective-audit.log',
  }
}
