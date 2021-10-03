package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_1474:String;
      
      private var var_1926:int;
      
      private var var_1929:int;
      
      private var var_1927:int;
      
      private var var_1928:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         var_1926 = param1.readInteger();
         var_1927 = param1.readInteger();
         var_1929 = param1.readInteger();
         var_1928 = param1.readString();
         var_1474 = param1.readString();
      }
      
      public function get msg() : String
      {
         return var_1474;
      }
      
      public function get hour() : int
      {
         return var_1926;
      }
      
      public function get minute() : int
      {
         return var_1927;
      }
      
      public function get chatterName() : String
      {
         return var_1928;
      }
      
      public function get chatterId() : int
      {
         return var_1929;
      }
   }
}
