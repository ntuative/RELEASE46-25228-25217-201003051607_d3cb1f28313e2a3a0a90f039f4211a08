package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionPollEvent extends RoomSessionEvent
   {
      
      public static const const_121:String = "RSPE_POLL_CONTENT";
      
      public static const const_127:String = "RSPE_POLL_OFFER";
      
      public static const const_58:String = "RSPE_POLL_ERROR";
       
      
      private var var_1035:Array = null;
      
      private var var_1271:String = "";
      
      private var var_1196:String;
      
      private var var_1272:String = "";
      
      private var var_1036:int = 0;
      
      private var _id:int = -1;
      
      public function RoomSessionPollEvent(param1:String, param2:IRoomSession, param3:int)
      {
         _id = param3;
         super(param1,param2);
      }
      
      public function get questionArray() : Array
      {
         return var_1035;
      }
      
      public function get startMessage() : String
      {
         return var_1271;
      }
      
      public function get summary() : String
      {
         return var_1196;
      }
      
      public function set startMessage(param1:String) : void
      {
         var_1271 = param1;
      }
      
      public function set numQuestions(param1:int) : void
      {
         var_1036 = param1;
      }
      
      public function set summary(param1:String) : void
      {
         var_1196 = param1;
      }
      
      public function get numQuestions() : int
      {
         return var_1036;
      }
      
      public function set endMessage(param1:String) : void
      {
         var_1272 = param1;
      }
      
      public function get endMessage() : String
      {
         return var_1272;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set questionArray(param1:Array) : void
      {
         var_1035 = param1;
      }
   }
}
