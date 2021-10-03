package com.sulake.habbo.widget.events
{
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class RoomWidgetRoomViewUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_655:String = "RWRVUE_ROOM_VIEW_POSITION_CHANGED";
      
      public static const const_608:String = "RWRVUE_ROOM_VIEW_SCALE_CHANGED";
      
      public static const const_247:String = "RWRVUE_ROOM_VIEW_SIZE_CHANGED";
       
      
      private var var_1414:Point;
      
      private var var_1413:Rectangle;
      
      private var var_191:Number = 0;
      
      public function RoomWidgetRoomViewUpdateEvent(param1:String, param2:Rectangle = null, param3:Point = null, param4:Number = 0, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         var_1413 = param2;
         var_1414 = param3;
         var_191 = param4;
      }
      
      public function get rect() : Rectangle
      {
         if(var_1413 != null)
         {
            return var_1413.clone();
         }
         return null;
      }
      
      public function get scale() : Number
      {
         return var_191;
      }
      
      public function get positionDelta() : Point
      {
         if(var_1414 != null)
         {
            return var_1414.clone();
         }
         return null;
      }
   }
}
