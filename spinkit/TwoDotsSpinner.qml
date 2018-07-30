Item {
	property Color color: "#ccc";
	width: 100;
	height: 100;

	CssMixin {
		rules: ".two-dots-spinner {width:" + parent.width + "px;height:" + parent.height + "px;text-align: center;-webkit-animation: sk-rotate 2.0s infinite linear;animation: sk-rotate 2.0s infinite linear;}.dot1, .dot2 {width: 60%;height: 60%;display: inline-block;position: absolute;top: 0;background-color:" + parent.color + ";border-radius: 100%;-webkit-animation: sk-bounce 2.0s infinite ease-in-out;animation: sk-bounce 2.0s infinite ease-in-out;}.dot2 {top: auto;bottom: 0;-webkit-animation-delay: -1.0s;animation-delay: -1.0s;}@-webkit-keyframes sk-rotate { 100% { -webkit-transform: rotate(360deg) }}@keyframes sk-rotate { 100% { transform: rotate(360deg); -webkit-transform: rotate(360deg) }}@-webkit-keyframes sk-bounce {0%, 100% { -webkit-transform: scale(0.0) }50% { -webkit-transform: scale(1.0) }}@keyframes sk-bounce {0%, 100% { transform: scale(0.0);-webkit-transform: scale(0.0);} 50% { transform: scale(1.0);-webkit-transform: scale(1.0);}}";
	}

	Rectangle { color: parent.color; onCompleted: { this.element.dom.className = "dot1" } }
	Rectangle { color: parent.color; onCompleted: { this.element.dom.className = "dot2" } }

	onCompleted: { this.element.dom.className = "two-dots-spinner" }
}
