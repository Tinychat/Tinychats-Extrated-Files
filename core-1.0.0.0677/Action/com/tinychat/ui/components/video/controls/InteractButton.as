package com.tinychat.ui.components.video.controls
{
    import com.tinychat.ui.components.spark.*;

    public class InteractButton extends IconButton
    {
        private static var _skinParts:Object = {labelDisplay:false, iconDisplay:false, labelDisplay2:false, iconDisplay2:false};

        public function InteractButton()
        {
            return;
        }// end function

        override protected function get skinParts() : Object
        {
            return _skinParts;
        }// end function

    }
}
