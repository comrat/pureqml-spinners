Rectangle {
	anchors.fill: context;
	color: "#78909C";

	Grid {
		width: 80%;
		height: 80%;
		verticalSpacing: 30;
		horizontalSpacing: 30;
		anchors.centerIn: parent;

		SpinnerWindow {
			componentName: "DoubleBounceSpinner";

			DoubleBounceSpinner {
				anchors.centerIn: parent;
				color: "#fff";
			}

			onClicked: { codeDialog.show(this.code) }
		}

		SpinnerWindow {
			componentName: "BounceDotsSpinner";

			BounceDotsSpinner {
				anchors.centerIn: parent;
				color: "#fff";
			}

			onClicked: { codeDialog.show(this.code) }
		}

		SpinnerWindow {
			componentName: "FadingCircleSpinner";

			FadingCircleSpinner {
				anchors.centerIn: parent;
				color: "#fff";
			}

			onClicked: { codeDialog.show(this.code) }
		}

		SpinnerWindow {
			componentName: "SquareSpinner";

			SquareSpinner {
				anchors.centerIn: parent;
				color: "#fff";
			}

			onClicked: { codeDialog.show(this.code) }
		}

		SpinnerWindow {
			componentName: "SunSpinner";

			SunSpinner {
				anchors.centerIn: parent;
				color: "#fff";
			}

			onClicked: { codeDialog.show(this.code) }
		}

		SpinnerWindow {
			componentName: "RingSpinner";

			RingSpinner {
				anchors.centerIn: parent;
				color: "#fff";
			}

			onClicked: { codeDialog.show(this.code) }
		}
	}

	CodeDialog { id: codeDialog; }
}
