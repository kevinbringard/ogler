# Ogle

> Ogler is an image uploader for the OpenStack [Glance](http://glance.openstack.org/) image service.
> It uses the ogle library (https://github.com/kevinbringard/ogle/) to do the heavy lifting.

## Usage
	ogler -i|--image file -v|--version version -d|--distro distribution -a|--arch architecture [-u|--user user] [ -P|--pass password] [-H|--host host] [-p|--port port] [-n|--name name] [-r|-ramdisk ramdisk] [-k|--kernel kernel] [-e|--kernel_version kernel_version] [-s|--storage ENGINE] [-c|--custom_fields field1=1,field2=2]
    	-H, --host HOST                  Glance host to connect to (defaults to localhost)
    	-p, --port PORT                  Glance port to connect to (defaults to 9292)
    	-u, --user USER                  Username to authenticate with
    	-P, --pass PASSWORD              Password to authenticate with
    	-i, --image FILE                 Machine image to upload (required)
    	-n, --name NAME                  Name to give the image when it has been uploaded (defaults to distro_version-arch)
    	-r, --ramdisk [FILE|ID]          Ramdisk image to upload, or existing ID to link to
    	-k, --kernel [FILE|ID]           Kernel image to upload, or existing ID to link to
    	-v, --version VERSION            The version of the OS you are uploading (required)
    	-d, --distro DISTRO              The distribution you are uploading (Ubuntu, CentOS, Debian, etc) (required)
    	-s, --storage ENGINE             The storage engine to use, valid options are file, s3, or swift. If you don't specify one it uses the glance default (currently file)
    	-e, --kernel_version VERSION     The kernel version (2.6.28, 2.6.32-el6, etc). Required if you are uploading a kernel
    	-a, --arch ARCH                  The architecture of the image (x86_64, amd64, i386, etc) (required)
    	-c, --custom_fields a=1,b=2,c=3  Custom fields you wish to define
    	-h, --help                       Display the help screen
	
### Examples
	ogler -i maverick-server-cloudimg-amd64.img  -k maverick-server-cloudimg-amd64-vmlinuz-virtual -d ubuntu -v 10.10 -a x86_64 -e 2.6.35
