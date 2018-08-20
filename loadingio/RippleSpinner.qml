Item {
	property Color color: "#ccc";
	width: 100;
	height: 100;

	CssMixin {
		rules: ".lds-ripple {display: inline-block;position: relative;width:" + parent.width + "px;height:" + parent.height + "px;}.lds-ripple div {position: absolute;border: 4px solid #fff;opacity: 1;border-radius: 50%;animation: lds-ripple 1s cubic-bezier(0, 0.2, 0.8, 1) infinite;}.lds-ripple div:nth-child(2) {animation-delay: -0.5s;}@keyframes lds-ripple {0% {top:" + (parent.height / 2) + "px;left:" + (parent.height / 2) + "px;width: 0;height: 0;opacity: 1;}100% {top: -1px;left: -1px;width:" + parent.width + "px;height:" + parent.height + "px;opacity: 0;}}";
	}

	Rectangle { width: 100%; border.color: parent.color; }
	Rectangle { width: 100%; border.color: parent.color; }

	onCompleted: { this.element.dom.className = "lds-ripple" }
}
