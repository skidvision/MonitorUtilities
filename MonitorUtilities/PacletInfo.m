Paclet[
	Name -> "MonitorUtilities",
	Description -> "Tools for monitor / viewing calculations",
	Creator -> "Flip Phillips <flip@skidmore.edu>",
	Publisher -> "Skidmore Vision Lab",
	Copyright -> "1997- Flip Phillips",
	License -> "MIT",
	Version -> "1.2.0",
	BuildNumber -> "17",
	MathematicaVersion -> "11.2+",
	URL -> "https://github.com/flipphillips/MonitorUtilities",
	Thumbnail -> "Documentation/icon.png",
	Loading -> Automatic,
	Extensions -> {
	 { "Documentation", 
			MainPage -> "Guides/MonitorUtilities", 
			Language -> "English"},
	 { "Kernel", 
		Symbols -> {
			(* globals *)
			"MonitorUtilities`$MonitorUtilitiesVersion","MonitorUtilities`$MonitorUtilitiesDebug",

			"MonitorUtilities`PixelsPerCM",
			"MonitorUtilities`CMPerPixel",
			"MonitorUtilities`DegreesPerCM",
			"MonitorUtilities`CMPerDegree",
			"MonitorUtilities`DegreesPerPixel",
			"MonitorUtilities`PixelsPerDegree",
			"MonitorUtilities`CartesianToMonitor",
			"MonitorUtilities`MonitorToImage",
			"MonitorUtilities`MonitorToDegrees",
			"MonitorUtilities`DegreesToMonitor"
		},
	 Context -> {"MonitorUtilities`"} }
	}
]