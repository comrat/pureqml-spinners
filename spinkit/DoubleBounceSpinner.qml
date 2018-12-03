Item {
	property Color color: "#ccc";
	width: 100;
	height: 100;

	Rectangle {
		width: 100%;
		height: 100%;
		radius: width / 2;
		color: parent.color;
		opacity: 0.6;

		onCompleted: {
			var html = _globals.html5.html
			this.style(html.getPrefixedName("animation"), "sk-bounce 2.0s infinite ease-in-out")
		}
	}

	Rectangle {
		width: 100%;
		height: 100%;
		radius: width / 2;
		color: parent.color;
		opacity: 0.6;

		PositionMixin { value: PositionMixin.Absolute; }

		onCompleted: {
			var html = _globals.html5.html
			this.style(html.getPrefixedName("animation"), "sk-bounce 2.0s infinite ease-in-out")
			this.style(html.getPrefixedName("animation-delay"), "-1.0s")
		}
	}

	function registerStyle(style, tag) {
		var html = _globals.html5.html
		style.addRule(html.getPrefixedName("@keyframes"), "sk-bounce { 0%, 100% {" + html.getPrefixedName("transform") + ": scale(0.0) } 50% { -webkit-transform: scale(1.0) }}")
	}
}
