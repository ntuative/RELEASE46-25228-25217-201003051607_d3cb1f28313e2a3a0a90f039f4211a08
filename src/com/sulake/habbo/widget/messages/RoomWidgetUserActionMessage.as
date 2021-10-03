package com.sulake.habbo.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_722:String = "RWUAM_RESPECT_USER";
      
      public static const const_520:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_720:String = "RWUAM_START_TRADING";
      
      public static const const_610:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_673:String = "RWUAM_WHISPER_USER";
      
      public static const const_517:String = "RWUAM_IGNORE_USER";
      
      public static const const_479:String = "RWUAM_REQUEST_PET_UPDATE";
      
      public static const const_640:String = "RWUAM_BAN_USER";
      
      public static const const_638:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_449:String = "RWUAM_KICK_USER";
      
      public static const const_706:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_731:String = " RWUAM_RESPECT_PET";
      
      public static const const_390:String = "RWUAM_KICK_BOT";
      
      public static const const_1273:String = "RWUAM_TRAIN_PET";
      
      public static const const_714:String = "RWUAM_PICKUP_PET";
      
      public static const const_677:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_531:String = "RWUAM_REPORT";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         _userId = param2;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
   }
}
