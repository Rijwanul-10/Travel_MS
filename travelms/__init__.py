# Enable PyMySQL as MySQLdb (fallback if mysqlclient is not available)
try:
	import pymysql
	pymysql.install_as_MySQLdb()
except Exception:
	# If PyMySQL is not installed, Django will try mysqlclient (MySQLdb)
	pass


