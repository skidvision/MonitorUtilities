(* ::Package:: *)


(* ::Section:: *)
(*Automatically Generated*)


$MonitorUtilitiesVersion::usage = "$MonitorUtilitiesVersion gives its best guess as to the version we're using.";
$MonitorUtilitiesDebug::usage = "$MonitorUtilitiesDebug let's us know if the package was built with any debugging tools.";


(* MonitorUtilities::usage="A package for doing monitor computation. Needs an association with xres,yres,xsize,ysize, and distance defined." *)


PixelsPerCM::usage="PixelsPerCM[mon] returns pixels per centimeter for the given mon."
CMPerPixel::usage="CMPerPixel[mon] returns centimeters per pixel for mon."


DegreesPerCM::usage="DegreesPerCM[distance] gives the degrees per 1 centimeter at a particular distance. Optionally, DegreesPerCM[distance,length] allows specification of the length on the screen."
CMPerDegree::usage="CMPerDegree[distance] gives the centimeters, on the screen."


DegreesPerPixel::usage="DegreesPerPixel[mon] gives the given degrees per pixel for monitor mon. DegreesPerPixel[mon,vp] at viewpoint vp."
PixelsPerDegree::usage="PixelsPerDegree[mon] or PixelsPerDegree[mon,vp]"


CartesianToMonitor::usage="CartesianToMonitor[mon,p] projects p onto monitor space."
MonitorToImage::usage="MonitorToImage[mon,p] projects monitor position to image space {row,col} style."
MonitorToDegrees::usage="MonitorToDegrees[mon,p] projects monitor position degrees."
DegreesToMonitor::usage="DegreesToMonitor[mon,va] projects a point at va to monitor space."
