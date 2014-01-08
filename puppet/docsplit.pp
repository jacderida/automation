group { "puppet":
	ensure => present,
}

package { 'docsplit':
	ensure		=> installed,
						provider	=> gem,
}

exec { 'Install GraphicsMagick':
	command => '/usr/bin/aptitude -y install graphicsmagick',
}

exec { 'Install Poppler':
	command => '/usr/bin/apt-get -y install poppler-utils poppler-data' 
}

exec { 'Install Tesseract':
	command => '/usr/bin/aptitude -y install tesseract'
}

exec { 'Install pdftk':
	command => '/usr/bin/aptitude -y install pdftk'
}
