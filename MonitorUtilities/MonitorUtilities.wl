(* As borrowed from Arnoud's templates *)

PrintTemporary["Loading ",ToString[Length[Names["MonitorUtilities`*"]]], " MonitorUtilities functions"];

BeginPackage["MonitorUtilities`",{"PacletManager`"}];

Get[FileNameJoin[{DirectoryName[$InputFileName],"Usage.wl"}]];

Begin["`Private`"];

Module[{files},

  (* load in any session *)
  files={"Globals.wl","Conversions.wl"};

  Map[Get[FileNameJoin[{DirectoryName[$InputFileName], #}]] &, files];

  (* only load in a notebook session *)
(*
  If[ Head[$FrontEnd] === FrontEndObject,
    files = {"Dock.wl","Notebook.wl"};
    Map[ Get[ FileNameJoin[{DirectoryName[$InputFileName], #}] ] &, files ];
  ]
*)

];

End[];
EndPackage[];
