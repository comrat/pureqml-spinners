Rectangle {
	width: 100;
	height: 100;
	color: "#ccc";

	CssMixin {
		rules: ".lds-spin-circle{display: inline-block;width:" + parent.width + "px;height:" + parent.height + "px;margin: 6px;border-radius: 50%;background:" + parent.color + ";animation: lds-spin-circle 2.4s cubic-bezier(0, 0.2, 0.8, 1) infinite;}@keyframes lds-spin-circle {0%, 100% {animation-timing-function: cubic-bezier(0.5, 0, 1, 0.5);}0% {transform: rotateY(0deg);}50% {transform: rotateY(1800deg);animation-timing-function: cubic-bezier(0, 0.5, 0.5, 1);}100% {transform: rotateY(3600deg);}}";
	}

	onCompleted: { this.element.dom.className = "lds-spin-circle" }
}
