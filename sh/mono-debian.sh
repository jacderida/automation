apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb http://download.mono-project.com/repo/debian wheezy main" | sudo tee /etc/apt/sources.list.d/mono-xamarin.list
apt-get update -y
apt-get install -y mono-complete
apt-get install -y nunit-console
# This is for the annoying MVC 3.0.0.1 security fix
mkdir /usr/lib/mono/gac/System.Web.Mvc/3.0.0.1__31bf3856ad364e35
wget --output-document=/usr/lib/mono/gac/System.Web.Mvc/3.0.0.1__31bf3856ad364e35/System.Web.Mvc.dll https://jacderida-misc.s3.amazonaws.com/System.Web.Mvc.dll
