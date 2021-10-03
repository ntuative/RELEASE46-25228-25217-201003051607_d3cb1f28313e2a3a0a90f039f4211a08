package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1343:String = "WN_CREATED";
      
      public static const const_1005:String = "WN_DISABLE";
      
      public static const const_985:String = "WN_DEACTIVATED";
      
      public static const const_916:String = "WN_OPENED";
      
      public static const const_821:String = "WN_CLOSED";
      
      public static const const_976:String = "WN_DESTROY";
      
      public static const const_1471:String = "WN_ARRANGED";
      
      public static const const_437:String = "WN_PARENT_RESIZED";
      
      public static const const_993:String = "WN_ENABLE";
      
      public static const const_964:String = "WN_RELOCATE";
      
      public static const const_950:String = "WN_FOCUS";
      
      public static const const_1008:String = "WN_PARENT_RELOCATED";
      
      public static const const_360:String = "WN_PARAM_UPDATED";
      
      public static const const_598:String = "WN_PARENT_ACTIVATED";
      
      public static const const_220:String = "WN_RESIZED";
      
      public static const const_886:String = "WN_CLOSE";
      
      public static const const_1016:String = "WN_PARENT_REMOVED";
      
      public static const const_267:String = "WN_CHILD_RELOCATED";
      
      public static const const_680:String = "WN_ENABLED";
      
      public static const const_240:String = "WN_CHILD_RESIZED";
      
      public static const const_856:String = "WN_MINIMIZED";
      
      public static const const_735:String = "WN_DISABLED";
      
      public static const const_226:String = "WN_CHILD_ACTIVATED";
      
      public static const const_373:String = "WN_STATE_UPDATED";
      
      public static const const_727:String = "WN_UNSELECTED";
      
      public static const const_383:String = "WN_STYLE_UPDATED";
      
      public static const const_1523:String = "WN_UPDATE";
      
      public static const const_451:String = "WN_PARENT_ADDED";
      
      public static const const_624:String = "WN_RESIZE";
      
      public static const const_694:String = "WN_CHILD_REMOVED";
      
      public static const const_1595:String = "";
      
      public static const const_811:String = "WN_RESTORED";
      
      public static const const_312:String = "WN_SELECTED";
      
      public static const const_801:String = "WN_MINIMIZE";
      
      public static const const_788:String = "WN_FOCUSED";
      
      public static const const_1252:String = "WN_LOCK";
      
      public static const const_317:String = "WN_CHILD_ADDED";
      
      public static const const_822:String = "WN_UNFOCUSED";
      
      public static const const_369:String = "WN_RELOCATED";
      
      public static const const_1012:String = "WN_DEACTIVATE";
      
      public static const const_1286:String = "WN_CRETAE";
      
      public static const const_864:String = "WN_RESTORE";
      
      public static const const_331:String = "WN_ACTVATED";
      
      public static const const_1177:String = "WN_LOCKED";
      
      public static const const_399:String = "WN_SELECT";
      
      public static const const_991:String = "WN_MAXIMIZE";
      
      public static const const_824:String = "WN_OPEN";
      
      public static const const_582:String = "WN_UNSELECT";
      
      public static const const_1487:String = "WN_ARRANGE";
      
      public static const const_1256:String = "WN_UNLOCKED";
      
      public static const const_1475:String = "WN_UPDATED";
      
      public static const const_982:String = "WN_ACTIVATE";
      
      public static const const_1330:String = "WN_UNLOCK";
      
      public static const const_798:String = "WN_MAXIMIZED";
      
      public static const const_850:String = "WN_DESTROYED";
      
      public static const const_1007:String = "WN_UNFOCUS";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1588,cancelable);
      }
   }
}
