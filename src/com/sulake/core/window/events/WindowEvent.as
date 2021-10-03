package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_281:String = "WE_CHILD_RESIZED";
      
      public static const const_1358:String = "WE_CLOSE";
      
      public static const const_1340:String = "WE_DESTROY";
      
      public static const const_136:String = "WE_CHANGE";
      
      public static const const_1296:String = "WE_RESIZE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_1596:String = "WE_PARENT_RESIZE";
      
      public static const const_86:String = "WE_UPDATE";
      
      public static const const_1224:String = "WE_MAXIMIZE";
      
      public static const const_434:String = "WE_DESTROYED";
      
      public static const const_1011:String = "WE_UNSELECT";
      
      public static const const_1217:String = "WE_MAXIMIZED";
      
      public static const const_1591:String = "WE_UNLOCKED";
      
      public static const const_419:String = "WE_CHILD_REMOVED";
      
      public static const const_166:String = "WE_OK";
      
      public static const const_42:String = "WE_RESIZED";
      
      public static const const_1367:String = "WE_ACTIVATE";
      
      public static const const_228:String = "WE_ENABLED";
      
      public static const const_355:String = "WE_CHILD_RELOCATED";
      
      public static const const_1200:String = "WE_CREATE";
      
      public static const const_729:String = "WE_SELECT";
      
      public static const const_171:String = "";
      
      public static const const_1541:String = "WE_LOCKED";
      
      public static const const_1484:String = "WE_PARENT_RELOCATE";
      
      public static const const_1546:String = "WE_CHILD_REMOVE";
      
      public static const const_1570:String = "WE_CHILD_RELOCATE";
      
      public static const const_1588:String = "WE_LOCK";
      
      public static const const_196:String = "WE_FOCUSED";
      
      public static const const_682:String = "WE_UNSELECTED";
      
      public static const const_1018:String = "WE_DEACTIVATED";
      
      public static const const_1378:String = "WE_MINIMIZED";
      
      public static const const_1444:String = "WE_ARRANGED";
      
      public static const const_1582:String = "WE_UNLOCK";
      
      public static const const_1573:String = "WE_ATTACH";
      
      public static const const_1276:String = "WE_OPEN";
      
      public static const const_1154:String = "WE_RESTORE";
      
      public static const const_1498:String = "WE_PARENT_RELOCATED";
      
      public static const const_1219:String = "WE_RELOCATE";
      
      public static const const_1500:String = "WE_CHILD_RESIZE";
      
      public static const const_1518:String = "WE_ARRANGE";
      
      public static const const_1188:String = "WE_OPENED";
      
      public static const const_1266:String = "WE_CLOSED";
      
      public static const const_1526:String = "WE_DETACHED";
      
      public static const const_1517:String = "WE_UPDATED";
      
      public static const const_1139:String = "WE_UNFOCUSED";
      
      public static const const_435:String = "WE_RELOCATED";
      
      public static const const_1183:String = "WE_DEACTIVATE";
      
      public static const const_207:String = "WE_DISABLED";
      
      public static const const_528:String = "WE_CANCEL";
      
      public static const const_690:String = "WE_ENABLE";
      
      public static const const_1278:String = "WE_ACTIVATED";
      
      public static const const_1189:String = "WE_FOCUS";
      
      public static const const_1446:String = "WE_DETACH";
      
      public static const const_1165:String = "WE_RESTORED";
      
      public static const const_1235:String = "WE_UNFOCUS";
      
      public static const const_50:String = "WE_SELECTED";
      
      public static const const_1209:String = "WE_PARENT_RESIZED";
      
      public static const const_1301:String = "WE_CREATED";
      
      public static const const_1511:String = "WE_ATTACHED";
      
      public static const const_1152:String = "WE_MINIMIZE";
      
      public static const WINDOW_EVENT_DISABLE:String = "WE_DISABLE";
       
      
      protected var _type:String = "";
      
      protected var var_1588:IWindow;
      
      protected var _window:IWindow;
      
      protected var var_1369:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         _type = param1;
         _window = param2;
         var_1588 = param3;
         var_1369 = false;
         super(param1,param4,param5);
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return var_1369;
      }
      
      public function get related() : IWindow
      {
         return var_1588;
      }
      
      public function get window() : IWindow
      {
         return _window;
      }
      
      public function set type(param1:String) : void
      {
         _type = param1;
      }
      
      override public function get type() : String
      {
         return _type;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(_type,window,related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            var_1369 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
   }
}
