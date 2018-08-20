Item {
	property Color color: "#ccc";
	width: 100;
	height: 100;

	CssMixin {
		rules: ".lds-facebook {display: inline-block;position: relative;width:" + parent.width + "px;height:" + parent.height + "px;}.lds-facebook div {width: 13px;background:" + parent.color + ";animation: lds-facebook 1.2s cubic-bezier(0, 0.5, 0.5, 1) infinite;}.lds-facebook div:nth-child(1) {animation-delay: -0.24s;}.lds-facebook div:nth-child(2) {animation-delay: -0.12s;}.lds-facebook div:nth-child(3) {animation-delay: 0;}@keyframes lds-facebook {0% {top: 16%;height: 61%;}50%, 100% {top: 29%;height: 36%;}}";
	}

	Rectangle { color: parent.color; x: 1%; width: 30%; }
	Rectangle { color: parent.color; x: 35%; width: 30%; }
	Rectangle { color: parent.color; x: 69%; width: 30%; }

	onCompleted: { this.element.dom.className = "lds-facebook" }
}
