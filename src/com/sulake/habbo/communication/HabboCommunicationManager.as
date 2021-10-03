package com.sulake.habbo.communication
{
   import com.sulake.core.Core;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.communication.ICoreCommunicationManager;
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.communication.connection.IConnectionStateListener;
   import com.sulake.core.communication.enum.ConnectionType;
   import com.sulake.core.communication.messages.IMessageConfiguration;
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.protocol.IProtocol;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IContext;
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.core.utils.ErrorReportStorage;
   import com.sulake.habbo.communication.enum.HabboConnectionType;
   import com.sulake.habbo.communication.enum.HabboProtocolType;
   import com.sulake.habbo.communication.protocol.WedgieProtocol;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.configuration.enum.HabboConfigurationEvent;
   import com.sulake.habbo.tracking.HabboErrorVariableEnum;
   import com.sulake.iid.IIDCoreCommunicationManager;
   import com.sulake.iid.IIDHabboConfigurationManager;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class HabboCommunicationManager extends Component implements IHabboCommunicationManager, IConnectionStateListener
   {
       
      
      private var var_628:int = 0;
      
      private var var_33:String = "";
      
      private var var_1295:Timer;
      
      private var var_267:Array;
      
      private var var_2113:Boolean = false;
      
      private var var_86:String = "";
      
      private var var_97:IHabboConfigurationManager;
      
      private var var_973:IMessageConfiguration;
      
      private const const_1630:int = 5;
      
      private var var_351:int = -1;
      
      private var var_306:ICoreCommunicationManager;
      
      private var var_877:int = 1;
      
      private var var_2112:Boolean = false;
      
      private var var_2111:Boolean = false;
      
      private var _connection:IConnection;
      
      public function HabboCommunicationManager(param1:IContext, param2:uint = 0, param3:IAssetLibrary = null)
      {
         var_973 = new HabboMessages();
         var_267 = [];
         var_1295 = new Timer(100,1);
         super(param1,param2,param3);
         this.queueInterface(new IIDCoreCommunicationManager(),onCoreCommunicationManagerInit);
         this.queueInterface(new IIDHabboConfigurationManager(),onHabboConfigurationInit);
      }
      
      public function get port() : int
      {
         if(var_351 < 0 || var_351 >= var_267.length)
         {
            return 0;
         }
         return var_267[var_351];
      }
      
      private function onSecurityError(param1:SecurityErrorEvent) : void
      {
         Logger.log("[HabboCommunicationManager] Security Error: " + param1.text);
         ErrorReportStorage.addDebugData("Communication Security Error","SecurityError on connect: " + param1.text + ". Port was " + var_267[var_351]);
         tryNextPort();
      }
      
      private function onConnect(param1:Event) : void
      {
         ErrorReportStorage.addDebugData("Connection","Connected with " + var_877 + " attempts");
      }
      
      private function onConfigurationReady(param1:Event = null) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         Logger.log("Habbo Communication Manager: init based on configuration: " + var_97);
         if(var_97 == null)
         {
            Core.crash("Received configuration ready event but configuration was null",Core.const_909);
         }
         else
         {
            ErrorReportStorage.addDebugData("CommunicationConfigInit","Config Ready");
            var_267 = [];
            var_33 = var_97.getKey("connection.info.host","fused37-public-proxy-1.hotel.varoke.net");
            _loc2_ = var_97.getKey("connection.info.port","25001");
            _loc3_ = _loc2_.split(",");
            for each(_loc4_ in _loc3_)
            {
               var_267.push(parseInt(_loc4_.replace(" ","")));
            }
            ErrorReportStorage.addDebugData("CommunicationConfigInit","Config Host: " + var_33);
            Logger.log("Connection Host: " + var_33);
            Logger.log("Connection Ports: " + var_267);
            Logger.log("Habbo Connection Info:" + _connection);
            var_2112 = true;
            if(var_2111)
            {
               nextPort();
            }
         }
      }
      
      public function messageReceived(param1:String, param2:String) : void
      {
         ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1293,String(new Date().getTime()));
         ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1352,param1 + " " + param2);
         if(false)
         {
            var_86 += ",R:" + param1;
         }
         else
         {
            var_86 = "R:" + param1;
         }
         if(false)
         {
            var_86 = var_86.substring(-150);
         }
         ErrorReportStorage.addDebugData("MESSAGE_QUEUE",var_86);
      }
      
      private function nextPort() : void
      {
         ++var_351;
         if(var_351 >= var_267.length)
         {
            ++var_877;
            ErrorReportStorage.addDebugData("ConnectionRetry","Connection attempt " + var_877);
            if(var_877 > const_1630)
            {
               if(var_2113)
               {
                  return;
               }
               var_2113 = true;
               Core.error("Connection failed to host " + var_33 + " ports " + var_267,true,Core.const_685);
               return;
            }
            var_351 = 0;
         }
         _connection.timeout = var_877 * 5000;
         _connection.init(var_33,var_267[var_351]);
      }
      
      private function onTryNextPort(param1:TimerEvent) : void
      {
         var_1295.stop();
         nextPort();
      }
      
      public function get mode() : int
      {
         return var_628;
      }
      
      override public function dispose() : void
      {
         if(_connection)
         {
            _connection.dispose();
            _connection = null;
         }
         if(var_306)
         {
            var_306.release(new IIDCoreCommunicationManager());
            var_306 = null;
         }
         if(var_97)
         {
            var_97.release(new IIDHabboConfigurationManager());
            var_97 = null;
         }
         super.dispose();
      }
      
      public function initConnection(param1:String) : void
      {
         switch(param1)
         {
            case HabboConnectionType.const_234:
               if(var_97 == null)
               {
                  Core.crash("Tried to connect to proxy but configuration was null",Core.const_685);
                  return;
               }
               if(_connection == null)
               {
                  Core.crash("Tried to connect to proxy but connection was null",Core.const_685);
                  return;
               }
               var_2111 = true;
               if(var_2112)
               {
                  nextPort();
               }
               break;
            default:
               Logger.log("Unknown Habbo Connection Type: " + param1);
         }
      }
      
      public function habboWebLogin(param1:String, param2:String) : IHabboWebLogin
      {
         var _loc3_:String = "";
         _loc3_ = var_97.getKey("url.prefix",_loc3_);
         _loc3_ = _loc3_.replace("http://","");
         _loc3_ = _loc3_.replace("https://","");
         return new HabboWebLogin(param1,param2,_loc3_);
      }
      
      public function addHabboConnectionMessageEvent(param1:IMessageEvent) : void
      {
         return var_306.addConnectionMessageEvent(HabboConnectionType.const_234,param1);
      }
      
      public function connectionInit(param1:String, param2:int) : void
      {
         ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1373,param1);
         ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1341,String(param2));
      }
      
      public function messageSent(param1:String, param2:String) : void
      {
         ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1318,String(new Date().getTime()));
         ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1300,param1 + " " + param2);
         if(false)
         {
            var_86 += ",S:" + param1;
         }
         else
         {
            var_86 = "S:" + param1;
         }
         if(false)
         {
            var_86 = var_86.substring(-150);
         }
         ErrorReportStorage.addDebugData("MESSAGE_QUEUE",var_86);
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         Logger.log("[HabboCommunicationManager] IO Error: " + param1.text);
         switch(param1.type)
         {
            case IOErrorEvent.IO_ERROR:
               break;
            case IOErrorEvent.DISK_ERROR:
               break;
            case IOErrorEvent.NETWORK_ERROR:
               break;
            case IOErrorEvent.VERIFY_ERROR:
         }
         ErrorReportStorage.addDebugData("Communication IO Error","IOError " + param1.type + " on connect: " + param1.text + ". Port was " + var_267[var_351]);
         tryNextPort();
      }
      
      public function set mode(param1:int) : void
      {
         var_628 = param1;
      }
      
      private function onCoreCommunicationManagerInit(param1:IID = null, param2:IUnknown = null) : void
      {
         var _loc3_:* = null;
         Logger.log("Habbo Communication Manager: Core Communication Manager found:: " + [param1,param2]);
         if(param2 != null)
         {
            var_306 = param2 as ICoreCommunicationManager;
            var_306.connectionStateListener = this;
            var_306.registerProtocolType(HabboProtocolType.const_933,WedgieProtocol);
            _connection = var_306.createConnection(HabboConnectionType.const_234,ConnectionType.const_869);
            _loc3_ = var_306.getProtocolInstanceOfType(HabboProtocolType.const_933);
            _connection.registerMessageClasses(var_973);
            _connection.protocol = _loc3_;
            _connection.addEventListener(IOErrorEvent.IO_ERROR,onIOError);
            _connection.addEventListener(SecurityErrorEvent.SECURITY_ERROR,onSecurityError);
            _connection.addEventListener(Event.CONNECT,onConnect);
         }
      }
      
      private function tryNextPort() : void
      {
         var_1295.addEventListener(TimerEvent.TIMER,onTryNextPort);
         var_1295.start();
      }
      
      private function onHabboConfigurationInit(param1:IID = null, param2:IUnknown = null) : void
      {
         if(param2 != null)
         {
            ErrorReportStorage.addDebugData("CommunicationConfigInit","Config Received");
            var_97 = param2 as IHabboConfigurationManager;
            (var_97 as Component).events.addEventListener(HabboConfigurationEvent.INIT,onConfigurationReady);
         }
         else
         {
            ErrorReportStorage.addDebugData("CommunicationConfigInit","Config NOT received");
         }
      }
      
      public function getHabboMainConnection(param1:Function) : IConnection
      {
         return !!var_306 ? var_306.queueConnection(HabboConnectionType.const_234,param1) : null;
      }
   }
}
