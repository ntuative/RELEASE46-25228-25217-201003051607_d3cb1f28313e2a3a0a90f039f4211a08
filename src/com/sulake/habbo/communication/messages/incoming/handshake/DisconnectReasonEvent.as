package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_1292:String = "DisconnectReasonPeerConnectionLost";
      
      public static const const_921:String = "DisconnectReasonTimeout";
      
      public static const const_572:String = "DisconnectReasonDisconnected";
      
      public static const const_333:String = "DisconnectReasonBanned";
      
      public static const const_966:String = "DisconnectReasonLoggedOut";
      
      public static const const_945:String = "DisconnectReasonConcurrentLogin";
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : String
      {
         var _loc1_:int = (this.var_4 as DisconnectReasonParser).reason;
         switch(_loc1_)
         {
            case -1:
               return const_572;
            case 0:
               return const_572;
            case 1:
               return const_966;
            case 1009:
            case 2:
               return const_945;
            case 3:
               return const_921;
            case 4:
               return const_1292;
            default:
               return const_572;
         }
      }
   }
}
