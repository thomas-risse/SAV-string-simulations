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
		"rect" : [ -101.0, -927.0, 1444.0, 848.0 ],
		"openinpresentation" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 530.829195737838745, 271.413788557052612, 58.0, 22.0 ],
					"text" : "loadbang"
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
					"presentation_rect" : [ 349.310338497161865, 574.712634086608887, 77.0, 20.0 ],
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
					"presentation_rect" : [ 428.310338497161865, 574.712634086608887, 100.0, 22.0 ],
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
					"id" : "obj-110",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 221.0, 259.0, 66.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 248.471224308013916, 118.705040216445923, 78.0, 20.0 ],
					"text" : "Frequency",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-109",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 273.0, 310.0, 66.0, 20.0 ],
					"text" : "On/Off",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-108",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 268.0, 235.0, 66.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 247.471224308013916, 65.0, 80.0, 20.0 ],
					"text" : "Sawtooth",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 216.0, 338.0, 37.0, 22.0 ],
					"text" : "saw~"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-38",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 216.0, 309.0, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 261.971224308013916, 157.25, 51.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"floatoutput" : 1,
					"id" : "obj-106",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 221.0, 283.0, 123.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 235.971224308013916, 140.5, 103.0, 13.0 ],
					"size" : 1000.0,
					"varname" : "Saw frequency"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-107",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 216.0, 369.0, 29.5, 22.0 ],
					"text" : "*~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 273.0, 333.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 275.471224308013916, 83.61151385307312, 24.0, 24.0 ],
					"svg" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-105",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 216.0, 66.0, 101.535969614982605, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 379.310335576534271, 65.0, 198.000005841255188, 20.0 ],
					"text" : "Audio Input",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"basictuning" : 440,
					"clipheight" : 45.0,
					"data" : 					{
						"clips" : [ 							{
								"absolutepath" : "/Users/risse/work/these/nonlinear_string/SAV-string-simulations/src/maxmsp/package/media/woodbox.wav",
								"filename" : "woodbox.wav",
								"filekind" : "audiofile",
								"id" : "u914010157",
								"selection" : [ 0.5, 0.638888888888889 ],
								"loop" : 1,
								"content_state" : 								{
									"loop" : 1
								}

							}
, 							{
								"absolutepath" : "/Users/risse/work/these/nonlinear_string/SAV-string-simulations/src/maxmsp/package/media/parrots.mp3",
								"filename" : "parrots.mp3",
								"filekind" : "audiofile",
								"id" : "u704010149",
								"selection" : [ 0.597222222222222, 0.298611111111111 ],
								"loop" : 1,
								"content_state" : 								{
									"loop" : 1
								}

							}
 ]
					}
,
					"followglobaltempo" : 0,
					"formantcorrection" : 0,
					"id" : "obj-48",
					"maxclass" : "playlist~",
					"mode" : "basic",
					"numinlets" : 1,
					"numoutlets" : 5,
					"originallength" : [ 0.0, "ticks" ],
					"originaltempo" : 120.0,
					"outlettype" : [ "signal", "signal", "signal", "", "dictionary" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 216.0, 91.0, 150.0, 92.0 ],
					"pitchcorrection" : 0,
					"presentation" : 1,
					"presentation_rect" : [ 379.310338497161865, 85.057469844818115, 198.0, 93.294959783554077 ],
					"quality" : "basic",
					"saved_attribute_attributes" : 					{
						"candicane2" : 						{
							"expression" : ""
						}
,
						"candicane3" : 						{
							"expression" : ""
						}
,
						"candicane4" : 						{
							"expression" : ""
						}
,
						"candicane5" : 						{
							"expression" : ""
						}
,
						"candicane6" : 						{
							"expression" : ""
						}
,
						"candicane7" : 						{
							"expression" : ""
						}
,
						"candicane8" : 						{
							"expression" : ""
						}

					}
,
					"timestretch" : [ 0 ]
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
					"presentation_rect" : [ 10.0, 569.12642765045166, 571.609185695648193, 5.0 ]
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
					"id" : "obj-16",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 40.0, 349.0, 72.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.071942806243896, 181.294970512390137, 197.941178351640701, 20.0 ],
					"text" : "Input Gain",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 11.0, 433.0, 48.05035924911499, 22.0 ],
					"text" : "*~"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-5",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 40.0, 399.0, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 151.079142093658447, 205.7554030418396, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"floatoutput" : 1,
					"id" : "obj-3",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 40.0, 376.0, 133.89928150177002, 19.424461126327515 ],
					"presentation" : 1,
					"presentation_rect" : [ 13.669065237045288, 205.7554030418396, 130.980394303798676, 21.960784673690796 ],
					"size" : 5.0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"local" : 1,
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 11.0, 636.0, 48.25, 48.25 ],
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
					"id" : "obj-23",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 80.0, 240.0, 84.679853439331055, 20.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 40.31654691696167, 134.14285714285711, 54.0, 33.0 ],
					"text" : "Impulse width"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 52.0, 231.0, 27.0, 37.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.31654691696167, 132.14285714285711, 27.0, 37.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0.1 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "Impulse Width",
							"parameter_mmax" : 10.0,
							"parameter_mmin" : 0.1,
							"parameter_modmode" : 3,
							"parameter_osc_name" : "<default>",
							"parameter_shortname" : "Imp. Width",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"showname" : 0,
					"varname" : "Impulse Width"
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
					"id" : "obj-30",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 118.0, 277.0, 74.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 129.31654691696167, 140.14285714285711, 75.0, 20.0 ],
					"text" : "Pluck/struck"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 93.0, 275.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 105.81654691696167, 138.14285714285711, 24.0, 24.0 ],
					"svg" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 0,
							"revision" : 1,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 202.0, 136.0, 1133.0, 770.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 418.0, 374.0, 32.0, 22.0 ],
									"text" : "0.75"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 418.240000000000009, 342.879999999999995, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 660.0, 233.0, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 583.0, 274.0, 29.5, 22.0 ],
									"text" : "+ 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 625.0, 274.0, 29.5, 22.0 ],
									"text" : "f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 518.0, 274.0, 29.5, 22.0 ],
									"text" : "f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 515.75, 374.0, 42.0, 22.0 ],
									"text" : "switch"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-11",
									"index" : 3,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 625.0, 193.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 564.5, 233.0, 29.5, 22.0 ],
									"text" : "/ 2."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 625.0, 317.0, 115.0, 22.0 ],
									"text" : "0.75, 1.25 $1 0.75 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 518.0, 317.0, 99.0, 22.0 ],
									"text" : "0.75, 1 $1 0.75 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "bang" ],
									"patching_rect" : [ 515.75, 419.0, 34.0, 22.0 ],
									"text" : "line~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 515.75, 459.0, 53.0, 22.0 ],
									"text" : "cycle~ 0"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-5",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 564.5, 193.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-2",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 515.75, 515.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-1",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 518.0, 193.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"order" : 1,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"order" : 0,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 1 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 1 ],
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 1 ],
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"order" : 1,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 1 ],
									"order" : 0,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"midpoints" : [ 525.25, 483.0, 525.25, 483.0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"midpoints" : [ 522.06640625, 417.04296875 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 2 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ],
						"originid" : "pat-66"
					}
,
					"patching_rect" : [ 11.0, 309.0, 101.05035924911499, 22.0 ],
					"saved_object_attributes" : 					{
						"globalpatchername" : ""
					}
,
					"text" : "p pluck"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 72.0, 117.0, 47.629494190216064, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 157.553962469100952, 85.61151385307312, 48.0, 20.0 ],
					"text" : "Period"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 67.01978462934494, 41.0, 101.535969614982605, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 211.999997079372406, 35.0, 198.000005841255188, 20.0 ],
					"text" : "Excitation Type",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 16.0, 66.0, 89.92806077003479, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 65.467628240585327, 58.992807865142822, 142.532377660274506, 20.0 ],
					"text" : "Impulse train",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 135.0, 66.0, 66.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 15.637890040874481, 58.992807865142822, 50.66666853427887, 20.0 ],
					"text" : "Single",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "number",
					"minimum" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 61.0, 96.0, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 105.755399465560913, 84.172664880752563, 50.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 1000 ],
							"parameter_initial_enable" : 1,
							"parameter_invisible" : 1,
							"parameter_longname" : "number",
							"parameter_modmode" : 0,
							"parameter_osc_name" : "<default>",
							"parameter_shortname" : "number",
							"parameter_type" : 3
						}

					}
,
					"varname" : "number"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 11.0, 95.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 74.100722074508667, 83.453240394592285, 24.0, 24.0 ],
					"svg" : "",
					"varname" : "toggle"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 11.0, 145.0, 69.0, 22.0 ],
					"text" : "metro 1000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 156.0, 95.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 23.021583557128906, 83.453240394592285, 24.0, 24.0 ],
					"varname" : "button"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 3,
					"outlettype" : [ "signal", "signal", "signal" ],
					"patching_rect" : [ 11.0, 524.0, 109.0, 22.0 ],
					"text" : "1dSAV.CubicString"
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
					"patching_rect" : [ 408.04597020149231, 295.402293920516968, 24.0, 24.0 ],
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
					"presentation_rect" : [ 9.0, 547.0, 573.0, 81.0 ],
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
					"destination" : [ "obj-36", 1 ],
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 395.706890106201172, 126.0, 381.0, 126.0, 381.0, 312.0, 405.0, 312.0, 405.0, 321.0, 444.0, 321.0, 444.0, 312.0, 600.0, 312.0, 600.0, 510.0, 20.5, 510.0 ],
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
					"destination" : [ "obj-38", 0 ],
					"midpoints" : [ 230.5, 303.0, 225.5, 303.0 ],
					"source" : [ "obj-106", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"midpoints" : [ 225.5, 432.0, 60.0, 432.0, 60.0, 429.0, 20.5, 429.0 ],
					"source" : [ "obj-107", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 395.706890106201172, 96.0, 381.0, 96.0, 381.0, 312.0, 405.0, 312.0, 405.0, 321.0, 444.0, 321.0, 444.0, 312.0, 600.0, 312.0, 600.0, 510.0, 20.5, 510.0 ],
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
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 20.5, 456.0, 20.5, 456.0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"midpoints" : [ 165.5, 216.0, 20.5, 216.0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 2 ],
					"midpoints" : [ 102.5, 300.0, 102.55035924911499, 300.0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 395.706890106201172, 153.0, 381.0, 153.0, 381.0, 312.0, 405.0, 312.0, 405.0, 321.0, 444.0, 321.0, 444.0, 312.0, 600.0, 312.0, 600.0, 510.0, 20.5, 510.0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 395.706890106201172, 321.0, 444.0, 321.0, 444.0, 312.0, 600.0, 312.0, 600.0, 510.0, 20.5, 510.0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 395.706890106201172, 243.0, 381.0, 243.0, 381.0, 312.0, 405.0, 312.0, 405.0, 321.0, 444.0, 321.0, 444.0, 312.0, 600.0, 312.0, 600.0, 510.0, 20.5, 510.0 ],
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
					"destination" : [ "obj-6", 1 ],
					"midpoints" : [ 61.5, 270.0, 61.525179624557495, 270.0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"midpoints" : [ 20.5, 168.0, 20.5, 168.0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-107", 1 ],
					"midpoints" : [ 282.5, 369.0, 246.0, 369.0, 246.0, 366.0, 236.0, 366.0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"midpoints" : [ 20.5, 120.0, 20.5, 120.0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 395.706890106201172, 213.0, 381.0, 213.0, 381.0, 312.0, 405.0, 312.0, 405.0, 321.0, 444.0, 321.0, 444.0, 312.0, 600.0, 312.0, 600.0, 510.0, 20.5, 510.0 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 1 ],
					"midpoints" : [ 70.5, 120.0, 70.5, 120.0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"midpoints" : [ 540.329195737838745, 312.0, 432.0, 312.0, 432.0, 321.0, 405.0, 321.0, 405.0, 291.0, 417.54597020149231, 291.0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 49.5, 396.0, 49.5, 396.0 ],
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
					"destination" : [ "obj-37", 1 ],
					"midpoints" : [ 49.75, 624.0, 49.75, 624.0 ],
					"source" : [ "obj-36", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"midpoints" : [ 20.5, 624.0, 20.5, 624.0 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"midpoints" : [ 225.5, 333.0, 225.5, 333.0 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-107", 0 ],
					"midpoints" : [ 225.5, 363.0, 225.5, 363.0 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 1 ],
					"midpoints" : [ 395.37517261505127, 510.0, 43.0, 510.0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"midpoints" : [ 225.5, 216.0, 6.0, 216.0, 6.0, 420.0, 20.5, 420.0 ],
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 1 ],
					"midpoints" : [ 49.5, 423.0, 49.55035924911499, 423.0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"midpoints" : [ 20.5, 333.0, 20.5, 333.0 ],
					"source" : [ "obj-6", 0 ]
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
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 417.54597020149231, 321.0, 444.0, 321.0, 444.0, 312.0, 600.0, 312.0, 600.0, 510.0, 20.5, 510.0 ],
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
					"destination" : [ "obj-1", 2 ],
					"midpoints" : [ 643.982748031616211, 213.0, 624.0, 213.0, 624.0, 333.0, 600.0, 333.0, 600.0, 510.0, 65.5, 510.0 ],
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
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 395.706890106201172, 66.0, 381.0, 66.0, 381.0, 312.0, 405.0, 312.0, 405.0, 321.0, 444.0, 321.0, 444.0, 312.0, 600.0, 312.0, 600.0, 510.0, 20.5, 510.0 ],
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
					"destination" : [ "obj-1", 3 ],
					"midpoints" : [ 643.982748031616211, 384.0, 600.0, 384.0, 600.0, 510.0, 88.0, 510.0 ],
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
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 395.706890106201172, 183.0, 381.0, 183.0, 381.0, 312.0, 405.0, 312.0, 405.0, 321.0, 444.0, 321.0, 444.0, 312.0, 600.0, 312.0, 600.0, 510.0, 20.5, 510.0 ],
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
					"destination" : [ "obj-1", 4 ],
					"midpoints" : [ 643.982748031616211, 555.0, 309.0, 555.0, 309.0, 519.0, 110.5, 519.0 ],
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
		"originid" : "pat-64",
		"parameters" : 		{
			"obj-101" : [ "Base right listening", "speed", 0 ],
			"obj-21" : [ "Impulse Width", "Imp. Width", 0 ],
			"obj-28" : [ "number", "number", 0 ],
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
				"name" : "1dSAV.CubicString.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "parrots.mp3",
				"bootpath" : "~/work/these/nonlinear_string/SAV-string-simulations/src/maxmsp/package/media",
				"patcherrelativepath" : "../media",
				"type" : "Mp3",
				"implicit" : 1
			}
, 			{
				"name" : "woodbox.wav",
				"bootpath" : "~/work/these/nonlinear_string/SAV-string-simulations/src/maxmsp/package/media",
				"patcherrelativepath" : "../media",
				"type" : "WAVE",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
