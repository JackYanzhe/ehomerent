package util;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.JedisPoolConfig;

public class RedisPoolUtil {
     private static JedisPool jPool;
     static{
    	 JedisPoolConfig jpc=new JedisPoolConfig();
 		jpc.setMaxIdle(5000);
 		jpc.setMaxTotal(1000);
 		jPool=new JedisPool(jpc, "172.16.23.244", 6379, 2000, "123456");
     }
     public static Jedis getJedis(){
    	return jPool.getResource();
    	 
     }
     public static void close(){
    	 jPool.close();
    	 
     }
	
}
