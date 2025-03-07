# @summary Manage the Vault system service, enabled by default
#
class vault::service {
  if $vault::manage_service {
    service { $vault::service_name:
      ensure   => $vault::service_ensure,
      enable   => $vault::service_enable,
      provider => $vault::service_provider,
    }
  }
}
