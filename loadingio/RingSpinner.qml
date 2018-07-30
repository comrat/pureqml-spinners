Item {
	property Color color: "#ccc";
	width: 100;
	height: 100;

	CssMixin {
		rules: ".lds-ring {width:" + parent.width + "px;height:" + parent.height + "px;}.lds-ring div {box-sizing: border-box;width:" + parent.width + "px;height:" + parent.height + "px;border:" + (parent.width / 10) + "px solid #fff;border-radius: 50%;animation: lds-ring 1.2s cubic-bezier(0.5, 0, 0.5, 1) infinite;border-color: " + parent.color + " transparent transparent transparent;}.lds-ring div:nth-child(1) {animation-delay: -0.45s;}.lds-ring div:nth-child(2) {animation-delay: -0.3s;}.lds-ring div:nth-child(3) {animation-delay: -0.15s;}@keyframes lds-ring {0% {transform: rotate(0deg);}100% {transform: rotate(360deg);}}";
	}

	Item {
		property Color color: parent.color;

		onColorChanged: { this.style("border-color", value + " transparent transparent transparent"); }
	}

	Item {
		property Color color: parent.color;

		onColorChanged: { this.style("border-color", value + " transparent transparent transparent"); }
	}

	Item {
		property Color color: parent.color;

		onColorChanged: { this.style("border-color", value + " transparent transparent transparent"); }
	}

	Item {
		property Color color: parent.color;

		onColorChanged: { this.style("border-color", value + " transparent transparent transparent"); }
	}

	onCompleted: { this.element.dom.className = "lds-ring" }
}
