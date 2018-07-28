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
			DoubleBounceSpinner {
				anchors.centerIn: parent;
				color: "#fff";
			}
		}

		SpinnerWindow {
			BounceDotsSpinner {
				anchors.centerIn: parent;
				color: "#fff";
			}
		}

		SpinnerWindow {
			FadingCircleSpinner {
				anchors.centerIn: parent;
				color: "#fff";
			}
		}

		SpinnerWindow {
			SquareSpinner {
				anchors.centerIn: parent;
				color: "#fff";
			}
		}

		SpinnerWindow {
			SunSpinner {
				anchors.centerIn: parent;
				color: "#fff";
			}
		}
	}
}
