Item {
	property Color color: "#ccc";
	width: 100;
	height: 100;

	CssMixin {
		rules: ".lds-ring {width:" + parent.width + "px;height:" + parent.height + "px;}.lds-ring div {box-sizing: border-box;width:" + parent.width + "px;height:" + parent.height + "px;border:" + (parent.width / 10) + "px solid #fff;border-radius: 50%;animation: lds-ring 1.2s cubic-bezier(0.5, 0, 0.5, 1) infinite;border-color: #fff transparent transparent transparent;}.lds-ring div:nth-child(1) {animation-delay: -0.45s;}.lds-ring div:nth-child(2) {animation-delay: -0.3s;}.lds-ring div:nth-child(3) {animation-delay: -0.15s;}@keyframes lds-ring {0% {transform: rotate(0deg);}100% {transform: rotate(360deg);}}";
	}

	Item { } Item { } Item { } Item { }

	onCompleted: { this.element.dom.className = "lds-ring" }
}
