Item {
	id: squareSpinnerProto;
	property Color color: "#ccc";
	width: 100;
	height: 100;

	CssMixin {
		rules: ".square-spinner {width:" + parent.width + "px;height:" + parent.height + "px;background-color:" + squareSpinnerProto.color + ";-webkit-animation: sk-rotateplane 1.2s infinite ease-in-out;animation: sk-rotateplane 1.2s infinite ease-in-out;}@-webkit-keyframes sk-rotateplane {0% { -webkit-transform: perspective(120px) }50% { -webkit-transform: perspective(120px) rotateY(180deg) }100% { -webkit-transform: perspective(120px) rotateY(180deg)  rotateX(180deg) }}@keyframes sk-rotateplane {0% { transform: perspective(120px) rotateX(0deg) rotateY(0deg);-webkit-transform: perspective(120px) rotateX(0deg) rotateY(0deg) } 50% { transform: perspective(120px) rotateX(-180.1deg) rotateY(0deg);-webkit-transform: perspective(120px) rotateX(-180.1deg) rotateY(0deg) } 100% { transform: perspective(120px) rotateX(-180deg) rotateY(-179.9deg);-webkit-transform: perspective(120px) rotateX(-180deg) rotateY(-179.9deg);}}";
	}

	onCompleted: { this.element.dom.className = "core.Item square-spinner" }
}
