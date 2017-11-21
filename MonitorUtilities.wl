(* ::Package:: *)

(* display utilities *)
(* uses associations to represent the monitor *)
(* units are cm, degrees, and pixels throughout *)


BeginPackage["MonitorUtilities`"]


MonitorUtilities::usage="A package for doing monitor computation. Needs an association with xres,yres,xsize,ysize, and distance defined."


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


Begin["`Private`"]

(* Implementation of the package *)


(* ::Text:: *)
(*We'll just do this in x axis for now... but should be better than all that*)


PixelsPerCM[mon_]:=mon["xres"]/mon["xsize"]


CMPerPixel[mon_]:=1/PixelsPerCM[mon]


DegreesPerCM[distance_,length_:1.0]:=ArcTan[distance,length]/Degree


CMPerDegree[distance_,length_:1.0]:=1/DegreesPerCM[distance,length]


DegreesPerPixel[mon_,vp_]:=DegreesPerCM[vp]/PixelsPerCM[mon]


DegreesPerPixel[mon_]:=DegreesPerCM[mon["distance"]]/PixelsPerCM[mon]


PixelsPerDegree[mon_,vp_]:=1/DegreesPerPixel[mon,vp]


PixelsPerDegree[mon_]:=1/DegreesPerPixel[mon,mon["distance"]]


(* this shit makes me crazy *)


CartesianToMonitor[mon_,p_]:={p[[1]],mon["yres"]-p[[2]]}


(* row,col *)


MonitorToImage[mon_,p_]:={mon["yres"]-p[[2]],p[[1]]}


(* Note this is POSITION not size!!! y inverted! Screen space *)


MonitorToDegrees[mon_,p_]:=(CartesianToMonitor[mon,p]-{mon["xres"],mon["yres"]}/2)/PixelsPerDegree[mon]


DegreesToMonitor[mon_,va_]:=CartesianToMonitor[mon,(va*PixelsPerDegree[mon])+({mon["xres"],mon["yres"]}/2)]


End[]


EndPackage[]
