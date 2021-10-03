package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.communication.messages.incoming.tracking.LatencyPingResponseMessageEvent;
   import com.sulake.habbo.communication.messages.outgoing.tracking.LatencyPingReportMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.tracking.LatencyPingRequestMessageComposer;
   import com.sulake.habbo.communication.messages.parser.tracking.LatencyPingResponseMessageParser;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.utils.getTimer;
   
   public class LatencyTracker
   {
       
      
      private var var_154:Array;
      
      private var var_34:Boolean = false;
      
      private var var_1486:int = 0;
      
      private var var_1487:int = 0;
      
      private var _communication:IHabboCommunicationManager;
      
      private var var_476:Map;
      
      private var var_1954:int = 0;
      
      private var var_1485:int = 0;
      
      private var var_175:IHabboConfigurationManager;
      
      private var var_1213:int = 0;
      
      private var _connection:IConnection;
      
      private var var_1488:int = 0;
      
      public function LatencyTracker()
      {
         super();
      }
      
      public function update(param1:uint) : void
      {
         if(!var_34)
         {
            return;
         }
         if(getTimer() - var_1486 > var_1487)
         {
            testLatency();
         }
      }
      
      private function testLatency() : void
      {
         var_1486 = getTimer();
         var_476.add(var_1213,var_1486);
         _connection.send(new LatencyPingRequestMessageComposer(var_1213));
         ++var_1213;
      }
      
      public function set communication(param1:IHabboCommunicationManager) : void
      {
         _communication = param1;
      }
      
      public function init() : void
      {
         if(var_175 == null || _communication == null || _connection == null)
         {
            return;
         }
         var_1487 = int(var_175.getKey("latencytest.interval"));
         var_1488 = int(var_175.getKey("latencytest.report.index"));
         var_1954 = int(var_175.getKey("latencytest.report.delta"));
         _communication.addHabboConnectionMessageEvent(new LatencyPingResponseMessageEvent(onPingResponse));
         if(var_1487 < 1)
         {
            return;
         }
         var_476 = new Map();
         var_154 = new Array();
         var_34 = true;
      }
      
      private function onPingResponse(param1:IMessageEvent) : void
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:* = null;
         if(var_476 == null || var_154 == null)
         {
            return;
         }
         var _loc2_:LatencyPingResponseMessageParser = (param1 as LatencyPingResponseMessageEvent).getParser();
         var _loc3_:int = var_476.getValue(_loc2_.requestId);
         var_476.remove(_loc2_.requestId);
         var _loc4_:int = getTimer() - _loc3_;
         var_154.push(_loc4_);
         if(var_154.length == var_1488 && var_1488 > 0)
         {
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            _loc8_ = 0;
            while(_loc8_ < var_154.length)
            {
               _loc5_ += var_154[_loc8_];
               _loc8_++;
            }
            _loc9_ = _loc5_ / 0;
            _loc8_ = 0;
            while(_loc8_ < var_154.length)
            {
               if(var_154[_loc8_] < _loc9_ * 2)
               {
                  _loc6_ += var_154[_loc8_];
                  _loc7_++;
               }
               _loc8_++;
            }
            if(_loc7_ == 0)
            {
               var_154 = [];
               return;
            }
            _loc10_ = _loc6_ / _loc7_;
            if(Math.abs(_loc9_ - var_1485) > var_1954 || var_1485 == 0)
            {
               var_1485 = _loc9_;
               _loc11_ = new LatencyPingReportMessageComposer(_loc9_,_loc10_,var_154.length);
               _connection.send(_loc11_);
            }
            var_154 = [];
         }
      }
      
      public function dispose() : void
      {
         var_34 = false;
         var_175 = null;
         _communication = null;
         _connection = null;
         if(var_476 != null)
         {
            var_476.dispose();
            var_476 = null;
         }
         var_154 = null;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         var_175 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         _connection = param1;
      }
   }
}
