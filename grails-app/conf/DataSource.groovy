dataSource {
         pooled = true
        jmxExport = true
       driverClassName = "org.postgresql.Driver"
    	dialect = "org.hibernate.dialect.PostgreSQLDialect"
		
	//driverClassName = "com.mysql.jdbc.Driver"
	//dialect = "org.hibernate.dialect.MySQL5InnoDBDialect"
	      username = "postgres"
          password = "postgres"
		//username = "root"
		//password = "root"
	//	url= "jdbc:mysql://localhost:3306/shop"
    url = "jdbc:postgresql://localhost:5432/onlinebooking"
    //    url = "jdbc:postgresql://localhost:5432/dswp_joyrent_new"
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = false
//    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory' // Hibernate 3
    cache.region.factory_class = 'org.hibernate.cache.ehcache.EhCacheRegionFactory' // Hibernate 4
	//cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory'
	 singleSession = true // configure OSIV singleSession mode
    flush.mode = 'manual' // OSIV session flush mode outside of transactional context
}

// environment specific settings
environments {
    development {
         dataSource {
//            logSql = true
//            loggingSql = true
            dbCreate = "update" // one of 'create', 'create-drop', 'update', 'validate', ''
           url = "jdbc:postgresql://localhost:5432/onlinebooking"
		//	url= "jdbc:mysql://localhost:3306/shop"

        }

        println "**** DB connection mode set to - ${dataSource.dbCreate} mode ****"
    }
    test {
        dataSource {
//            logSql = true
//            loggingSql = true
            dbCreate = "update" // one of 'create', 'create-drop', 'update', 'validate', ''
           url = "jdbc:postgresql://localhost:5432/mlm"
		 //  url= "jdbc:mysql://localhost:3306/shop"
        }

        println "**** DB connection mode set to - ${dataSource.dbCreate} mode ****"
    }
    production {
        dataSource {
             dbCreate = "update" // one of 'create', 'create-drop', 'update', 'validate', ''
            url = "jdbc:postgresql://localhost:5432/mlm"
            properties {
               // See http://grails.org/doc/latest/guide/conf.html#dataSource for documentation
               jmxEnabled = true
               initialSize = 5
               maxActive = 50
               minIdle = 5
               maxIdle = 25
               maxWait = 10000
               maxAge = 10 * 60000
               timeBetweenEvictionRunsMillis = 5000
               minEvictableIdleTimeMillis = 60000
               validationQuery = "SELECT 1"
               validationQueryTimeout = 3
               validationInterval = 15000
               testOnBorrow = true
               testWhileIdle = true
               testOnReturn = false
               jdbcInterceptors = "ConnectionState"
               defaultTransactionIsolation = java.sql.Connection.TRANSACTION_READ_COMMITTED
            }
        }
    }
}