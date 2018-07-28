Item {
	property Color color: "#ccc";
	width: 100;
	height: 100;

	CssMixin {
		rules: ".lds-spinner {color: official;width:" + parent.width + "px;height:" + parent.height + "px;}.lds-spinner div {transform-origin:" + (parent.width / 2) + "px " + (parent.height / 2) + "px;animation: lds-spinner 1.2s linear infinite;}.lds-spinner div:after {content: ' ';display: block;position: absolute;top: 3px;left: " + (0.46 * parent.width) + "px;width:" + (parent.width / 11) + "px;height: " + (parent.height / 4) + "px;border-radius: 20%;background:" + parent.color + ";}.lds-spinner div:nth-child(1) {transform: rotate(0deg);animation-delay: -1.1s;}.lds-spinner div:nth-child(2) {transform: rotate(30deg);animation-delay: -1s;}.lds-spinner div:nth-child(3) {transform: rotate(60deg);animation-delay: -0.9s;}.lds-spinner div:nth-child(4) {transform: rotate(90deg);animation-delay: -0.8s;}.lds-spinner div:nth-child(5) {transform: rotate(120deg);animation-delay: -0.7s;}.lds-spinner div:nth-child(6) {transform: rotate(150deg);animation-delay: -0.6s;}.lds-spinner div:nth-child(7) {transform: rotate(180deg);animation-delay: -0.5s;}.lds-spinner div:nth-child(8) {transform: rotate(210deg);animation-delay: -0.4s;}.lds-spinner div:nth-child(9) {transform: rotate(240deg);animation-delay: -0.3s;}.lds-spinner div:nth-child(10) {transform: rotate(270deg);animation-delay: -0.2s;}.lds-spinner div:nth-child(11) {transform: rotate(300deg);animation-delay: -0.1s;}.lds-spinner div:nth-child(12) {transform: rotate(330deg);animation-delay: 0s;}@keyframes lds-spinner {0% {opacity: 1;}100% {opacity: 0;}}";
	}

	Item { } Item { } Item { } Item { }
	Item { } Item { } Item { } Item { }
	Item { } Item { } Item { } Item { }

	onCompleted: { this.element.dom.className = "lds-spinner" }
}
