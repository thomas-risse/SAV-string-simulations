{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 9,
			"minor" : 0,
			"revision" : 1,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ -537.0, -987.0, 2492.0, 953.0 ],
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-48",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 39.0, 653.0, 34.0, 22.0 ],
					"text" : "limi~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-47",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 11.0, 638.0, 34.0, 22.0 ],
					"text" : "limi~"
				}

			}
, 			{
				"box" : 				{
					"automatic" : 1,
					"id" : "obj-21",
					"maxclass" : "scope~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 1075.0, 426.0, 323.0, 157.0 ]
				}

			}
, 			{
				"box" : 				{
					"automatic" : 1,
					"id" : "obj-16",
					"maxclass" : "scope~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 1069.0, 621.0, 323.0, 233.0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "bow caracteristic parameter",
					"id" : "obj-14",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 168.0, 425.89079761505127, 179.87517261505127, 22.0 ],
					"text_width" : 111.0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 490.0, 727.0, 150.0, 20.0 ],
					"text" : "L"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 490.0, 709.0, 150.0, 20.0 ],
					"text" : "T"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 490.0, 695.0, 150.0, 20.0 ],
					"text" : "A"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 490.0, 682.0, 150.0, 20.0 ],
					"text" : "R"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 490.0, 670.0, 150.0, 20.0 ],
					"text" : "I"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 490.0, 656.0, 150.0, 20.0 ],
					"text" : "E"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 490.0, 643.0, 150.0, 20.0 ],
					"text" : "mu"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 490.0, 631.0, 150.0, 20.0 ],
					"text" : "rho"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 490.0, 617.0, 150.0, 20.0 ],
					"text" : "eta1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 490.0, 604.0, 150.0, 20.0 ],
					"text" : "eta0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"linecount" : 10,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 385.87517261505127, 604.0, 99.0, 143.0 ],
					"text" : "\"0.575646 0.000670767 8000 0.00211366 2e+11 5.55497e-15 0.00029 2.64208e-07 385.116 0.533593\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 120.0, 318.0, 34.0, 22.0 ],
					"text" : "phys"
				}

			}
, 			{
				"box" : 				{
					"attr" : "nonlinear mode",
					"id" : "obj-13",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 328.0, 523.0, 257.0, 22.0 ],
					"text_width" : 148.0
				}

			}
, 			{
				"box" : 				{
					"domain" : [ 0.0, 5000.0 ],
					"id" : "obj-1",
					"maxclass" : "spectroscope~",
					"monochrome" : 0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 562.178148508071899, 601.0, 412.0, 381.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 631.0, 656.0, 300.0, 100.0 ],
					"scroll" : 3,
					"sono" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 4,
					"outlettype" : [ "signal", "signal", "signal", "message" ],
					"patching_rect" : [ 13.0, 481.752865314483643, 146.0, 22.0 ],
					"text" : "1dSAV.CubicStringBowed"
				}

			}
, 			{
				"box" : 				{
					"automatic" : 1,
					"bufsize" : 54,
					"calccount" : 1024,
					"id" : "obj-6",
					"maxclass" : "scope~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 28.0, 749.0, 501.0, 198.0 ],
					"range" : [ -0.001, 0.001 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-5",
					"maxclass" : "number~",
					"mode" : 1,
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "float" ],
					"patching_rect" : [ 79.5, 240.0, 142.0, 22.0 ],
					"sig" : 0.24
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-3",
					"maxclass" : "number~",
					"mode" : 1,
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "float" ],
					"patching_rect" : [ 13.0, 160.919537544250488, 226.0, 22.0 ],
					"sig" : 0.22
				}

			}
, 			{
				"box" : 				{
					"border" : 2.0,
					"id" : "obj-119",
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 153.0, 580.0, 5.0, 100.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 373.0, 59.0, 5.0, 121.285714285714278 ]
				}

			}
, 			{
				"box" : 				{
					"border" : 2.0,
					"id" : "obj-118",
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 153.0, 580.0, 5.0, 100.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 203.071948647499084, 120.0, 5.0, 60.285714285714278 ]
				}

			}
, 			{
				"box" : 				{
					"border" : 2.0,
					"id" : "obj-117",
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 153.0, 580.0, 5.0, 100.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 203.071948647499084, 58.992807865142822, 5.0, 54.531299397349358 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-116",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 191.954019784927368, 570.114933013916016, 74.045980215072632, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 64.367815017700195, 635.632173299789429, 77.0, 20.0 ],
					"text" : "Samplerate"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Samplerate",
					"id" : "obj-111",
					"items" : [ 44100, ",", 48000, ",", 88200, ",", 96000 ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 185.0, 641.0, 100.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 143.678158521652222, 635.632173299789429, 100.0, 22.0 ],
					"varname" : "umenu"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-112",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 185.0, 601.0, 67.0, 22.0 ],
					"text" : "adstatus sr"
				}

			}
, 			{
				"box" : 				{
					"border" : 2.0,
					"id" : "obj-104",
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 153.0, 580.0, 5.0, 100.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 9.23381707072258, 391.574710130691528, 285.0, 10.5 ]
				}

			}
, 			{
				"box" : 				{
					"border" : 2.0,
					"id" : "obj-103",
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 153.0, 580.0, 5.0, 100.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 8.084391802549362, 327.206895112991333, 285.0, 10.5 ]
				}

			}
, 			{
				"box" : 				{
					"border" : 3.0,
					"id" : "obj-102",
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 153.0, 580.0, 5.0, 100.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 9.23381707072258, 257.091953754425049, 265.0, 9.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-91",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 634.482748031616211, 399.454016447067261, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 9.23381707072258, 393.873560667037964, 130.0, 20.0 ],
					"text" : "Right listening position"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-92",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 634.482748031616211, 501.752865314483643, 29.5, 22.0 ],
					"text" : "+~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-93",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 712.64366626739502, 501.752865314483643, 34.0, 22.0 ],
					"text" : "*~ 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-94",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 712.64366626739502, 473.017233610153198, 43.0, 22.0 ],
					"text" : "cycle~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-95",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 634.482748031616211, 531.637922286987305, 60.0, 22.0 ],
					"text" : "clip~ 0. 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-96",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 832.183894157409668, 429.339073419570923, 69.0, 33.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 220.72806641459465, 418.011491298675537, 69.0, 33.0 ],
					"text" : "LF0\nAmplitude"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-97",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 799.99998664855957, 427.040222883224487, 27.0, 37.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 193.141859978437424, 416.862066030502319, 27.0, 37.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0.0 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "Right LFO amplitude",
							"parameter_mmax" : 1.0,
							"parameter_modmode" : 3,
							"parameter_osc_name" : "<default>",
							"parameter_shortname" : "speed",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"showname" : 0,
					"varname" : "Right LFO amplitude"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-98",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 743.678148508071899, 429.339073419570923, 49.0, 33.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 134.521171301603317, 418.011491298675537, 49.0, 33.0 ],
					"text" : "LFO\nSpeed"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-99",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 712.64366626739502, 427.040222883224487, 27.0, 37.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 102.33726379275322, 416.862066030502319, 27.0, 37.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0.1 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "Right LF0 speed",
							"parameter_mmax" : 10.0,
							"parameter_modmode" : 3,
							"parameter_osc_name" : "<default>",
							"parameter_shortname" : "speed",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"showname" : 0,
					"varname" : "Right LF0 speed"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-100",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 666.666655540466309, 435.086199760437012, 37.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 49.463701456785202, 424.908042907714844, 37.0, 20.0 ],
					"text" : "Base"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-101",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 634.482748031616211, 425.89079761505127, 27.0, 37.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 13.831518143415451, 416.862066030502319, 27.0, 37.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0.3 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "Base right listening",
							"parameter_mmax" : 1.0,
							"parameter_modmode" : 3,
							"parameter_osc_name" : "<default>",
							"parameter_shortname" : "speed",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"showname" : 0,
					"varname" : "Base right listening"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-90",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 634.482748031616211, 229.33907675743103, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 9.23381707072258, 328.356320381164551, 130.0, 20.0 ],
					"text" : "Left listening position"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-80",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 634.482748031616211, 332.78735089302063, 29.5, 22.0 ],
					"text" : "+~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-81",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 712.64366626739502, 332.78735089302063, 34.0, 22.0 ],
					"text" : "*~ 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-82",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 712.64366626739502, 302.902293920516968, 43.0, 22.0 ],
					"text" : "cycle~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-83",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 634.482748031616211, 361.522982597351074, 60.0, 22.0 ],
					"text" : "clip~ 0. 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-84",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 832.183894157409668, 259.224133729934692, 69.0, 33.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 220.72806641459465, 355.942526817321777, 69.0, 33.0 ],
					"text" : "LF0\nAmplitude"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-85",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 799.99998664855957, 256.925283193588257, 27.0, 37.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 193.141859978437424, 353.643676280975342, 27.0, 37.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0.0 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "Left LF0 amplitude",
							"parameter_mmax" : 1.0,
							"parameter_modmode" : 3,
							"parameter_osc_name" : "<default>",
							"parameter_shortname" : "speed",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"showname" : 0,
					"varname" : "Left LF0 amplitude"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-86",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 743.678148508071899, 259.224133729934692, 49.0, 33.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 134.521171301603317, 355.942526817321777, 49.0, 33.0 ],
					"text" : "LFO\nSpeed"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-87",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 712.64366626739502, 256.925283193588257, 27.0, 37.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 102.33726379275322, 353.643676280975342, 27.0, 37.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0.1 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "Left LF0 speed",
							"parameter_mmax" : 10.0,
							"parameter_modmode" : 3,
							"parameter_osc_name" : "<default>",
							"parameter_shortname" : "speed",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"showname" : 0,
					"varname" : "Left LF0 speed"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-88",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 666.666655540466309, 264.971260070800781, 37.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 49.463701456785202, 362.839078426361084, 37.0, 20.0 ],
					"text" : "Base"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-89",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 634.482748031616211, 255.775857925415039, 27.0, 37.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 13.831518143415451, 353.643676280975342, 27.0, 37.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0.3 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "Base left listening",
							"parameter_mmax" : 1.0,
							"parameter_modmode" : 3,
							"parameter_osc_name" : "<default>",
							"parameter_shortname" : "speed",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"showname" : 0,
					"varname" : "Base left listening"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-79",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 634.482748031616211, 159.224135398864746, 29.5, 22.0 ],
					"text" : "+~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-78",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 712.64366626739502, 159.224135398864746, 34.0, 22.0 ],
					"text" : "*~ 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-77",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 712.64366626739502, 130.488503694534302, 43.0, 22.0 ],
					"text" : "cycle~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-73",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 634.482748031616211, 189.109192371368408, 60.0, 22.0 ],
					"text" : "clip~ 0. 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-70",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 832.183894157409668, 86.810343503952026, 69.0, 33.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 220.72806641459465, 289.275861263275146, 69.0, 33.0 ],
					"text" : "LF0\nAmplitude"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-71",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 799.99998664855957, 85.660918235778809, 27.0, 37.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 193.141859978437424, 286.977010726928711, 27.0, 37.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0.0 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "Excitation LF0 amplitude",
							"parameter_mmax" : 1.0,
							"parameter_modmode" : 3,
							"parameter_osc_name" : "<default>",
							"parameter_shortname" : "speed",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"showname" : 0,
					"varname" : "Excitation LF0 amplitude"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-68",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 743.678148508071899, 86.810343503952026, 49.0, 33.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 134.521171301603317, 289.275861263275146, 49.0, 33.0 ],
					"text" : "LFO\nSpeed"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-69",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 712.64366626739502, 84.511492967605591, 27.0, 37.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 102.33726379275322, 286.977010726928711, 27.0, 37.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0.1 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "Excitation LF0 speed",
							"parameter_mmax" : 10.0,
							"parameter_modmode" : 3,
							"parameter_osc_name" : "<default>",
							"parameter_shortname" : "speed",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"showname" : 0,
					"varname" : "Excitation LF0 speed"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-67",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 666.666655540466309, 92.557469844818115, 37.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 49.463701456785202, 293.873562335968018, 37.0, 20.0 ],
					"text" : "Base"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-63",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 634.482748031616211, 84.511492967605591, 27.0, 37.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 13.831518143415451, 286.977010726928711, 27.0, 37.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0.3 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "Base excitation position",
							"parameter_mmax" : 1.0,
							"parameter_modmode" : 3,
							"parameter_osc_name" : "<default>",
							"parameter_shortname" : "speed",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"showname" : 0,
					"varname" : "Base excitation position"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-60",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 634.482748031616211, 51.178160190582275, 84.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 9.23381707072258, 263.988505363464355, 84.0, 20.0 ],
					"text" : "Excitation"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-45",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 634.482748031616211, 12.097701072692871, 192.0, 33.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 9.23381707072258, 241.0, 255.0, 20.0 ],
					"text" : "EXCITATION AND LISTENING POSITIONS"
				}

			}
, 			{
				"box" : 				{
					"attr" : "stability condition setting",
					"id" : "obj-19",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 386.206890106201172, 248.275857925415039, 230.215835571289062, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 299.999994993209839, 438.701146125793457, 264.367811679840088, 22.0 ],
					"text_width" : 155.5
				}

			}
, 			{
				"box" : 				{
					"attr" : "regularisation parameter",
					"id" : "obj-2",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 386.206890106201172, 218.390800952911377, 230.215835571289062, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 299.999994993209839, 414.563215494155884, 264.367811679840088, 22.0 ],
					"text_width" : 155.5
				}

			}
, 			{
				"box" : 				{
					"border" : 3.0,
					"id" : "obj-76",
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 153.0, 580.0, 5.0, 100.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.34482741355896, 565.517231941223145, 233.093533515930176, 9.352518320083618 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-75",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 72.0, 636.0, 60.431656837463379, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.34482741355896, 547.12642765045166, 63.309354782104492, 20.0 ],
					"text" : "OUTPUT"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-66",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 481.277469873428345, 411.810336828231812, 31.0, 22.0 ],
					"text" : "sig~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-64",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 481.277469873428345, 365.833326101303101, 27.0, 37.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 164.24084946513176, 495.798842191696167, 27.0, 37.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "Vibrato Amplitude",
							"parameter_mmax" : 1000.0,
							"parameter_modmode" : 3,
							"parameter_osc_name" : "<default>",
							"parameter_shortname" : "amplitude",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"showname" : 0,
					"varname" : "Vibrato Amplitude"
				}

			}
, 			{
				"box" : 				{
					"border" : 3.0,
					"id" : "obj-62",
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 153.0, 580.0, 5.0, 100.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 9.195402145385742, 485.218383073806763, 284.038414925336838, 5.586206436157227 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-61",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 414.610804319381714, 375.028728246688843, 47.482016086578369, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 74.100722074508667, 504.298842191696167, 46.017207384109497, 20.0 ],
					"text" : "Speed"
				}

			}
, 			{
				"box" : 				{
					"border" : 2.0,
					"id" : "obj-58",
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 153.0, 580.0, 5.0, 100.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 15.0, 115.5, 360.0, 9.5 ]
				}

			}
, 			{
				"box" : 				{
					"border" : 3.0,
					"id" : "obj-57",
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 153.0, 580.0, 5.0, 100.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 298.298850536346436, 258.241379022598267, 231.580444097518921, 9.028734922409058 ]
				}

			}
, 			{
				"box" : 				{
					"border" : 2.0,
					"id" : "obj-54",
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 153.0, 580.0, 5.0, 100.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 15.0, 181.0, 566.31654691696167, 5.0 ]
				}

			}
, 			{
				"box" : 				{
					"border" : 3.0,
					"id" : "obj-53",
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 153.0, 580.0, 5.0, 100.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 29.0, 571.31654691696167, 7.0 ]
				}

			}
, 			{
				"box" : 				{
					"border" : 2.0,
					"id" : "obj-52",
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 153.0, 580.0, 5.0, 100.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 16.0, 58.992807865142822, 565.316549837589264, 6.007192134857178 ]
				}

			}
, 			{
				"box" : 				{
					"border" : 2.0,
					"id" : "obj-51",
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 153.0, 580.0, 5.0, 100.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 64.893841221928596, 58.992807865142822, 5.0, 54.531299397349358 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-46",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 11.0, 9.0, 150.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 11.0, 49.0, 20.0 ],
					"text" : "INPUT"
				}

			}
, 			{
				"box" : 				{
					"attr" : "second decay time",
					"id" : "obj-27",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 386.206890106201172, 189.655169248580933, 230.215835571289062, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 299.999994993209839, 389.275859594345093, 264.367811679840088, 22.0 ],
					"text_width" : 155.5
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 385.87517261505127, 445.143669605255127, 112.956825733184814, 22.0 ],
					"text" : "*~"
				}

			}
, 			{
				"box" : 				{
					"attr" : "first decay time",
					"id" : "obj-18",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 386.206890106201172, 129.885055303573608, 230.215835571289062, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 299.999994993209839, 342.149423599243164, 264.367811679840088, 22.0 ],
					"text_width" : 155.5
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"local" : 1,
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 11.0, 680.875, 48.25, 48.25 ],
					"presentation" : 1,
					"presentation_rect" : [ 177.011491298675537, 574.712634086608887, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"orientation" : 1,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 11.0, 576.0, 136.0, 47.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 20.68965482711792, 573.563208818435669, 136.0, 47.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_modmode" : 3,
							"parameter_osc_name" : "<default>",
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"varname" : "live.gain~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 511.162526845932007, 368.132176637649536, 66.187052726745605, 33.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 194.125906437635422, 498.097692728042603, 65.0, 33.0 ],
					"text" : "Amplitude (cents)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 385.87517261505127, 332.499993324279785, 60.431656837463379, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 9.31654691696167, 463.218383073806763, 63.309354782104492, 20.0 ],
					"text" : "VIBRATO"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 385.87517261505127, 365.833326101303101, 27.0, 37.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 41.916814565658569, 495.103440046310425, 27.0, 37.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_linknames" : 1,
							"parameter_longname" : "Vibrato Speed",
							"parameter_mmax" : 10.0,
							"parameter_mmin" : 0.1,
							"parameter_modmode" : 3,
							"parameter_osc_name" : "<default>",
							"parameter_shortname" : "speed",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"showname" : 0,
					"varname" : "Vibrato Speed"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 386.206890106201172, 11.494252681732178, 194.244611263275146, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 296.0, 241.0, 157.0, 20.0 ],
					"text" : "PHYSICAL PARAMETERS"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 408.04597020149231, 272.413788557052612, 112.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 334.0, 492.067305326461792, 119.0, 20.0 ],
					"text" : "Update parameters"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 385.87517261505127, 411.810336828231812, 53.0, 22.0 ],
					"text" : "cycle~ 1"
				}

			}
, 			{
				"box" : 				{
					"attr" : "beta",
					"id" : "obj-11",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 386.206890106201172, 71.264366626739502, 230.215835571289062, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 299.999994993209839, 293.873562335968018, 264.367811679840088, 22.0 ],
					"text_width" : 156.0
				}

			}
, 			{
				"box" : 				{
					"attr" : "first decay frequency",
					"id" : "obj-10",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 386.206890106201172, 101.149423599243164, 230.215835571289062, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 299.999994993209839, 318.011492967605591, 264.367811679840088, 22.0 ],
					"text_width" : 156.0
				}

			}
, 			{
				"box" : 				{
					"attr" : "second decay frequency",
					"fontsize" : 12.0,
					"id" : "obj-9",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 386.206890106201172, 160.919537544250488, 230.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 299.999994993209839, 366.287354230880737, 264.367811679840088, 22.0 ],
					"text_width" : 155.5
				}

			}
, 			{
				"box" : 				{
					"attr" : "fundamental frequency",
					"id" : "obj-8",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 386.206890106201172, 42.528734922409058, 230.215835571289062, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 299.999994993209839, 269.735631704330444, 264.367811679840088, 22.0 ],
					"text_width" : 156.0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 414.610804319381714, 294.413788557052612, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 307.563218832015991, 489.768454790115356, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 0.221674, 0.25681, 0.29304, 1.0 ],
					"id" : "obj-74",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4.0, 566.0, 293.0, 125.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 9.195402145385742, 547.12642765045166, 234.0, 110.0 ],
					"proportion" : 0.5
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 0.185512, 0.263736, 0.260626, 1.0 ],
					"id" : "obj-40",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4.0, 5.0, 370.0, 458.5 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 11.0, 571.31654691696167, 225.0 ],
					"proportion" : 0.5
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 0.287863, 0.333333, 0.329398, 1.0 ],
					"id" : "obj-41",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 378.160913228988647, 6.896551609039307, 246.0, 317.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 297.701144456863403, 241.379306316375732, 283.90804123878479, 299.536921262741089 ],
					"proportion" : 0.5
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 0.285714, 0.256629, 0.217237, 1.0 ],
					"id" : "obj-44",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 377.829195737838745, 325.603441715240479, 211.0, 155.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 9.195402145385742, 463.218383073806763, 284.038414925336838, 78.160918235778809 ],
					"proportion" : 0.5
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 0.231372549019608, 0.294117647058824, 0.333333333333333, 1.0 ],
					"id" : "obj-49",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 627.586196422576904, 7.5, 300.0, 559.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 9.23381707072258, 241.0, 284.0, 219.0 ],
					"proportion" : 0.5
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"midpoints" : [ 395.706890106201172, 126.0, 381.0, 126.0, 381.0, 312.0, 411.0, 312.0, 411.0, 318.0, 450.0, 318.0, 450.0, 312.0, 600.0, 312.0, 600.0, 492.0, 171.0, 492.0, 171.0, 477.0, 22.5, 477.0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-92", 0 ],
					"midpoints" : [ 643.982748031616211, 465.0, 643.982748031616211, 465.0 ],
					"source" : [ "obj-101", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"midpoints" : [ 395.706890106201172, 96.0, 381.0, 96.0, 381.0, 312.0, 411.0, 312.0, 411.0, 318.0, 450.0, 318.0, 450.0, 312.0, 600.0, 312.0, 600.0, 492.0, 171.0, 492.0, 171.0, 477.0, 22.5, 477.0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-112", 0 ],
					"midpoints" : [ 194.5, 666.0, 171.0, 666.0, 171.0, 597.0, 194.5, 597.0 ],
					"source" : [ "obj-111", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-111", 0 ],
					"midpoints" : [ 194.5, 624.0, 194.5, 624.0 ],
					"source" : [ "obj-112", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 1 ],
					"midpoints" : [ 149.5, 552.0, 315.0, 552.0, 315.0, 591.0, 475.37517261505127, 591.0 ],
					"source" : [ "obj-12", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"midpoints" : [ 107.166666666666671, 513.0, 315.0, 513.0, 315.0, 507.0, 612.0, 507.0, 612.0, 576.0, 1062.0, 576.0, 1062.0, 423.0, 1084.5, 423.0 ],
					"source" : [ "obj-12", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 1 ],
					"midpoints" : [ 64.833333333333343, 561.0, 137.5, 561.0 ],
					"source" : [ "obj-12", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"midpoints" : [ 22.5, 573.0, 20.5, 573.0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"midpoints" : [ 337.5, 546.0, 0.0, 546.0, 0.0, 477.0, 22.5, 477.0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"midpoints" : [ 177.5, 468.0, 22.5, 468.0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"midpoints" : [ 129.5, 468.0, 22.5, 468.0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"midpoints" : [ 395.706890106201172, 153.0, 381.0, 153.0, 381.0, 312.0, 411.0, 312.0, 411.0, 318.0, 450.0, 318.0, 450.0, 312.0, 600.0, 312.0, 600.0, 492.0, 171.0, 492.0, 171.0, 477.0, 22.5, 477.0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"midpoints" : [ 395.706890106201172, 312.0, 411.0, 312.0, 411.0, 318.0, 450.0, 318.0, 450.0, 312.0, 600.0, 312.0, 600.0, 492.0, 171.0, 492.0, 171.0, 477.0, 22.5, 477.0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"midpoints" : [ 395.706890106201172, 243.0, 381.0, 243.0, 381.0, 312.0, 411.0, 312.0, 411.0, 318.0, 450.0, 318.0, 450.0, 312.0, 600.0, 312.0, 600.0, 492.0, 171.0, 492.0, 171.0, 477.0, 22.5, 477.0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"midpoints" : [ 395.37517261505127, 435.0, 395.37517261505127, 435.0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"midpoints" : [ 395.706890106201172, 213.0, 381.0, 213.0, 381.0, 312.0, 411.0, 312.0, 411.0, 318.0, 450.0, 318.0, 450.0, 312.0, 600.0, 312.0, 600.0, 492.0, 171.0, 492.0, 171.0, 477.0, 22.5, 477.0 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"midpoints" : [ 22.5, 183.0, 22.5, 183.0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"midpoints" : [ 395.37517261505127, 405.0, 395.37517261505127, 405.0 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 20.5, 624.0, 6.0, 624.0, 6.0, 555.0, 571.678148508071899, 555.0 ],
					"order" : 1,
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"midpoints" : [ 20.5, 624.0, 6.0, 624.0, 6.0, 555.0, 612.0, 555.0, 612.0, 588.0, 1062.0, 588.0, 1062.0, 606.0, 1078.5, 606.0 ],
					"order" : 0,
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 0 ],
					"midpoints" : [ 20.5, 624.0, 20.5, 624.0 ],
					"order" : 3,
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"midpoints" : [ 49.75, 624.0, 48.5, 624.0 ],
					"source" : [ "obj-36", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"midpoints" : [ 20.5, 633.0, 6.0, 633.0, 6.0, 744.0, 37.5, 744.0 ],
					"order" : 2,
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 2 ],
					"midpoints" : [ 395.37517261505127, 477.0, 73.299999999999997, 477.0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"midpoints" : [ 20.5, 663.0, 20.5, 663.0 ],
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 1 ],
					"midpoints" : [ 48.5, 678.0, 49.75, 678.0 ],
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 1 ],
					"midpoints" : [ 89.0, 468.0, 47.899999999999999, 468.0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-79", 0 ],
					"midpoints" : [ 643.982748031616211, 123.0, 643.982748031616211, 123.0 ],
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-66", 0 ],
					"midpoints" : [ 490.777469873428345, 405.0, 490.777469873428345, 405.0 ],
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 1 ],
					"midpoints" : [ 490.777469873428345, 435.0, 489.331998348236084, 435.0 ],
					"source" : [ "obj-66", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 0 ],
					"midpoints" : [ 722.14366626739502, 123.0, 722.14366626739502, 123.0 ],
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"midpoints" : [ 424.110804319381714, 321.0, 450.0, 321.0, 450.0, 312.0, 600.0, 312.0, 600.0, 492.0, 171.0, 492.0, 171.0, 477.0, 22.5, 477.0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-78", 1 ],
					"midpoints" : [ 809.49998664855957, 156.0, 737.14366626739502, 156.0 ],
					"source" : [ "obj-71", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 3 ],
					"midpoints" : [ 643.982748031616211, 213.0, 624.0, 213.0, 624.0, 333.0, 600.0, 333.0, 600.0, 492.0, 171.0, 492.0, 171.0, 477.0, 98.700000000000003, 477.0 ],
					"source" : [ "obj-73", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-78", 0 ],
					"midpoints" : [ 722.14366626739502, 153.0, 722.14366626739502, 153.0 ],
					"source" : [ "obj-77", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-79", 1 ],
					"midpoints" : [ 722.14366626739502, 183.0, 699.0, 183.0, 699.0, 156.0, 654.482748031616211, 156.0 ],
					"source" : [ "obj-78", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"midpoints" : [ 643.982748031616211, 183.0, 643.982748031616211, 183.0 ],
					"source" : [ "obj-79", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"midpoints" : [ 395.706890106201172, 66.0, 381.0, 66.0, 381.0, 312.0, 411.0, 312.0, 411.0, 318.0, 450.0, 318.0, 450.0, 312.0, 600.0, 312.0, 600.0, 492.0, 171.0, 492.0, 171.0, 477.0, 22.5, 477.0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-83", 0 ],
					"midpoints" : [ 643.982748031616211, 357.0, 643.982748031616211, 357.0 ],
					"source" : [ "obj-80", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-80", 1 ],
					"midpoints" : [ 722.14366626739502, 357.0, 699.0, 357.0, 699.0, 327.0, 654.482748031616211, 327.0 ],
					"source" : [ "obj-81", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-81", 0 ],
					"midpoints" : [ 722.14366626739502, 327.0, 722.14366626739502, 327.0 ],
					"source" : [ "obj-82", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 4 ],
					"midpoints" : [ 643.982748031616211, 384.0, 600.0, 384.0, 600.0, 492.0, 171.0, 492.0, 171.0, 477.0, 124.099999999999994, 477.0 ],
					"source" : [ "obj-83", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-81", 1 ],
					"midpoints" : [ 809.49998664855957, 327.0, 737.14366626739502, 327.0 ],
					"source" : [ "obj-85", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-82", 0 ],
					"midpoints" : [ 722.14366626739502, 294.0, 722.14366626739502, 294.0 ],
					"source" : [ "obj-87", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-80", 0 ],
					"midpoints" : [ 643.982748031616211, 294.0, 643.982748031616211, 294.0 ],
					"source" : [ "obj-89", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"midpoints" : [ 395.706890106201172, 183.0, 381.0, 183.0, 381.0, 312.0, 411.0, 312.0, 411.0, 318.0, 450.0, 318.0, 450.0, 312.0, 600.0, 312.0, 600.0, 492.0, 171.0, 492.0, 171.0, 477.0, 22.5, 477.0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-95", 0 ],
					"midpoints" : [ 643.982748031616211, 525.0, 643.982748031616211, 525.0 ],
					"source" : [ "obj-92", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-92", 1 ],
					"midpoints" : [ 722.14366626739502, 525.0, 699.0, 525.0, 699.0, 498.0, 654.482748031616211, 498.0 ],
					"source" : [ "obj-93", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-93", 0 ],
					"midpoints" : [ 722.14366626739502, 498.0, 722.14366626739502, 498.0 ],
					"source" : [ "obj-94", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 5 ],
					"midpoints" : [ 643.982748031616211, 555.0, 309.0, 555.0, 309.0, 477.0, 149.5, 477.0 ],
					"source" : [ "obj-95", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-93", 1 ],
					"midpoints" : [ 809.49998664855957, 498.0, 737.14366626739502, 498.0 ],
					"source" : [ "obj-97", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 0 ],
					"midpoints" : [ 722.14366626739502, 465.0, 722.14366626739502, 465.0 ],
					"source" : [ "obj-99", 0 ]
				}

			}
 ],
		"originid" : "pat-8",
		"parameters" : 		{
			"obj-101" : [ "Base right listening", "speed", 0 ],
			"obj-33" : [ "Vibrato Speed", "speed", 0 ],
			"obj-36" : [ "live.gain~", "live.gain~", 0 ],
			"obj-63" : [ "Base excitation position", "speed", 0 ],
			"obj-64" : [ "Vibrato Amplitude", "amplitude", 0 ],
			"obj-69" : [ "Excitation LF0 speed", "speed", 0 ],
			"obj-71" : [ "Excitation LF0 amplitude", "speed", 0 ],
			"obj-85" : [ "Left LF0 amplitude", "speed", 0 ],
			"obj-87" : [ "Left LF0 speed", "speed", 0 ],
			"obj-89" : [ "Base left listening", "speed", 0 ],
			"obj-97" : [ "Right LFO amplitude", "speed", 0 ],
			"obj-99" : [ "Right LF0 speed", "speed", 0 ],
			"parameterbanks" : 			{
				"0" : 				{
					"index" : 0,
					"name" : "",
					"parameters" : [ "-", "-", "-", "-", "-", "-", "-", "-" ]
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "1dSAV.CubicStringBowed.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0
	}

}
