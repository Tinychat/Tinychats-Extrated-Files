package com.tinychat.ui.skins.gotham.components.controlbar.buttons
{
    import com.tinychat.ui.components.spark.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.core.*;
    import mx.events.*;
    import mx.graphics.*;
    import mx.states.*;
    import spark.components.supportClasses.*;
    import spark.effects.*;
    import spark.filters.*;
    import spark.primitives.*;

    public class FlatControlBarButtonSkin extends Skin implements IBindingClient, IStateClient2
    {
        public var _FlatControlBarButtonSkin_AnimateColor1:AnimateColor;
        private var _238796134_FlatControlBarButtonSkin_Transition1:Transition;
        private var _1515786495gradient1:GradientEntry;
        private var _1515786494gradient2:GradientEntry;
        private var _1919293257iconDisplay2:VectorImage;
        private var __moduleFactoryInitialized:Boolean = false;
        var _bindings:Array;
        var _watchers:Array;
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        private var _213507019hostComponent:IconButton;
        private static var _watcherSetupUtil:IWatcherSetupUtil2;

        public function FlatControlBarButtonSkin()
        {
            var bindings:Array;
            var target:Object;
            var watcherSetupUtilClass:Object;
            this._bindings = [];
            this._watchers = [];
            this._bindingsByDestination = {};
            this._bindingsBeginWithWord = {};
            mx_internal::_document = this;
            bindings = this._FlatControlBarButtonSkin_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_tinychat_ui_skins_gotham_components_controlbar_buttons_FlatControlBarButtonSkinWatcherSetupUtil");
                var _loc_2:* = watcherSetupUtilClass;
                _loc_2.watcherSetupUtilClass["init"](null);
            }
            _watcherSetupUtil.setup(this, function (param1:String)
            {
                return target[param1];
            }// end function
            , function (param1:String)
            {
                return [param1];
            }// end function
            , bindings, watchers);
            mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
            mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
            this.transitions = [this._FlatControlBarButtonSkin_Transition1_i()];
            this.mxmlContent = [this._FlatControlBarButtonSkin_Rect1_c(), this._FlatControlBarButtonSkin_VectorImage1_i()];
            this.currentState = "up";
            this.addEventListener("creationComplete", this.___FlatControlBarButtonSkin_Skin1_creationComplete);
            states = [new State({name:"up", overrides:[]}), new State({name:"over", overrides:[new SetProperty().initializeFromObject({target:"_FlatControlBarButtonSkin_Transition1", name:"autoReverse", value:true})]}), new State({name:"down", overrides:[new SetProperty().initializeFromObject({target:"gradient1", name:"color", value:15132390}), new SetProperty().initializeFromObject({target:"gradient2", name:"color", value:16645629})]}), new State({name:"disabled", overrides:[new SetProperty().initializeFromObject({target:"iconDisplay2", name:"alpha", value:0.5})]})];
            var i:uint;
            while (i < bindings.length)
            {
                
                Binding(bindings[i]).execute();
                i = (i + 1);
            }
            return;
        }// end function

        override public function set moduleFactory(param1:IFlexModuleFactory) : void
        {
            super.moduleFactory = param1;
            if (this.__moduleFactoryInitialized)
            {
                return;
            }
            this.__moduleFactoryInitialized = true;
            return;
        }// end function

        override public function initialize() : void
        {
            super.initialize();
            return;
        }// end function

        private function showHandCursor() : void
        {
            this.hostComponent.mouseChildren = false;
            this.hostComponent.useHandCursor = true;
            this.hostComponent.buttonMode = true;
            return;
        }// end function

        override protected function updateDisplayList(param1:Number, param2:Number) : void
        {
            super.updateDisplayList(param1, param2);
            if (getStyle("iconHorizontalCenter") != undefined)
            {
                this.iconDisplay2.horizontalCenter = getStyle("iconHorizontalCenter");
            }
            else
            {
                this.iconDisplay2.horizontalCenter = 0;
            }
            if (getStyle("iconVerticalCenter") != undefined)
            {
                this.iconDisplay2.verticalCenter = getStyle("iconVerticalCenter");
            }
            else
            {
                this.iconDisplay2.verticalCenter = 1;
            }
            return;
        }// end function

        private function _FlatControlBarButtonSkin_Transition1_i() : Transition
        {
            var _loc_1:* = new Transition();
            _loc_1.autoReverse = false;
            _loc_1.effect = this._FlatControlBarButtonSkin_AnimateColor1_i();
            this._FlatControlBarButtonSkin_Transition1 = _loc_1;
            BindingManager.executeBindings(this, "_FlatControlBarButtonSkin_Transition1", this._FlatControlBarButtonSkin_Transition1);
            return _loc_1;
        }// end function

        private function _FlatControlBarButtonSkin_AnimateColor1_i() : AnimateColor
        {
            var _loc_1:* = new AnimateColor();
            _loc_1.duration = 250;
            this._FlatControlBarButtonSkin_AnimateColor1 = _loc_1;
            BindingManager.executeBindings(this, "_FlatControlBarButtonSkin_AnimateColor1", this._FlatControlBarButtonSkin_AnimateColor1);
            return _loc_1;
        }// end function

        private function _FlatControlBarButtonSkin_Rect1_c() : Rect
        {
            var _loc_1:* = new Rect();
            _loc_1.left = 0;
            _loc_1.right = 0;
            _loc_1.top = 0;
            _loc_1.bottom = 0;
            _loc_1.fill = this._FlatControlBarButtonSkin_LinearGradient1_c();
            _loc_1.initialized(this, null);
            return _loc_1;
        }// end function

        private function _FlatControlBarButtonSkin_LinearGradient1_c() : LinearGradient
        {
            var _loc_1:* = new LinearGradient();
            _loc_1.rotation = 90;
            _loc_1.entries = [this._FlatControlBarButtonSkin_GradientEntry1_i(), this._FlatControlBarButtonSkin_GradientEntry2_i()];
            return _loc_1;
        }// end function

        private function _FlatControlBarButtonSkin_GradientEntry1_i() : GradientEntry
        {
            var _loc_1:* = new GradientEntry();
            _loc_1.color = 16777215;
            this.gradient1 = _loc_1;
            BindingManager.executeBindings(this, "gradient1", this.gradient1);
            return _loc_1;
        }// end function

        private function _FlatControlBarButtonSkin_GradientEntry2_i() : GradientEntry
        {
            var _loc_1:* = new GradientEntry();
            _loc_1.color = 14540253;
            this.gradient2 = _loc_1;
            BindingManager.executeBindings(this, "gradient2", this.gradient2);
            return _loc_1;
        }// end function

        private function _FlatControlBarButtonSkin_VectorImage1_i() : VectorImage
        {
            var _loc_1:* = new VectorImage();
            _loc_1.filters = [this._FlatControlBarButtonSkin_DropShadowFilter1_c()];
            _loc_1.setStyle("tintColor", 4868682);
            _loc_1.id = "iconDisplay2";
            if (!_loc_1.document)
            {
                _loc_1.document = this;
            }
            this.iconDisplay2 = _loc_1;
            BindingManager.executeBindings(this, "iconDisplay2", this.iconDisplay2);
            return _loc_1;
        }// end function

        private function _FlatControlBarButtonSkin_DropShadowFilter1_c() : DropShadowFilter
        {
            var _loc_1:* = new DropShadowFilter();
            _loc_1.color = 16777215;
            _loc_1.alpha = 1;
            _loc_1.angle = 90;
            _loc_1.distance = 2;
            _loc_1.blurX = 2;
            _loc_1.blurY = 2;
            return _loc_1;
        }// end function

        public function ___FlatControlBarButtonSkin_Skin1_creationComplete(event:FlexEvent) : void
        {
            this.showHandCursor();
            return;
        }// end function

        private function _FlatControlBarButtonSkin_bindingsSetup() : Array
        {
            var result:Array;
            result[0] = new Binding(this, function () : Array
            {
                var _loc_1:* = [gradient1, gradient2];
                if (_loc_1 != null)
                {
                }
                if (!(_loc_1 is Array))
                {
                }
                return _loc_1 is Proxy ? (_loc_1) : ([_loc_1]);
            }// end function
            , null, "_FlatControlBarButtonSkin_AnimateColor1.targets");
            return result;
        }// end function

        public function get _FlatControlBarButtonSkin_Transition1() : Transition
        {
            return this._238796134_FlatControlBarButtonSkin_Transition1;
        }// end function

        public function set _FlatControlBarButtonSkin_Transition1(param1:Transition) : void
        {
            var _loc_2:* = this._238796134_FlatControlBarButtonSkin_Transition1;
            if (_loc_2 !== param1)
            {
                this._238796134_FlatControlBarButtonSkin_Transition1 = param1;
                if (this.hasEventListener("propertyChange"))
                {
                    this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_FlatControlBarButtonSkin_Transition1", _loc_2, param1));
                }
            }
            return;
        }// end function

        public function get gradient1() : GradientEntry
        {
            return this._1515786495gradient1;
        }// end function

        public function set gradient1(param1:GradientEntry) : void
        {
            var _loc_2:* = this._1515786495gradient1;
            if (_loc_2 !== param1)
            {
                this._1515786495gradient1 = param1;
                if (this.hasEventListener("propertyChange"))
                {
                    this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "gradient1", _loc_2, param1));
                }
            }
            return;
        }// end function

        public function get gradient2() : GradientEntry
        {
            return this._1515786494gradient2;
        }// end function

        public function set gradient2(param1:GradientEntry) : void
        {
            var _loc_2:* = this._1515786494gradient2;
            if (_loc_2 !== param1)
            {
                this._1515786494gradient2 = param1;
                if (this.hasEventListener("propertyChange"))
                {
                    this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "gradient2", _loc_2, param1));
                }
            }
            return;
        }// end function

        public function get iconDisplay2() : VectorImage
        {
            return this._1919293257iconDisplay2;
        }// end function

        public function set iconDisplay2(param1:VectorImage) : void
        {
            var _loc_2:* = this._1919293257iconDisplay2;
            if (_loc_2 !== param1)
            {
                this._1919293257iconDisplay2 = param1;
                if (this.hasEventListener("propertyChange"))
                {
                    this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "iconDisplay2", _loc_2, param1));
                }
            }
            return;
        }// end function

        public function get hostComponent() : IconButton
        {
            return this._213507019hostComponent;
        }// end function

        public function set hostComponent(param1:IconButton) : void
        {
            var _loc_2:* = this._213507019hostComponent;
            if (_loc_2 !== param1)
            {
                this._213507019hostComponent = param1;
                if (this.hasEventListener("propertyChange"))
                {
                    this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "hostComponent", _loc_2, param1));
                }
            }
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
