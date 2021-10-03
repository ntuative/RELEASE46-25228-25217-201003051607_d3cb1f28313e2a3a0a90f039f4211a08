package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_218:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_1661:Boolean = false;
      
      private var var_1663:int = 0;
      
      private var var_1662:int = 0;
      
      private var var_1664:int = 0;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:Boolean = false, param6:Boolean = false)
      {
         super(const_218,param5,param6);
         var_1664 = param1;
         var_1662 = param2;
         var_1663 = param3;
         var_1661 = param4;
      }
      
      public function get pastPeriods() : int
      {
         return var_1663;
      }
      
      public function get periodsLeft() : int
      {
         return var_1662;
      }
      
      public function get daysLeft() : int
      {
         return var_1664;
      }
      
      public function get allowClubDances() : Boolean
      {
         return var_1661;
      }
   }
}
