package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var var_1940:int;
      
      private var var_1937:int;
      
      private var var_1936:int;
      
      private var _userName:String;
      
      private var var_1941:int;
      
      private var var_1938:int;
      
      private var var_1939:int;
      
      private var _userId:int;
      
      private var var_677:Boolean;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         _userId = param1.readInteger();
         _userName = param1.readString();
         var_1938 = param1.readInteger();
         var_1941 = param1.readInteger();
         var_677 = param1.readBoolean();
         var_1936 = param1.readInteger();
         var_1937 = param1.readInteger();
         var_1940 = param1.readInteger();
         var_1939 = param1.readInteger();
      }
      
      public function get banCount() : int
      {
         return var_1939;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
      
      public function get online() : Boolean
      {
         return var_677;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return var_1941;
      }
      
      public function get abusiveCfhCount() : int
      {
         return var_1937;
      }
      
      public function get cautionCount() : int
      {
         return var_1940;
      }
      
      public function get cfhCount() : int
      {
         return var_1936;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return var_1938;
      }
      
      public function get userName() : String
      {
         return _userName;
      }
   }
}
