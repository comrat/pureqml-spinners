Item {
	property Color color: "#ccc";
	property int spacing: (width - 3 * height) / 2;
	width: 100;
	height: 28;

	CssMixin {
		rules: ".bounce-dots-spinner > div {width:" + parent.height + "px;height:" + parent.height + "px;border-radius: 100%;display: inline-block;-webkit-animation: sk-bouncedelay 1.4s infinite ease-in-out both;animation: sk-bouncedelay 1.4s infinite ease-in-out both;}.bounce-dots-spinner .bounce1 {-webkit-animation-delay: -0.32s;animation-delay: -0.32s;}.bounce-dots-spinner .bounce2 {-webkit-animation-delay: -0.16s;animation-delay: -0.16s;}@-webkit-keyframes sk-bouncedelay {0%, 80%, 100% { -webkit-transform: scale(0) }40% { -webkit-transform: scale(1.0) }}@keyframes sk-bouncedelay {0%, 80%, 100% { -webkit-transform: scale(0);transform: scale(0);} 40% { -webkit-transform: scale(1.0);transform: scale(1.0);}}";
	}

	Rectangle { color: parent.color; onCompleted: { this.element.dom.className = "bounce1" } }
	Rectangle { color: parent.color; x: parent.height + parent.spacing; onCompleted: { this.element.dom.className = "bounce2" } }
	Rectangle { color: parent.color; x: 2 * (parent.height + parent.spacing); onCompleted: { this.element.dom.className = "bounce3" } }

	constructor: { this.element.dom.className = "bounce-dots-spinner" }
}

