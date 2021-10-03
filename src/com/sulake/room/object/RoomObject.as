package com.sulake.room.object
{
   import com.sulake.room.object.logic.IRoomObjectEventHandler;
   import com.sulake.room.object.logic.IRoomObjectMouseHandler;
   import com.sulake.room.object.visualization.IRoomObjectVisualization;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomObject implements IRoomObjectController
   {
      
      private static var var_1113:int = 0;
       
      
      private var var_73:Vector3d;
      
      private var _updateID:int;
      
      private var _type:String = "";
      
      private var _visualization:IRoomObjectVisualization;
      
      private var _model:RoomObjectModel;
      
      private var var_400:IRoomObjectEventHandler;
      
      private var var_1496:Vector3d;
      
      private var var_1622:int = 0;
      
      private var _id:int;
      
      private var var_1497:Vector3d;
      
      private var var_227:Vector3d;
      
      private var var_478:Array;
      
      public function RoomObject(param1:int, param2:int)
      {
         super();
         _id = param1;
         var_73 = new Vector3d();
         var_227 = new Vector3d();
         var_1496 = new Vector3d();
         var_1497 = new Vector3d();
         var_478 = new Array(param2);
         var _loc3_:Number = param2 - 1;
         while(_loc3_ >= 0)
         {
            var_478[_loc3_] = 0;
            _loc3_--;
         }
         _model = new RoomObjectModel();
         _visualization = null;
         var_400 = null;
         _updateID = 0;
         var_1622 = var_1113++;
      }
      
      public function getInstanceId() : int
      {
         return var_1622;
      }
      
      public function getId() : int
      {
         return _id;
      }
      
      public function getUpdateID() : int
      {
         return _updateID;
      }
      
      public function dispose() : void
      {
         var_73 = null;
         var_227 = null;
         if(_model != null)
         {
            _model.dispose();
            _model = null;
         }
         var_478 = null;
         setVisualization(null);
         setEventHandler(null);
      }
      
      public function getType() : String
      {
         return _type;
      }
      
      public function getLocation() : IVector3d
      {
         var_1496.assign(var_73);
         return var_1496;
      }
      
      public function setLocation(param1:IVector3d) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(var_73.x != param1.x || var_73.y != param1.y || var_73.z != param1.z)
         {
            var_73.x = param1.x;
            var_73.y = param1.y;
            var_73.z = param1.z;
            ++_updateID;
         }
      }
      
      public function setDirection(param1:IVector3d) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(var_227.x != param1.x || var_227.y != param1.y || var_227.z != param1.z)
         {
            var_227.x = (param1.x % 360 + 360) % 360;
            var_227.y = (param1.y % 360 + 360) % 360;
            var_227.z = (param1.z % 360 + 360) % 360;
            ++_updateID;
         }
      }
      
      public function setType(param1:String) : void
      {
         _type = param1;
      }
      
      public function getEventHandler() : IRoomObjectEventHandler
      {
         return var_400;
      }
      
      public function getDirection() : IVector3d
      {
         var_1497.assign(var_227);
         return var_1497;
      }
      
      public function setState(param1:int, param2:int) : Boolean
      {
         if(param2 >= 0 && param2 < var_478.length)
         {
            if(var_478[param2] != param1)
            {
               var_478[param2] = param1;
               ++_updateID;
            }
            return true;
         }
         return false;
      }
      
      public function setEventHandler(param1:IRoomObjectEventHandler) : void
      {
         if(param1 == var_400)
         {
            return;
         }
         var _loc2_:IRoomObjectEventHandler = var_400;
         if(_loc2_ != null)
         {
            var_400 = null;
            _loc2_.object = null;
         }
         var_400 = param1;
         if(var_400 != null)
         {
            var_400.object = this;
         }
      }
      
      public function getState(param1:int) : int
      {
         if(param1 >= 0 && param1 < var_478.length)
         {
            return var_478[param1];
         }
         return -1;
      }
      
      public function setVisualization(param1:IRoomObjectVisualization) : void
      {
         if(param1 != _visualization)
         {
            if(_visualization != null)
            {
               _visualization.dispose();
            }
            _visualization = param1;
            if(_visualization != null)
            {
               _visualization.object = this;
            }
         }
      }
      
      public function getVisualization() : IRoomObjectVisualization
      {
         return _visualization;
      }
      
      public function getModel() : IRoomObjectModel
      {
         return _model;
      }
      
      public function getModelController() : IRoomObjectModelController
      {
         return _model;
      }
      
      public function getMouseHandler() : IRoomObjectMouseHandler
      {
         return getEventHandler();
      }
   }
}
