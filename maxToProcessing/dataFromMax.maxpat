{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 7,
			"minor" : 3,
			"revision" : 4,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"rect" : [ 59.0, 79.0, 1239.0, 783.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 203.5, 90.75, 50.0, 22.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 171.5, 53.5, 49.0, 22.0 ],
					"style" : "",
					"text" : "touchin"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 141.25, 125.200012, 117.0, 22.0 ],
					"style" : "",
					"text" : "prepend /afterTouch"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 159.25, 177.200012, 99.0, 22.0 ],
					"style" : "",
					"text" : "/noteIn 72 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 0,
					"patching_rect" : [ 86.25, 87.0, 51.0, 22.0 ],
					"style" : "",
					"text" : "noteout"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-58",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 15.0, 91.200012, 48.0, 22.0 ],
					"style" : "",
					"text" : "pack i i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-57",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 15.0, 125.200012, 95.0, 22.0 ],
					"style" : "",
					"text" : "prepend /noteIn"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 177.200012, 137.0, 22.0 ],
					"style" : "",
					"text" : "udpsend localhost 6003"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "int", "int" ],
					"patching_rect" : [ 15.0, 42.5, 131.0, 22.0 ],
					"style" : "",
					"text" : "notein \"SL MkII Port 1\""
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 1 ],
					"order" : 1,
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"order" : 1,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 1 ],
					"order" : 0,
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"order" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"order" : 1,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"order" : 0,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"order" : 1,
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 1 ],
					"order" : 0,
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"source" : [ "obj-58", 0 ]
				}

			}
 ],
		"dependency_cache" : [  ],
		"autosave" : 0,
		"styles" : [ 			{
				"name" : "current-fav",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.078431, 0.321569, 0.9 ],
					"accentcolor" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
					"elementcolor" : [ 0.462745, 0.470588, 0.490196, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.0, 0.0, 0.0, 1.0 ],
						"color2" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "current-fav-1",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.078431, 0.321569, 0.9 ],
					"clearcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"accentcolor" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.0, 0.0, 0.0, 1.0 ],
						"color2" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "current-fav-1-1",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.078431, 0.321569, 0.9 ],
					"accentcolor" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.0, 0.0, 0.0, 1.0 ],
						"color2" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"parentstyle" : "velvet-biggs",
				"multi" : 0
			}
, 			{
				"name" : "current-fav-1-1-1",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.078431, 0.321569, 0.9 ],
					"clearcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"accentcolor" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.0, 0.0, 0.0, 1.0 ],
						"color2" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "current-fav-1-1-1-1",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.078431, 0.321569, 0.9 ],
					"accentcolor" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.0, 0.0, 0.0, 1.0 ],
						"color2" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"parentstyle" : "velvet-biggs",
				"multi" : 0
			}
, 			{
				"name" : "current-fav-1-1-1-1-1",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.078431, 0.321569, 0.9 ],
					"clearcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"accentcolor" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.0, 0.0, 0.0, 1.0 ],
						"color2" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "current-fav-1-1-1-1-1-1",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.078431, 0.321569, 0.9 ],
					"accentcolor" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.0, 0.0, 0.0, 1.0 ],
						"color2" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"parentstyle" : "velvet-biggs",
				"multi" : 0
			}
, 			{
				"name" : "current-fav-1-1-1-1-1-2",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.078431, 0.321569, 0.9 ],
					"accentcolor" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.0, 0.0, 0.0, 1.0 ],
						"color2" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"parentstyle" : "velvet-biggs",
				"multi" : 0
			}
, 			{
				"name" : "current-fav-1-1-1-1-2",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.078431, 0.321569, 0.9 ],
					"accentcolor" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.0, 0.0, 0.0, 1.0 ],
						"color2" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"parentstyle" : "velvet-biggs",
				"multi" : 0
			}
, 			{
				"name" : "current-fav-1-1-1-1-3",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.078431, 0.321569, 0.9 ],
					"accentcolor" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.0, 0.0, 0.0, 1.0 ],
						"color2" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"parentstyle" : "velvet-biggs",
				"multi" : 0
			}
, 			{
				"name" : "current-fav-1-1-1-1-4",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.078431, 0.321569, 0.9 ],
					"accentcolor" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.0, 0.0, 0.0, 1.0 ],
						"color2" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"parentstyle" : "velvet-biggs",
				"multi" : 0
			}
, 			{
				"name" : "current-fav-1-1-1-1-5",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.078431, 0.321569, 0.9 ],
					"accentcolor" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.0, 0.0, 0.0, 1.0 ],
						"color2" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"parentstyle" : "velvet-biggs",
				"multi" : 0
			}
, 			{
				"name" : "current-fav-1-1-1-1-6",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.078431, 0.321569, 0.9 ],
					"clearcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"accentcolor" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.0, 0.0, 0.0, 1.0 ],
						"color2" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "current-fav-1-1-1-2",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.078431, 0.321569, 0.9 ],
					"accentcolor" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.0, 0.0, 0.0, 1.0 ],
						"color2" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"parentstyle" : "velvet-biggs",
				"multi" : 0
			}
, 			{
				"name" : "current-fav-1-1-1-3",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.078431, 0.321569, 0.9 ],
					"accentcolor" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.0, 0.0, 0.0, 1.0 ],
						"color2" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"parentstyle" : "velvet-biggs",
				"multi" : 0
			}
, 			{
				"name" : "current-fav-1-1-1-4",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.078431, 0.321569, 0.9 ],
					"accentcolor" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.0, 0.0, 0.0, 1.0 ],
						"color2" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"parentstyle" : "velvet-biggs",
				"multi" : 0
			}
, 			{
				"name" : "current-fav-1-1-1-4-1",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.078431, 0.321569, 0.9 ],
					"clearcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"accentcolor" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.0, 0.0, 0.0, 1.0 ],
						"color2" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "current-fav-1-1-1-5",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.078431, 0.321569, 0.9 ],
					"accentcolor" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.0, 0.0, 0.0, 1.0 ],
						"color2" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"parentstyle" : "velvet-biggs",
				"multi" : 0
			}
, 			{
				"name" : "current-fav-1-1-1-5-1",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.078431, 0.321569, 0.9 ],
					"clearcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"accentcolor" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.0, 0.0, 0.0, 1.0 ],
						"color2" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "current-fav-1-1-1-6",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.078431, 0.321569, 0.9 ],
					"clearcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"accentcolor" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.0, 0.0, 0.0, 1.0 ],
						"color2" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "current-fav-1-1-1-7",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.078431, 0.321569, 0.9 ],
					"clearcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"accentcolor" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.0, 0.0, 0.0, 1.0 ],
						"color2" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "current-fav-1-1-1-8",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.078431, 0.321569, 0.9 ],
					"accentcolor" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.0, 0.0, 0.0, 1.0 ],
						"color2" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"parentstyle" : "velvet-biggs",
				"multi" : 0
			}
, 			{
				"name" : "current-fav-1-1-2",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.078431, 0.321569, 0.9 ],
					"clearcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"accentcolor" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.0, 0.0, 0.0, 1.0 ],
						"color2" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "current-fav-1-1-3",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.078431, 0.321569, 0.9 ],
					"clearcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"accentcolor" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.0, 0.0, 0.0, 1.0 ],
						"color2" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "current-fav-1-1-4",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.078431, 0.321569, 0.9 ],
					"clearcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"accentcolor" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.0, 0.0, 0.0, 1.0 ],
						"color2" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "current-fav-1-1-4-1",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.078431, 0.321569, 0.9 ],
					"accentcolor" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.0, 0.0, 0.0, 1.0 ],
						"color2" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"parentstyle" : "velvet-biggs",
				"multi" : 0
			}
, 			{
				"name" : "current-fav-1-1-5",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.078431, 0.321569, 0.9 ],
					"clearcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"accentcolor" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.0, 0.0, 0.0, 1.0 ],
						"color2" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "current-fav-1-1-5-1",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.078431, 0.321569, 0.9 ],
					"accentcolor" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.0, 0.0, 0.0, 1.0 ],
						"color2" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"parentstyle" : "velvet-biggs",
				"multi" : 0
			}
, 			{
				"name" : "current-fav-1-1-6",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.078431, 0.321569, 0.9 ],
					"accentcolor" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.0, 0.0, 0.0, 1.0 ],
						"color2" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"parentstyle" : "velvet-biggs",
				"multi" : 0
			}
, 			{
				"name" : "current-fav-1-1-7",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.078431, 0.321569, 0.9 ],
					"accentcolor" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.0, 0.0, 0.0, 1.0 ],
						"color2" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"parentstyle" : "velvet-biggs",
				"multi" : 0
			}
, 			{
				"name" : "current-fav-1-1-8",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.078431, 0.321569, 0.9 ],
					"clearcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"accentcolor" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.0, 0.0, 0.0, 1.0 ],
						"color2" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "current-fav-1-10",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.078431, 0.321569, 0.9 ],
					"accentcolor" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.0, 0.0, 0.0, 1.0 ],
						"color2" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "current-fav-1-11",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.078431, 0.321569, 0.9 ],
					"accentcolor" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
					"elementcolor" : [ 0.462745, 0.470588, 0.490196, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.0, 0.0, 0.0, 1.0 ],
						"color2" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "current-fav-1-2",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.078431, 0.321569, 0.9 ],
					"accentcolor" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.0, 0.0, 0.0, 1.0 ],
						"color2" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"parentstyle" : "velvet-biggs",
				"multi" : 0
			}
, 			{
				"name" : "current-fav-1-3",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.078431, 0.321569, 0.9 ],
					"accentcolor" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.0, 0.0, 0.0, 1.0 ],
						"color2" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"parentstyle" : "velvet-biggs",
				"multi" : 0
			}
, 			{
				"name" : "current-fav-1-4",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.078431, 0.321569, 0.9 ],
					"accentcolor" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.0, 0.0, 0.0, 1.0 ],
						"color2" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"parentstyle" : "velvet-biggs",
				"multi" : 0
			}
, 			{
				"name" : "current-fav-1-5",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.078431, 0.321569, 0.9 ],
					"accentcolor" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.0, 0.0, 0.0, 1.0 ],
						"color2" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"parentstyle" : "velvet-biggs",
				"multi" : 0
			}
, 			{
				"name" : "current-fav-1-6",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.078431, 0.321569, 0.9 ],
					"accentcolor" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.0, 0.0, 0.0, 1.0 ],
						"color2" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"parentstyle" : "velvet-biggs",
				"multi" : 0
			}
, 			{
				"name" : "current-fav-1-6-1",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.078431, 0.321569, 0.9 ],
					"clearcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"accentcolor" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.0, 0.0, 0.0, 1.0 ],
						"color2" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "current-fav-1-7",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.078431, 0.321569, 0.9 ],
					"accentcolor" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
					"elementcolor" : [ 0.462745, 0.470588, 0.490196, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.0, 0.0, 0.0, 1.0 ],
						"color2" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "current-fav-1-7-1",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.078431, 0.321569, 0.9 ],
					"clearcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"accentcolor" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.0, 0.0, 0.0, 1.0 ],
						"color2" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "current-fav-1-8",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.078431, 0.321569, 0.9 ],
					"clearcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"accentcolor" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.0, 0.0, 0.0, 1.0 ],
						"color2" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "current-fav-1-9",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.078431, 0.321569, 0.9 ],
					"clearcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"accentcolor" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.0, 0.0, 0.0, 1.0 ],
						"color2" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "current-fav-10",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.078431, 0.321569, 0.9 ],
					"accentcolor" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.0, 0.0, 0.0, 1.0 ],
						"color2" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "current-fav-10-1",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.078431, 0.321569, 0.9 ],
					"accentcolor" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
					"elementcolor" : [ 0.462745, 0.470588, 0.490196, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.0, 0.0, 0.0, 1.0 ],
						"color2" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "current-fav-11",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.078431, 0.321569, 0.9 ],
					"accentcolor" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
					"elementcolor" : [ 0.462745, 0.470588, 0.490196, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.0, 0.0, 0.0, 1.0 ],
						"color2" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "current-fav-12",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.078431, 0.321569, 0.9 ],
					"accentcolor" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
					"elementcolor" : [ 0.462745, 0.470588, 0.490196, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.0, 0.0, 0.0, 1.0 ],
						"color2" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "current-fav-13",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.078431, 0.321569, 0.9 ],
					"accentcolor" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.0, 0.0, 0.0, 1.0 ],
						"color2" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "current-fav-13-1",
				"default" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.0, 0.0, 0.0, 1.0 ],
						"color2" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"parentstyle" : "velvet-biggs",
				"multi" : 0
			}
, 			{
				"name" : "current-fav-13-2",
				"default" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.0, 0.0, 0.0, 1.0 ],
						"color2" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"parentstyle" : "velvet-biggs",
				"multi" : 0
			}
, 			{
				"name" : "current-fav-14",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.078431, 0.321569, 0.9 ],
					"accentcolor" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.0, 0.0, 0.0, 1.0 ],
						"color2" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"parentstyle" : "velvet-biggs",
				"multi" : 0
			}
, 			{
				"name" : "current-fav-2",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.078431, 0.321569, 0.9 ],
					"accentcolor" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
					"elementcolor" : [ 0.462745, 0.470588, 0.490196, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.0, 0.0, 0.0, 1.0 ],
						"color2" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "current-fav-3",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.078431, 0.321569, 0.9 ],
					"accentcolor" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.1808, 0.155081, 0.219066, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.0, 0.0, 0.0, 1.0 ],
						"color2" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "current-fav-3-1",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.078431, 0.321569, 0.9 ],
					"clearcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"accentcolor" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.0, 0.0, 0.0, 1.0 ],
						"color2" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "current-fav-3-2",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.078431, 0.321569, 0.9 ],
					"clearcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"accentcolor" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.0, 0.0, 0.0, 1.0 ],
						"color2" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "current-fav-3-3",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.078431, 0.321569, 0.9 ],
					"clearcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"accentcolor" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.0, 0.0, 0.0, 1.0 ],
						"color2" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "current-fav-4",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.078431, 0.321569, 0.9 ],
					"clearcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"accentcolor" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.0, 0.0, 0.0, 1.0 ],
						"color2" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "current-fav-5",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.078431, 0.321569, 0.9 ],
					"accentcolor" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.1808, 0.155081, 0.219066, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.0, 0.0, 0.0, 1.0 ],
						"color2" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "current-fav-6",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.078431, 0.321569, 0.9 ],
					"accentcolor" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.1808, 0.155081, 0.219066, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.0, 0.0, 0.0, 1.0 ],
						"color2" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "current-fav-7",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.078431, 0.321569, 0.9 ],
					"clearcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"accentcolor" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.0, 0.0, 0.0, 1.0 ],
						"color2" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "current-fav-8",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.078431, 0.321569, 0.9 ],
					"clearcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"accentcolor" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.0, 0.0, 0.0, 1.0 ],
						"color2" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "current-fav-9",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.078431, 0.321569, 0.9 ],
					"clearcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"accentcolor" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.0, 0.0, 0.0, 1.0 ],
						"color2" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"elementcolor" : [ 1.0, 0.891482, 0.0, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "current-fav-9-1",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.078431, 0.321569, 0.9 ],
					"accentcolor" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
					"elementcolor" : [ 0.462745, 0.470588, 0.490196, 1.0 ],
					"color" : [ 0.909804, 0.879863, 0.095888, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.0, 0.0, 0.0, 1.0 ],
						"color2" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjBlue-1",
				"default" : 				{
					"accentcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjBrown-1",
				"default" : 				{
					"accentcolor" : [ 0.654902, 0.572549, 0.376471, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjCyan-1",
				"default" : 				{
					"accentcolor" : [ 0.029546, 0.773327, 0.821113, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjGreen-1",
				"default" : 				{
					"accentcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjMagenta-1",
				"default" : 				{
					"accentcolor" : [ 0.840663, 0.060168, 0.769195, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjYellow-1",
				"default" : 				{
					"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ],
					"fontsize" : [ 12.059008 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "now",
				"default" : 				{
					"textcolor" : [ 0.984081, 1.0, 0.983788, 1.0 ],
					"clearcolor" : [ 0.254376, 0.323808, 0.48276, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "numberGold-1",
				"default" : 				{
					"accentcolor" : [ 0.764706, 0.592157, 0.101961, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "velvet-biggs",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.078431, 0.321569, 0.9 ],
					"clearcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"accentcolor" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
					"elementcolor" : [ 0.249487, 0.001377, 0.286462, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"selectioncolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "velvet-biggs-1",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"clearcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "velvet-biggs-1-1",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.078431, 0.321569, 0.9 ],
					"clearcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"accentcolor" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
					"elementcolor" : [ 0.249487, 0.001377, 0.286462, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"selectioncolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "velvet-biggs-1-1-1",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"clearcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "velvet-biggs-1-1-2",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"clearcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "velvet-biggs-1-2",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"clearcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "velvet-biggs-1-3",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"clearcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "velvet-biggs-1-4",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"clearcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "velvet-biggs-1-5",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"clearcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "velvet-biggs-1-6",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.078431, 0.321569, 0.9 ],
					"clearcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"accentcolor" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
					"elementcolor" : [ 0.249487, 0.001377, 0.286462, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"selectioncolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "velvet-biggs-2",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"clearcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "velvet-biggs-2-1",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.078431, 0.321569, 0.9 ],
					"clearcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"accentcolor" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
					"elementcolor" : [ 0.249487, 0.001377, 0.286462, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"selectioncolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "velvet-biggs-3",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.078431, 0.321569, 0.9 ],
					"clearcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"accentcolor" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
					"elementcolor" : [ 0.249487, 0.001377, 0.286462, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"selectioncolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "velvet-biggs-4",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.078431, 0.321569, 0.9 ],
					"clearcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"accentcolor" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
					"elementcolor" : [ 0.249487, 0.001377, 0.286462, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"selectioncolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "velvet-biggs-5",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.078431, 0.321569, 0.9 ],
					"clearcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"accentcolor" : [ 0.231373, 0.121569, 0.305882, 1.0 ],
					"elementcolor" : [ 0.249487, 0.001377, 0.286462, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"selectioncolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "velvet-biggs-6",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"clearcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "velvet-biggs-7",
				"default" : 				{
					"fontname" : [ "Avenir Next Regular" ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"clearcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
 ]
	}

}
