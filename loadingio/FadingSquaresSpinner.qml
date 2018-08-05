Item {
	property Color color: "#ccc";
	width: 100;
	height: 100;

	CssMixin {
		rules: ".lds-grid {width:31%;height:31%;}.lds-grid div {position: absolute;width:31%;height:31%;border-radius: 50%;background:" + parent.color + ";animation: lds-grid 1.2s linear infinite;}.lds-grid div:nth-child(1) {animation-delay: 0s;}.lds-grid div:nth-child(2) {animation-delay: -0.4s;}.lds-grid div:nth-child(3) {;animation-delay: -0.8s;}.lds-grid div:nth-child(4) {animation-delay: -0.4s;}.lds-grid div:nth-child(5) {animation-delay: -0.8s;}.lds-grid div:nth-child(6) {45px;animation-delay: -1.2s;}.lds-grid div:nth-child(7) {animation-delay: -0.8s;}.lds-grid div:nth-child(8) {animation-delay: -1.2s;}.lds-grid div:nth-child(9) {45px;animation-delay: -1.6s;}@keyframes lds-grid {0%, 100% {opacity: 1;}50% {opacity: 0.5;}}";
	}

	Rectangle { color: parent.color; } Rectangle { color: parent.color; x: 33%; } Rectangle { color: parent.color; x: 66%; }
	Rectangle { color: parent.color; y: 33%; } Rectangle { color: parent.color; x: 33%; y: 33%; } Rectangle { color: parent.color; x: 66%; y: 33%; }
	Rectangle { color: parent.color; y: 66%; } Rectangle { color: parent.color; x: 33%; y: 66%; } Rectangle { color: parent.color; x: 66%; y: 66%; }

	onCompleted: { this.element.dom.className = "lds-grid" }
}
