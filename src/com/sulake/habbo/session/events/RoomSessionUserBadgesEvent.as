package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionUserBadgesEvent extends RoomSessionEvent
   {
      
      public static const const_109:String = "RSUBE_BADGES";
       
      
      private var _userId:int = 0;
      
      private var var_253:Array;
      
      public function RoomSessionUserBadgesEvent(param1:IRoomSession, param2:int, param3:Array, param4:Boolean = false, param5:Boolean = false)
      {
         var_253 = [];
         super(const_109,param1,param4,param5);
         _userId = param2;
         var_253 = param3;
      }
      
      public function get badges() : Array
      {
         return var_253;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
   }
}
