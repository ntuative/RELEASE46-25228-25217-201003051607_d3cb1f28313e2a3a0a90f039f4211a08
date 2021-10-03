package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_975:int = 0;
      
      private var var_1266:int = 0;
      
      private var var_1846:String = "";
      
      private var var_974:int = 0;
      
      private var var_2061:String = "";
      
      private var var_2060:int = 0;
      
      private var var_1453:String = "";
      
      private var var_2059:int = 0;
      
      private var var_2057:int = 0;
      
      private var var_1850:String = "";
      
      private var var_2058:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         var_2059 = param1;
         var_1850 = param2;
         var_1453 = param3;
         var_1846 = param4;
         var_2061 = param5;
         if(param6)
         {
            var_1266 = 1;
         }
         else
         {
            var_1266 = 0;
         }
         var_2060 = param7;
         var_2057 = param8;
         var_974 = param9;
         var_2058 = param10;
         var_975 = param11;
      }
      
      public function getMessageArray() : Array
      {
         return [var_2059,var_1850,var_1453,var_1846,var_2061,var_1266,var_2060,var_2057,var_974,var_2058,var_975];
      }
      
      public function dispose() : void
      {
      }
   }
}
