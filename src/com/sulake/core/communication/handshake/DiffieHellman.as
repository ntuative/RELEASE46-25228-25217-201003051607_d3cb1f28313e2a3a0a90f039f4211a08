package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1269:BigInteger;
      
      private var var_956:BigInteger;
      
      private var var_1530:BigInteger;
      
      private var var_1531:BigInteger;
      
      private var var_2070:BigInteger;
      
      private var var_2069:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         var_1269 = param1;
         var_1530 = param2;
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return var_2070.toRadix(param1);
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         var_1531 = new BigInteger();
         var_1531.fromRadix(param1,param2);
         var_2070 = var_1531.modPow(var_956,var_1269);
         return getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return var_2069.toRadix(param1);
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + var_1269.toString() + ",generator: " + var_1530.toString() + ",secret: " + param1);
         var_956 = new BigInteger();
         var_956.fromRadix(param1,param2);
         var_2069 = var_1530.modPow(var_956,var_1269);
         return true;
      }
   }
}
