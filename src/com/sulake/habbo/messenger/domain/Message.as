package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_663:int = 2;
      
      public static const const_882:int = 6;
      
      public static const const_646:int = 1;
      
      public static const const_509:int = 3;
      
      public static const const_867:int = 4;
      
      public static const const_602:int = 5;
       
      
      private var var_1728:String;
      
      private var var_950:int;
      
      private var var_1647:String;
      
      private var _type:int;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         _type = param1;
         var_950 = param2;
         var_1647 = param3;
         var_1728 = param4;
      }
      
      public function get time() : String
      {
         return var_1728;
      }
      
      public function get senderId() : int
      {
         return var_950;
      }
      
      public function get messageText() : String
      {
         return var_1647;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
