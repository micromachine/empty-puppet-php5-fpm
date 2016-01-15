# php5

Yet another php5 puppet module


Usage : 


node 'srv02.test.pl' {
class { 'nginx': }
class { 'php5' : }

nginx::vhost { "example2.com":
         document_root => "/var/www/example2.com/htdocs",
         serveraliases => "www.example2.com",
     }
php5::poold { "example2.com":  
	 max_childs => "10",
	}
}

