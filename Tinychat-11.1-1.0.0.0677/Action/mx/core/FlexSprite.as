package mx.core
{
    import flash.display.*;
    import mx.utils.*;

    public class FlexSprite extends Sprite
    {
        static const VERSION:String = "4.6.0.23201";

        public function FlexSprite()
        {
            try
            {
                name = NameUtil.createUniqueName(this);
            }
            catch (e:Error)
            {
            }
            return;
        }// end function

        override public function toString() : String
        {
            return NameUtil.displayObjectToString(this);
        }// end function

    }
}
