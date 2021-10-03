package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionVoteEvent extends RoomSessionEvent
   {
      
      public static const const_122:String = "RSPE_VOTE_RESULT";
      
      public static const const_108:String = "RSPE_VOTE_QUESTION";
       
      
      private var var_1278:int = 0;
      
      private var var_994:String = "";
      
      private var var_705:Array;
      
      private var var_1041:Array;
      
      public function RoomSessionVoteEvent(param1:String, param2:IRoomSession, param3:String, param4:Array, param5:Array = null, param6:int = 0, param7:Boolean = false, param8:Boolean = false)
      {
         var_1041 = [];
         var_705 = [];
         super(param1,param2,param7,param8);
         var_994 = param3;
         var_1041 = param4;
         var_705 = param5;
         if(var_705 == null)
         {
            var_705 = [];
         }
         var_1278 = param6;
      }
      
      public function get votes() : Array
      {
         return var_705.slice();
      }
      
      public function get totalVotes() : int
      {
         return var_1278;
      }
      
      public function get question() : String
      {
         return var_994;
      }
      
      public function get choices() : Array
      {
         return var_1041.slice();
      }
   }
}
