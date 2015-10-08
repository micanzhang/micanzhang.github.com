all: package

dev:
	hugo server

package:
	hugo server --baseURL=http://micanzhang.github.io/public --appendPort=false
