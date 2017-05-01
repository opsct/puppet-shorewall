# http://www.shorewall.net/manpages/shorewall-rules.html
define shorewall::rule4(
  $action,
  $source,
  $destination,
  $proto           = '-',
  $destinationport = '-',
  $sourceport      = '-',
  $originaldest    = '-',
  $ratelimit       = '-',
  $user            = '-',
  $mark            = '-',
  $connlimit       = '-',
  $time            = '-',
  $headers         = '-',
  $switch          = '-',
  $helper          = '-',
  $order           = '500',
  $ensure          = 'present',
){
  shorewall::rule{
    $name:
      ensure          => $ensure,
      action          => $action,
      source          => $source,
      destination     => $destination,
      proto           => $proto,
      destinationport => $destinationport,
      sourceport      => $sourceport,
      originaldest    => $originaldest,
      ratelimit       => $ratelimit,
      user            => $user,
      mark            => $mark,
      connlimit       => $connlimit,
      time            => $time,
      headers         => $headers,
      switch          => $switch,
      helper          => $helper,
      order           => $order,
      shorewall       => true,
      shorewall6      => false,
  }
}