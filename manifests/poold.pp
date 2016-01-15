
define php5::poold (
        $template   = "php5/poold/pool.conf.template.erb",
	$poolname  = "${name}",
	$max_childs = "",
	$start_servers = "",
	$min_servers = "",
	$max_servers = "",
	$home_dir = "${name}"
)


{
file { "${php5::phpconfdir}/${poolname}.conf":
        content => template("$template"),
        owner => "root",
        group => "root",
        mode  => "0644",
        require => Package["php5-fpm"],
#	notify => Service["php5-fpm"],
#       notify  => Service["php5-fpm"]
#	require => Exec['service php5-fpm retart'],


     }
exec { "restart_php_service":
    command => "/usr/bin/service php5-fpm restart",
}


}
