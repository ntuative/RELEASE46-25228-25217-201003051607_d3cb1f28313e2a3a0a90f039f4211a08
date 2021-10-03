package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_387:uint;
      
      private var var_977:IUnknown;
      
      private var var_1176:String;
      
      private var var_976:IID;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         var_976 = param1;
         var_1176 = getQualifiedClassName(var_976);
         var_977 = param2;
         var_387 = 0;
      }
      
      public function get iid() : IID
      {
         return var_976;
      }
      
      public function get disposed() : Boolean
      {
         return var_977 == null;
      }
      
      public function get references() : uint
      {
         return var_387;
      }
      
      public function release() : uint
      {
         return references > 0 ? uint(--var_387) : uint(0);
      }
      
      public function get unknown() : IUnknown
      {
         return var_977;
      }
      
      public function get iis() : String
      {
         return var_1176;
      }
      
      public function reserve() : uint
      {
         return ++var_387;
      }
      
      public function dispose() : void
      {
         var_976 = null;
         var_1176 = null;
         var_977 = null;
         var_387 = 0;
      }
   }
}
