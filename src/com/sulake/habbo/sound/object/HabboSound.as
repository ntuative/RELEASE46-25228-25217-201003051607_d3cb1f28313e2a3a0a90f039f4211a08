package com.sulake.habbo.sound.object
{
   import com.sulake.habbo.sound.IHabboSound;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class HabboSound implements IHabboSound
   {
       
      
      private var var_961:SoundChannel = null;
      
      private var var_786:Boolean;
      
      private var var_960:Sound = null;
      
      private var var_664:Number;
      
      public function HabboSound(param1:Sound)
      {
         super();
         var_960 = param1;
         var_960.addEventListener(Event.COMPLETE,onComplete);
         var_664 = 1;
         var_786 = false;
      }
      
      public function get finished() : Boolean
      {
         return !var_786;
      }
      
      public function stop() : Boolean
      {
         var_961.stop();
         return true;
      }
      
      public function play() : Boolean
      {
         var_786 = false;
         var_961 = var_960.play(0);
         this.volume = var_664;
         return true;
      }
      
      public function set position(param1:Number) : void
      {
      }
      
      public function get volume() : Number
      {
         return var_664;
      }
      
      public function get ready() : Boolean
      {
         return true;
      }
      
      public function get position() : Number
      {
         return var_961.position;
      }
      
      public function get length() : Number
      {
         return var_960.length;
      }
      
      public function set volume(param1:Number) : void
      {
         var_664 = param1;
         if(var_961 != null)
         {
            var_961.soundTransform = new SoundTransform(var_664);
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         var_786 = true;
      }
   }
}
