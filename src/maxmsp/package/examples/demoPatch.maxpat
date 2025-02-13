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
		"rect" : [ -220.0, -993.0, 1119.0, 848.0 ],
		"gridsize" : [ 15.0, 15.0 ],
		"showontab" : 1,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
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
						"rect" : [ 0.0, 26.0, 1119.0, 822.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"showontab" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-71",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 1462.0, 109.0, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-70",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 500.240000000000009, 262.0, 40.0, 22.0 ],
									"text" : "* 400."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-56",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 500.240000000000009, 230.0, 33.0, 22.0 ],
									"text" : "- 0.5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 571.0, 223.0, 39.0, 22.0 ],
									"text" : "/ 127."
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-57",
									"maxclass" : "flonum",
									"maximum" : 127.0,
									"minimum" : 0.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 571.0, 189.0, 50.0, 22.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "number[1]",
											"parameter_modmode" : 3,
											"parameter_osc_name" : "<default>",
											"parameter_shortname" : "number[1]",
											"parameter_type" : 0
										}

									}
,
									"varname" : "number[1]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-50",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 441.740000000000009, 287.089999999999918, 36.0, 22.0 ],
									"text" : "+~ 0."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 640.0, 262.0, 31.0, 22.0 ],
									"text" : "sig~"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-9",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 640.0, 225.0, 50.0, 22.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_invisible" : 1,
											"parameter_longname" : "number[2]",
											"parameter_modmode" : 0,
											"parameter_osc_name" : "<default>",
											"parameter_shortname" : "number[2]",
											"parameter_type" : 3
										}

									}
,
									"varname" : "number[2]"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-62",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1073.0, 243.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-63",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 983.0, 281.0, 43.0, 22.0 ],
									"text" : "+~ 0.3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-65",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1073.0, 177.0, 150.0, 20.0 ],
									"presentation" : 1,
									"presentation_linecount" : 3,
									"presentation_rect" : [ 391.0, 188.0, 59.0, 47.0 ],
									"text" : "Vibrato amplitude"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-66",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 978.0, 76.0, 150.0, 20.0 ],
									"presentation" : 1,
									"presentation_linecount" : 2,
									"presentation_rect" : [ 376.0, 173.0, 87.0, 33.0 ],
									"text" : "Right listening position"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-67",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 978.0, 105.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "live.dial[3]",
											"parameter_mmax" : 10.0,
											"parameter_mmin" : 0.1,
											"parameter_modmode" : 3,
											"parameter_osc_name" : "<default>",
											"parameter_shortname" : "live.dial",
											"parameter_type" : 0,
											"parameter_unitstyle" : 1
										}

									}
,
									"varname" : "live.dial[3]"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-68",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1073.0, 203.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-69",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 983.0, 243.0, 34.0, 22.0 ],
									"text" : "*~ 0."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-73",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 978.0, 170.0, 53.0, 22.0 ],
									"text" : "cycle~ 1"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-60",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 818.0, 243.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-59",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 728.0, 281.0, 43.0, 22.0 ],
									"text" : "+~ 0.3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 818.0, 177.0, 150.0, 20.0 ],
									"presentation" : 1,
									"presentation_linecount" : 3,
									"presentation_rect" : [ 376.0, 173.0, 59.0, 47.0 ],
									"text" : "Vibrato amplitude"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-35",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 723.0, 76.0, 150.0, 20.0 ],
									"presentation" : 1,
									"presentation_linecount" : 2,
									"presentation_rect" : [ 361.0, 158.0, 79.0, 33.0 ],
									"text" : "Left listening position"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-52",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 723.0, 105.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "live.dial[2]",
											"parameter_mmax" : 10.0,
											"parameter_mmin" : 0.1,
											"parameter_modmode" : 3,
											"parameter_osc_name" : "<default>",
											"parameter_shortname" : "live.dial",
											"parameter_type" : 0,
											"parameter_unitstyle" : 1
										}

									}
,
									"varname" : "live.dial[2]"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-53",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 818.0, 203.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-54",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 728.0, 243.0, 34.0, 22.0 ],
									"text" : "*~ 0."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-58",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 723.0, 170.0, 53.0, 22.0 ],
									"text" : "cycle~ 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-45",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 536.740000000000009, 129.0, 150.0, 20.0 ],
									"presentation" : 1,
									"presentation_linecount" : 3,
									"presentation_rect" : [ 361.0, 158.0, 75.0, 47.0 ],
									"text" : "Vibrato amplitude (cents)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-46",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 441.740000000000009, 28.0, 150.0, 20.0 ],
									"presentation" : 1,
									"presentation_linecount" : 2,
									"presentation_rect" : [ 346.0, 143.0, 75.0, 33.0 ],
									"text" : "Vibrato speed"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-47",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 441.740000000000009, 57.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "live.dial[1]",
											"parameter_mmax" : 10.0,
											"parameter_mmin" : 0.1,
											"parameter_modmode" : 3,
											"parameter_osc_name" : "<default>",
											"parameter_shortname" : "live.dial",
											"parameter_type" : 0,
											"parameter_unitstyle" : 1
										}

									}
,
									"varname" : "live.dial[1]"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-48",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 536.740000000000009, 155.0, 50.0, 22.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
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
, 							{
								"box" : 								{
									"id" : "obj-49",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 441.740000000000009, 198.0, 34.0, 22.0 ],
									"text" : "*~ 0."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-51",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 441.740000000000009, 122.0, 53.0, 22.0 ],
									"text" : "cycle~ 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-72",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 513.0, 366.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-42",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 745.0, 553.0, 57.0, 22.0 ],
									"text" : "s gainout"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-44",
									"maxclass" : "multislider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 745.0, 396.0, 296.0, 146.0 ],
									"setminmax" : [ -70.0, 6.0 ],
									"size" : 60
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 441.740000000000009, 950.0, 54.0, 22.0 ],
									"text" : "s t1table"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"maxclass" : "multislider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 441.740000000000009, 792.0, 296.0, 146.0 ],
									"setminmax" : [ -2.0, 2.0 ],
									"size" : 60
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-36",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 438.0, 743.0, 54.0, 22.0 ],
									"text" : "s t0table"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "multislider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 438.0, 585.0, 296.0, 146.0 ],
									"setminmax" : [ -2.0, 2.0 ],
									"size" : 60
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 438.0, 553.0, 67.0, 22.0 ],
									"text" : "s betatable"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "multislider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 438.0, 396.0, 296.0, 146.0 ],
									"setminmax" : [ -5.0, -1.0 ],
									"size" : 60
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 401.0, 95.0, 31.0, 22.0 ],
									"text" : "stop"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1406.0, 65.0, 127.0, 22.0 ],
									"text" : "\"second decay time\" 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1406.0, 33.0, 108.0, 22.0 ],
									"text" : "\"first decay time\" 5"
								}

							}
, 							{
								"box" : 								{
									"floatoutput" : 1,
									"id" : "obj-43",
									"maxclass" : "slider",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1593.0, 145.0, 20.0, 140.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "slider",
											"parameter_mmax" : 4.0,
											"parameter_modmode" : 3,
											"parameter_osc_name" : "<default>",
											"parameter_shortname" : "slider",
											"parameter_type" : 0
										}

									}
,
									"size" : 4.0,
									"varname" : "slider"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-41",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1593.0, 339.0, 41.0, 22.0 ],
									"text" : "s gain"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-40",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 300.0, 58.0, 62.0, 22.0 ],
									"text" : "start 1024"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-33",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 349.0, 95.0, 33.0, 22.0 ],
									"text" : "read"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "bang", "" ],
									"patching_rect" : [ 300.0, 139.0, 40.0, 22.0 ],
									"text" : "seq"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1345.0, 121.0, 88.0, 22.0 ],
									"text" : "radius 0.00005"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1362.0, 177.0, 170.0, 22.0 ],
									"text" : "\"regularisation parameter\" 100"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-55",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1468.0, 248.0, 41.0, 48.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 381.0, 324.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_initial" : [ 0.5 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "Impact duration[52]",
											"parameter_mmax" : 20.0,
											"parameter_mmin" : 0.5,
											"parameter_modmode" : 4,
											"parameter_osc_name" : "<default>",
											"parameter_shortname" : "width",
											"parameter_type" : 0,
											"parameter_unitstyle" : 1
										}

									}
,
									"varname" : "live.dial"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1468.0, 339.0, 46.0, 22.0 ],
									"text" : "s width"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1345.0, 222.0, 64.0, 22.0 ],
									"text" : "tension 60"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1345.0, 339.0, 84.0, 22.0 ],
									"text" : "s globalparam"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1243.0, 290.0, 24.0, 24.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "off", "on" ],
											"parameter_longname" : "toggle",
											"parameter_mmax" : 1,
											"parameter_modmode" : 0,
											"parameter_osc_name" : "<default>",
											"parameter_shortname" : "toggle",
											"parameter_type" : 2
										}

									}
,
									"svg" : "",
									"varname" : "toggle"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1243.0, 339.0, 59.0, 22.0 ],
									"text" : "s exctype"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 156.0, 277.0, 34.0, 22.0 ],
									"text" : "pack"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 156.0, 241.0, 29.5, 22.0 ],
									"text" : "- 23"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 25.0, 299.0, 52.0, 22.0 ],
									"text" : "open 46"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 156.0, 202.0, 59.0, 22.0 ],
									"text" : "unpack i i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 156.0, 309.220000000000027, 76.0, 22.0 ],
									"text" : "target $1, $2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "newobj",
									"numinlets" : 5,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "signal" ],
									"patching_rect" : [ 25.0, 358.0, 400.0, 22.0 ],
									"text" : "poly~ polyString 60 @midimode 1 @zone 0 @parallel 1 @threadcount 10",
									"varname" : "poly~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 8,
									"outlettype" : [ "", "", "", "int", "int", "", "int", "" ],
									"patching_rect" : [ 156.0, 170.0, 92.5, 22.0 ],
									"text" : "midiparse"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 91.0, 68.0, 55.0, 23.0 ],
									"text" : "midiinfo"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-22",
									"items" : [ "to Max 1", ",", "to Max 2" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 91.0, 95.0, 150.0, 23.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-28",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 127.0, 40.0, 77.0, 23.0 ],
									"text" : "loadmess 0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-31",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 156.0, 138.0, 45.0, 23.0 ],
									"text" : "midiin"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-181",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 1150.0, 574.0, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-160",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1154.0, 654.0, 244.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 47.0, 691.0, 244.0, 20.0 ],
									"text" : "Low damp"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-148",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1154.0, 632.0, 244.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 47.0, 669.0, 244.0, 20.0 ],
									"text" : "High damp"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-144",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1179.0, 470.0, 150.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 17.0, 600.0, 150.0, 20.0 ],
									"text" : "Store a preset at index"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-143",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1125.0, 437.0, 150.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 17.0, 648.0, 150.0, 20.0 ],
									"text" : "Preset list"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-141",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1391.0, 437.0, 154.0, 33.0 ],
									"presentation" : 1,
									"presentation_linecount" : 2,
									"presentation_rect" : [ 301.0, 600.0, 154.0, 33.0 ],
									"text" : "Write and read preset data to/from disk"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-137",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1545.0, 490.0, 33.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 349.0, 653.0, 33.0, 22.0 ],
									"text" : "read"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-133",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1124.0, 469.0, 35.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 17.0, 624.0, 35.0, 22.0 ],
									"text" : "store"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-130",
									"maxclass" : "number",
									"maximum" : 8,
									"minimum" : 1,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1154.0, 509.0, 50.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 67.0, 624.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-128",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1124.0, 547.0, 49.0, 22.0 ],
									"text" : "pack s i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-115",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1438.0, 490.0, 89.0, 22.0 ],
									"text" : "storagewindow"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-112",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1391.0, 490.0, 34.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 301.0, 653.0, 34.0, 22.0 ],
									"text" : "write"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-109",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1391.0, 527.0, 231.0, 22.0 ],
									"saved_object_attributes" : 									{
										"client_rect" : [ 100, 172, 825, 584 ],
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"storage_rect" : [ 100, 172, 952, 554 ]
									}
,
									"text" : "pattrstorage presetmultiple @savemode 0",
									"varname" : "presetmultiple"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-107",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1124.0, 600.0, 151.0, 22.0 ],
									"text" : "pattrstorage presetmultiple"
								}

							}
, 							{
								"box" : 								{
									"bubblesize" : 16,
									"id" : "obj-91",
									"maxclass" : "preset",
									"numinlets" : 1,
									"numoutlets" : 5,
									"outlettype" : [ "preset", "int", "preset", "int", "" ],
									"patching_rect" : [ 1124.0, 637.0, 24.0, 171.0 ],
									"pattrstorage" : "presetmultiple",
									"presentation" : 1,
									"presentation_rect" : [ 17.0, 674.0, 24.0, 171.0 ]
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.133674, 0.354866, 0.236742, 1.0 ],
									"id" : "obj-170",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1102.0, 426.0, 537.0, 393.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 12.0, 589.0, 446.0, 261.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-89",
									"local" : 1,
									"maxclass" : "ezdac~",
									"numinlets" : 2,
									"numoutlets" : 0,
									"patching_rect" : [ 25.5, 751.0, 45.0, 45.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 160.0, 482.0, 45.0, 45.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-64",
									"lastchannelcount" : 0,
									"maxclass" : "live.gain~",
									"numinlets" : 2,
									"numoutlets" : 5,
									"outlettype" : [ "signal", "signal", "", "float", "list" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 24.0, 570.0, 48.0, 136.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 28.0, 443.0, 48.0, 136.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_linknames" : 1,
											"parameter_longname" : "live.gain~[61]",
											"parameter_mmax" : 6.0,
											"parameter_mmin" : -70.0,
											"parameter_modmode" : 3,
											"parameter_osc_name" : "<default>",
											"parameter_shortname" : "Output gain",
											"parameter_type" : 0,
											"parameter_unitstyle" : 4
										}

									}
,
									"varname" : "live.gain~[2]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-61",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 91.0, 570.0, 74.5, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 83.0, 438.0, 75.0, 20.0 ],
									"text" : "Output gain"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-34",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 81.0, 744.0, 150.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 160.0, 460.0, 150.0, 20.0 ],
									"text" : "On / Off"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-29",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 81.0, 711.0, 150.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 160.0, 438.0, 150.0, 20.0 ],
									"text" : "Audio status"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 20.0, 822.0, 76.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 160.0, 528.0, 76.0, 20.0 ],
									"text" : "Samplerate"
								}

							}
, 							{
								"box" : 								{
									"annotation" : "Samplerate",
									"id" : "obj-18",
									"items" : [ 44100, ",", 48000, ",", 88200, ",", 96000 ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 108.0, 821.0, 100.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 161.0, 550.0, 100.0, 22.0 ],
									"varname" : "umenu"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 108.0, 781.0, 67.0, 22.0 ],
									"text" : "adstatus sr"
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.16078431372549, 0.517647058823529, 0.435294117647059, 1.0 ],
									"id" : "obj-168",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 9.0, 558.0, 331.0, 320.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 13.0, 431.0, 331.0, 156.0 ],
									"proportion" : 0.5
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-56", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-91", 0 ],
									"midpoints" : [ 1133.5, 625.0, 1133.5, 625.0 ],
									"source" : [ "obj-107", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-109", 0 ],
									"midpoints" : [ 1400.5, 514.0, 1400.5, 514.0 ],
									"source" : [ "obj-112", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-109", 0 ],
									"midpoints" : [ 1447.5, 514.0, 1400.5, 514.0 ],
									"source" : [ "obj-115", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-91", 0 ],
									"midpoints" : [ 1133.5, 586.0, 1119.0, 586.0, 1119.0, 631.0, 1133.5, 631.0 ],
									"source" : [ "obj-128", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-128", 1 ],
									"midpoints" : [ 1163.5, 532.0, 1163.5, 532.0 ],
									"source" : [ "obj-130", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-128", 0 ],
									"midpoints" : [ 1133.5, 493.0, 1133.5, 493.0 ],
									"source" : [ "obj-133", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-109", 0 ],
									"midpoints" : [ 1554.5, 514.0, 1400.5, 514.0 ],
									"source" : [ "obj-137", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"midpoints" : [ 117.5, 804.0, 117.5, 804.0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"midpoints" : [ 117.5, 846.0, 105.0, 846.0, 105.0, 777.0, 117.5, 777.0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-107", 0 ],
									"source" : [ "obj-181", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"source" : [ "obj-22", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 1 ],
									"source" : [ "obj-23", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 0 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 2 ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 1 ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 1 ],
									"source" : [ "obj-32", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"source" : [ "obj-44", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"midpoints" : [ 451.240000000000009, 107.0, 451.240000000000009, 107.0 ],
									"source" : [ "obj-47", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-49", 1 ],
									"midpoints" : [ 546.240000000000009, 191.0, 466.240000000000009, 191.0 ],
									"source" : [ "obj-48", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 0 ],
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 1 ],
									"source" : [ "obj-50", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-49", 0 ],
									"source" : [ "obj-51", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-58", 0 ],
									"midpoints" : [ 732.5, 155.0, 732.5, 155.0 ],
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-54", 1 ],
									"midpoints" : [ 827.5, 239.0, 752.5, 239.0 ],
									"source" : [ "obj-53", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-59", 0 ],
									"source" : [ "obj-54", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-55", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-70", 0 ],
									"source" : [ "obj-56", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-57", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-54", 0 ],
									"source" : [ "obj-58", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 3 ],
									"source" : [ "obj-59", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-59", 1 ],
									"source" : [ "obj-60", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-63", 1 ],
									"source" : [ "obj-62", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 4 ],
									"source" : [ "obj-63", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-89", 1 ],
									"source" : [ "obj-64", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-89", 0 ],
									"midpoints" : [ 33.5, 708.0, 35.0, 708.0 ],
									"source" : [ "obj-64", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-73", 0 ],
									"midpoints" : [ 987.5, 155.0, 987.5, 155.0 ],
									"source" : [ "obj-67", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-69", 1 ],
									"midpoints" : [ 1082.5, 239.0, 1007.5, 239.0 ],
									"source" : [ "obj-68", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-63", 0 ],
									"source" : [ "obj-69", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 1 ],
									"source" : [ "obj-70", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"source" : [ "obj-71", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-72", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-69", 0 ],
									"source" : [ "obj-73", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ],
						"originid" : "pat-48"
					}
,
					"patching_rect" : [ 64.0, 151.0, 97.0, 22.0 ],
					"saved_object_attributes" : 					{
						"globalpatchername" : ""
					}
,
					"text" : "p multipleStrings",
					"varname" : "single[2]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
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
						"rect" : [ -220.0, -967.0, 1119.0, 822.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"showontab" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-79",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 441.75, 716.5, 40.0, 22.0 ],
									"text" : "rand~"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-68",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 441.75, 686.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-70",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 477.75, 756.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-76",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 441.75, 756.0, 30.0, 22.0 ],
									"text" : "*~ 0"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-59",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 229.0, 708.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-49",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 63.5, 776.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-37",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 123.0, 708.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-63",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 265.0, 778.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-65",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 229.0, 778.0, 30.0, 22.0 ],
									"text" : "*~ 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-66",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 229.0, 806.0, 43.0, 22.0 ],
									"text" : "+~ 0.5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-67",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 229.0, 742.0, 70.0, 22.0 ],
									"text" : "cycle~ 0.07"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-62",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 166.0, 776.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-60",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 13.5, 712.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-51",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 128.0, 778.0, 30.0, 22.0 ],
									"text" : "*~ 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-54",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 128.0, 806.0, 43.0, 22.0 ],
									"text" : "+~ 0.5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-56",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 123.0, 742.0, 63.0, 22.0 ],
									"text" : "cycle~ 0.1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-40",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 18.5, 781.0, 40.0, 22.0 ],
									"text" : "*~ 0.3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-31",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 18.5, 809.0, 43.0, 22.0 ],
									"text" : "+~ 0.5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 13.5, 745.0, 60.0, 22.0 ],
									"text" : "cycle~ 10"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 910.0, 314.0, 194.0, 22.0 ],
									"text" : "prepend \"regularisation parameter\""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 598.5, 384.0, 37.0, 22.0 ],
									"text" : "saw~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-84",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 384.0, 343.0, 77.5, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 494.0, 42.0, 150.0, 20.0 ],
									"text" : "DC force"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-80",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 392.0, 367.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-75",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 362.0, 395.0, 29.5, 22.0 ],
									"text" : "+~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-69",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 653.0, 173.0, 150.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 494.0, 42.0, 150.0, 20.0 ],
									"text" : "Audio in"
								}

							}
, 							{
								"box" : 								{
									"basictuning" : 440,
									"clipheight" : 29.666666666666668,
									"data" : 									{
										"clips" : [ 											{
												"absolutepath" : "/Users/risse/Downloads/11-REC_bois_secouer-150319_1238_pingpong_woodbox_FB.wav",
												"filename" : "11-REC_bois_secouer-150319_1238_pingpong_woodbox_FB.wav",
												"filekind" : "audiofile",
												"id" : "u817009314",
												"selection" : [ 0.126315789473684, 1.0 ],
												"loop" : 1,
												"content_state" : 												{
													"loop" : 1
												}

											}
, 											{
												"absolutepath" : "/Users/risse/Downloads/08 Under Star (album edition).mp3",
												"filename" : "08 Under Star (album edition).mp3",
												"filekind" : "audiofile",
												"id" : "u049006344",
												"loop" : 0,
												"content_state" : 												{

												}

											}
, 											{
												"absolutepath" : "/Users/risse/Downloads/1_Parrots_8-15am.mp3",
												"filename" : "1_Parrots_8-15am.mp3",
												"filekind" : "audiofile",
												"id" : "u389008122",
												"selection" : [ 0.031578947368421, 1.0 ],
												"loop" : 1,
												"content_state" : 												{
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
									"patching_rect" : [ 653.0, 207.0, 150.0, 92.0 ],
									"pitchcorrection" : 0,
									"quality" : "basic",
									"saved_attribute_attributes" : 									{
										"candicane2" : 										{
											"expression" : ""
										}
,
										"candicane3" : 										{
											"expression" : ""
										}
,
										"candicane4" : 										{
											"expression" : ""
										}
,
										"candicane5" : 										{
											"expression" : ""
										}
,
										"candicane6" : 										{
											"expression" : ""
										}
,
										"candicane7" : 										{
											"expression" : ""
										}
,
										"candicane8" : 										{
											"expression" : ""
										}

									}
,
									"timestretch" : [ 0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-36",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 36.0, 249.0, 40.0, 22.0 ],
									"restore" : [ "beta", 0.007 ],
									"saved_object_attributes" : 									{
										"parameter_enable" : 0,
										"parameter_mappable" : 0
									}
,
									"text" : "pattr",
									"varname" : "u074006927[9]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 36.0, 216.0, 40.0, 22.0 ],
									"restore" : [ "fundamental frequency", 50.0 ],
									"saved_object_attributes" : 									{
										"parameter_enable" : 0,
										"parameter_mappable" : 0
									}
,
									"text" : "pattr",
									"varname" : "u074006927[8]"
								}

							}
, 							{
								"box" : 								{
									"attr" : "beta",
									"id" : "obj-10",
									"maxclass" : "attrui",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 137.0, 276.0, 168.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 39.0, 442.0, 168.0, 22.0 ],
									"varname" : "attrui[13]"
								}

							}
, 							{
								"box" : 								{
									"attr" : "fundamental frequency",
									"id" : "obj-1",
									"maxclass" : "attrui",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 137.0, 242.0, 168.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 39.0, 309.0, 168.0, 22.0 ],
									"varname" : "attrui[12]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-181",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 393.0, 579.0, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-144",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 422.0, 475.0, 150.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 17.0, 600.0, 150.0, 20.0 ],
									"text" : "Store a preset at index"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-143",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 368.0, 442.0, 150.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 17.0, 648.0, 150.0, 20.0 ],
									"text" : "Preset list"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-141",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 634.0, 442.0, 154.0, 33.0 ],
									"presentation" : 1,
									"presentation_linecount" : 2,
									"presentation_rect" : [ 301.0, 600.0, 154.0, 33.0 ],
									"text" : "Write and read preset data to/from disk"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-137",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 788.0, 495.0, 33.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 349.0, 653.0, 33.0, 22.0 ],
									"text" : "read"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-133",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 367.0, 474.0, 35.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 17.0, 624.0, 35.0, 22.0 ],
									"text" : "store"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-130",
									"maxclass" : "number",
									"maximum" : 8,
									"minimum" : 1,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 397.0, 514.0, 50.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 67.0, 624.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-128",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 367.0, 552.0, 49.0, 22.0 ],
									"text" : "pack s i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-115",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 681.0, 495.0, 89.0, 22.0 ],
									"text" : "storagewindow"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-112",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 634.0, 495.0, 34.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 301.0, 653.0, 34.0, 22.0 ],
									"text" : "write"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-109",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 634.0, 532.0, 232.0, 22.0 ],
									"saved_object_attributes" : 									{
										"client_rect" : [ 100, 172, 825, 584 ],
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"storage_rect" : [ 100, 172, 952, 554 ]
									}
,
									"text" : "pattrstorage presetStorage @savemode 0",
									"varname" : "presetStorage"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-107",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 367.0, 605.0, 151.0, 22.0 ],
									"text" : "pattrstorage presetStorage"
								}

							}
, 							{
								"box" : 								{
									"bubblesize" : 16,
									"id" : "obj-91",
									"maxclass" : "preset",
									"numinlets" : 1,
									"numoutlets" : 5,
									"outlettype" : [ "preset", "int", "preset", "int", "" ],
									"patching_rect" : [ 367.0, 642.0, 24.0, 171.0 ],
									"pattrstorage" : "presetStorage",
									"presentation" : 1,
									"presentation_rect" : [ 17.0, 674.0, 24.0, 171.0 ]
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.133674, 0.354866, 0.236742, 1.0 ],
									"id" : "obj-170",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 345.0, 431.0, 537.0, 393.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 12.0, 589.0, 446.0, 261.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-44",
									"maxclass" : "newobj",
									"numinlets" : 5,
									"numoutlets" : 3,
									"outlettype" : [ "signal", "signal", "signal" ],
									"patching_rect" : [ 59.5, 354.0, 109.0, 22.0 ],
									"text" : "1dSAV.CubicString"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 567.0, 22.0, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 430.75, 133.0, 150.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 316.0, 113.0, 75.0, 20.0 ],
									"text" : "Pluck/struck"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 426.0, 155.0, 24.0, 24.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 320.0, 133.0, 24.0, 24.0 ],
									"svg" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 9,
											"minor" : 0,
											"revision" : 1,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 334.0, 303.0, 1133.0, 770.0 ],
										"gridsize" : [ 15.0, 15.0 ],
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-8",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 427.0, 380.0, 32.0, 22.0 ],
													"text" : "0.75"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-4",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 427.0, 336.0, 58.0, 22.0 ],
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-3",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 611.0, 158.0, 58.0, 22.0 ],
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-19",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 583.0, 274.0, 29.5, 22.0 ],
													"text" : "+ 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-18",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 625.0, 274.0, 29.5, 22.0 ],
													"text" : "f"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-13",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 518.0, 274.0, 29.5, 22.0 ],
													"text" : "f"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-12",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 515.75, 374.0, 42.0, 22.0 ],
													"text" : "switch"
												}

											}
, 											{
												"box" : 												{
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
, 											{
												"box" : 												{
													"id" : "obj-10",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 564.5, 242.0, 29.5, 22.0 ],
													"text" : "/ 2."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-9",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 625.0, 317.0, 115.0, 22.0 ],
													"text" : "0.75, 1.25 $1 0.75 0"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-39",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 518.0, 317.0, 99.0, 22.0 ],
													"text" : "0.75, 1 $1 0.75 0"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-37",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "signal", "bang" ],
													"patching_rect" : [ 515.75, 419.0, 34.0, 22.0 ],
													"text" : "line~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 515.75, 490.0, 53.0, 22.0 ],
													"text" : "cycle~ 0"
												}

											}
, 											{
												"box" : 												{
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
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-2",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 515.75, 546.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
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
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"order" : 1,
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 0 ],
													"order" : 0,
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 1 ],
													"source" : [ "obj-10", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"source" : [ "obj-11", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-37", 0 ],
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-39", 0 ],
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"source" : [ "obj-18", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 0 ],
													"source" : [ "obj-19", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 1 ],
													"source" : [ "obj-37", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 1 ],
													"source" : [ "obj-39", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 0 ],
													"order" : 1,
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 1 ],
													"order" : 0,
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"midpoints" : [ 525.25, 514.0, 525.25, 514.0 ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-37", 0 ],
													"source" : [ "obj-8", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 2 ],
													"source" : [ "obj-9", 0 ]
												}

											}
 ],
										"originid" : "pat-292"
									}
,
									"patching_rect" : [ 359.0, 164.0, 47.0, 22.0 ],
									"saved_object_attributes" : 									{
										"globalpatchername" : ""
									}
,
									"text" : "p pluck"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-89",
									"local" : 1,
									"maxclass" : "ezdac~",
									"numinlets" : 2,
									"numoutlets" : 0,
									"patching_rect" : [ 27.5, 577.0, 45.0, 45.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 160.0, 482.0, 45.0, 45.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-38",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 598.5, 353.5, 50.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 506.0, 202.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"floatoutput" : 1,
									"id" : "obj-35",
									"maxclass" : "slider",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 598.5, 196.0, 20.0, 140.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 506.0, 52.0, 20.0, 140.0 ],
									"size" : 1000.0
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-33",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 486.0, 173.0, 150.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 479.0, 27.0, 150.0, 20.0 ],
									"text" : "Sawtooth excitation"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 432.0, 268.0, 29.5, 22.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 535.75, 214.0, 24.0, 24.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 560.0, 54.0, 24.0, 24.0 ],
									"svg" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-178",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 17.5, 322.0, 150.0, 20.0 ],
									"text" : "Synthesis"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-175",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 137.0, 30.0, 150.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 24.0, 30.0, 150.0, 20.0 ],
									"text" : "Physical parameters"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-165",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1004.0, 37.5, 150.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 642.0, 27.0, 150.0, 20.0 ],
									"text" : "Visualization"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-153",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 772.0, 60.0, 40.0, 22.0 ],
									"restore" : [ 1.0 ],
									"saved_object_attributes" : 									{
										"parameter_enable" : 0,
										"parameter_mappable" : 0
									}
,
									"text" : "pattr",
									"varname" : "u965009707"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 36.0, 45.0, 40.0, 22.0 ],
									"restore" : [ "stability condition setting", 0.8 ],
									"saved_object_attributes" : 									{
										"parameter_enable" : 0,
										"parameter_mappable" : 0
									}
,
									"text" : "pattr",
									"varname" : "u074006927[7]"
								}

							}
, 							{
								"box" : 								{
									"attr" : "stability condition setting",
									"id" : "obj-46",
									"maxclass" : "attrui",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 137.0, 74.0, 168.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 24.0, 74.0, 168.0, 22.0 ],
									"varname" : "attrui[9]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-74",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 36.0, 182.0, 65.0, 22.0 ],
									"restore" : [ "second decay frequency", 100.0 ],
									"saved_object_attributes" : 									{
										"parameter_enable" : 0,
										"parameter_mappable" : 0
									}
,
									"text" : "pattr fdec1",
									"varname" : "fdec1[1]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-72",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 36.0, 146.0, 65.0, 22.0 ],
									"restore" : [ "first decay frequency", 100.0 ],
									"saved_object_attributes" : 									{
										"parameter_enable" : 0,
										"parameter_mappable" : 0
									}
,
									"text" : "pattr fdec0",
									"varname" : "fdec0"
								}

							}
, 							{
								"box" : 								{
									"attr" : "second decay frequency",
									"id" : "obj-71",
									"maxclass" : "attrui",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 137.0, 210.0, 168.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 24.0, 395.0, 168.0, 22.0 ],
									"varname" : "attrui[8]"
								}

							}
, 							{
								"box" : 								{
									"attr" : "first decay frequency",
									"id" : "obj-47",
									"maxclass" : "attrui",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 137.0, 177.0, 168.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 24.0, 362.0, 168.0, 22.0 ],
									"varname" : "attrui[7]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-86",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 36.0, 114.0, 40.0, 22.0 ],
									"restore" : [ "second decay time", 6.0 ],
									"saved_object_attributes" : 									{
										"parameter_enable" : 0,
										"parameter_mappable" : 0
									}
,
									"text" : "pattr",
									"varname" : "u074006927[6]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-83",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 36.0, 78.0, 40.0, 22.0 ],
									"restore" : [ "first decay time", 12.0 ],
									"saved_object_attributes" : 									{
										"parameter_enable" : 0,
										"parameter_mappable" : 0
									}
,
									"text" : "pattr",
									"varname" : "u074006927[5]"
								}

							}
, 							{
								"box" : 								{
									"attr" : "second decay time",
									"id" : "obj-58",
									"maxclass" : "attrui",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 137.0, 142.0, 168.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 24.0, 327.0, 168.0, 22.0 ],
									"varname" : "attrui[6]"
								}

							}
, 							{
								"box" : 								{
									"attr" : "first decay time",
									"id" : "obj-57",
									"maxclass" : "attrui",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 137.0, 109.0, 168.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 24.0, 294.0, 168.0, 22.0 ],
									"varname" : "attrui[5]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-55",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 567.0, 65.0, 41.0, 48.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 246.0, 189.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_initial" : [ 0.5 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "Impact duration",
											"parameter_mmax" : 20.0,
											"parameter_mmin" : 0.5,
											"parameter_modmode" : 4,
											"parameter_osc_name" : "<default>",
											"parameter_shortname" : "width",
											"parameter_type" : 0,
											"parameter_unitstyle" : 1
										}

									}
,
									"varname" : "live.dial"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-64",
									"lastchannelcount" : 0,
									"maxclass" : "live.gain~",
									"numinlets" : 2,
									"numoutlets" : 5,
									"outlettype" : [ "signal", "signal", "", "float", "list" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 26.0, 390.5, 48.0, 136.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 28.0, 443.0, 48.0, 136.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_linknames" : 1,
											"parameter_longname" : "live.gain~",
											"parameter_mmax" : 6.0,
											"parameter_mmin" : -70.0,
											"parameter_modmode" : 3,
											"parameter_osc_name" : "<default>",
											"parameter_shortname" : "Output gain",
											"parameter_type" : 0,
											"parameter_unitstyle" : 4
										}

									}
,
									"varname" : "live.gain~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-61",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 92.5, 396.0, 74.5, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 83.0, 438.0, 75.0, 20.0 ],
									"text" : "Output gain"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-53",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1004.0, 335.5, 150.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 642.0, 325.0, 150.0, 20.0 ],
									"text" : "Epsilon"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-52",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1004.0, 66.5, 150.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 642.0, 56.0, 150.0, 20.0 ],
									"text" : "Output sonogram"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-50",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 930.0, 235.0, 50.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 366.0, 543.0, 50.0, 22.0 ],
									"varname" : "number[2]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-43",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 425.75, 65.0, 66.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 313.0, 65.0, 66.0, 20.0 ],
									"text" : "Period",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-42",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 359.0, 23.0, 66.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 246.0, 23.0, 66.0, 20.0 ],
									"text" : "Excitation",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-34",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 82.5, 570.0, 150.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 160.0, 460.0, 150.0, 20.0 ],
									"text" : "On / Off"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-29",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 82.5, 537.0, 150.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 160.0, 438.0, 150.0, 20.0 ],
									"text" : "Audio status"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 917.0, 36.0, 63.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 353.0, 344.0, 63.0, 20.0 ],
									"text" : "Lambda 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 21.5, 648.0, 76.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 160.0, 528.0, 76.0, 20.0 ],
									"text" : "Samplerate"
								}

							}
, 							{
								"box" : 								{
									"annotation" : "Samplerate",
									"id" : "obj-18",
									"items" : [ 44100, ",", 48000, ",", 88200, ",", 96000 ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 109.5, 647.0, 100.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 161.0, 550.0, 100.0, 22.0 ],
									"varname" : "umenu"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 109.5, 607.0, 67.0, 22.0 ],
									"text" : "adstatus sr"
								}

							}
, 							{
								"box" : 								{
									"domain" : [ 50.0, 22100.0 ],
									"id" : "obj-3",
									"maxclass" : "spectroscope~",
									"monochrome" : 0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1004.0, 84.5, 455.0, 228.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 642.0, 74.0, 455.0, 228.0 ],
									"range" : [ 0.0, 1.0 ],
									"scroll" : 3,
									"sono" : 1,
									"sonomonofgcolor" : [ 1.0, 0.125490196078431, 0.125490196078431, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"floatoutput" : 1,
									"id" : "obj-23",
									"maxclass" : "slider",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 930.0, 79.0, 20.0, 140.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 366.0, 387.0, 20.0, 140.0 ],
									"size" : 1000.0,
									"varname" : "slider[1]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-73",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 827.0, 60.0, 70.0, 22.0 ],
									"text" : "loadmess 1"
								}

							}
, 							{
								"box" : 								{
									"bufsize" : 256,
									"calccount" : 2,
									"id" : "obj-7",
									"maxclass" : "scope~",
									"numinlets" : 2,
									"numoutlets" : 0,
									"patching_rect" : [ 1004.0, 353.5, 444.0, 155.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 642.0, 343.0, 444.0, 155.0 ],
									"range" : [ -0.1, 0.1 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 359.0, 52.0, 66.0, 33.0 ],
									"presentation" : 1,
									"presentation_linecount" : 2,
									"presentation_rect" : [ 246.0, 52.0, 66.0, 33.0 ],
									"text" : "Impulse train",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 493.75, 65.0, 66.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 246.0, 113.0, 66.0, 20.0 ],
									"text" : "Single",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 819.0, 30.0, 66.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 397.0, 23.0, 66.0, 20.0 ],
									"text" : "Input gain"
								}

							}
, 							{
								"box" : 								{
									"annotation" : "",
									"floatoutput" : 1,
									"id" : "obj-4",
									"maxclass" : "slider",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 827.0, 92.0, 20.0, 140.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 397.0, 45.0, 20.0, 140.0 ],
									"size" : 2.0,
									"varname" : "slider"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-8",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 827.0, 251.0, 50.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 397.0, 189.0, 50.0, 22.0 ],
									"varname" : "number[1]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 362.0, 294.0, 30.0, 22.0 ],
									"text" : "*~ 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-28",
									"maxclass" : "number",
									"minimum" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 425.75, 85.5, 50.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 313.0, 86.0, 50.0, 22.0 ],
									"varname" : "number"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 359.0, 84.5, 24.0, 24.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 246.0, 85.0, 24.0, 24.0 ],
									"svg" : "",
									"varname" : "toggle"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 359.0, 119.0, 69.0, 22.0 ],
									"text" : "metro 1000"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 493.75, 84.5, 24.0, 24.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 246.0, 133.0, 24.0, 24.0 ],
									"varname" : "button"
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.630609, 0.277737, 0.179169, 1.0 ],
									"id" : "obj-163",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 991.0, 29.0, 543.0, 496.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 631.0, 20.0, 479.0, 718.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.16078431372549, 0.517647058823529, 0.435294117647059, 1.0 ],
									"id" : "obj-168",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 10.5, 384.0, 331.0, 320.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 13.0, 431.0, 331.0, 156.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.109078, 0.481945, 0.537541, 1.0 ],
									"id" : "obj-173",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 12.0, 23.0, 328.0, 285.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 13.0, 23.0, 217.0, 406.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.240323, 0.247547, 0.573641, 1.0 ],
									"bordercolor" : [ 0.300519, 0.298703, 0.403927, 1.0 ],
									"id" : "obj-176",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 13.5, 317.0, 323.0, 63.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.555587, 0.494726, 0.062268, 1.0 ],
									"id" : "obj-179",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 345.0, 23.0, 563.0, 406.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 232.0, 23.0, 396.0, 278.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.556646, 0.551429, 0.519943, 1.0 ],
									"id" : "obj-180",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 910.0, 25.0, 87.0, 254.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 346.0, 333.0, 87.0, 254.0 ],
									"proportion" : 0.5
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"midpoints" : [ 146.5, 450.0, 87.0, 450.0, 87.0, 483.0, 0.0, 483.0, 0.0, 528.0, 54.0, 528.0, 54.0, 525.0, 69.0, 525.0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"midpoints" : [ 146.5, 492.0, 165.0, 492.0, 165.0, 525.0, 69.0, 525.0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-91", 0 ],
									"midpoints" : [ 376.5, 630.0, 376.5, 630.0 ],
									"source" : [ "obj-107", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-109", 0 ],
									"midpoints" : [ 643.5, 519.0, 643.5, 519.0 ],
									"source" : [ "obj-112", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-109", 0 ],
									"midpoints" : [ 690.5, 519.0, 643.5, 519.0 ],
									"source" : [ "obj-115", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-91", 0 ],
									"midpoints" : [ 376.5, 591.0, 362.5, 591.0, 362.5, 636.0, 376.5, 636.0 ],
									"source" : [ "obj-128", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-128", 1 ],
									"midpoints" : [ 406.5, 537.0, 406.5, 537.0 ],
									"source" : [ "obj-130", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-128", 0 ],
									"midpoints" : [ 376.5, 498.0, 376.5, 498.0 ],
									"source" : [ "obj-133", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-109", 0 ],
									"midpoints" : [ 797.5, 519.0, 643.5, 519.0 ],
									"source" : [ "obj-137", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"midpoints" : [ 119.0, 630.0, 119.0, 630.0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"midpoints" : [ 919.5, 850.07421875, 6.0, 850.07421875, 6.0, 354.0, 54.0, 354.0, 54.0, 351.0, 69.0, 351.0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"midpoints" : [ 792.0, 84.0, 836.5, 84.0 ],
									"source" : [ "obj-153", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"midpoints" : [ 56.0, 69.0, 146.5, 69.0 ],
									"source" : [ "obj-16", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 2 ],
									"midpoints" : [ 435.5, 180.0, 408.0, 180.0, 408.0, 159.0, 396.5, 159.0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"midpoints" : [ 119.0, 672.0, 107.0, 672.0, 107.0, 603.0, 119.0, 603.0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-107", 0 ],
									"midpoints" : [ 402.5, 603.0, 389.5, 603.0, 389.5, 600.0, 376.5, 600.0 ],
									"source" : [ "obj-181", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-75", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"midpoints" : [ 56.0, 241.0, 132.0, 241.0, 132.0, 238.0, 146.5, 238.0 ],
									"source" : [ "obj-20", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"midpoints" : [ 368.5, 144.0, 368.5, 144.0 ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 0 ],
									"midpoints" : [ 939.5, 222.0, 939.5, 222.0 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 1 ],
									"midpoints" : [ 545.25, 255.0, 452.0, 255.0 ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"midpoints" : [ 368.5, 111.0, 368.5, 111.0 ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"midpoints" : [ 441.5, 291.0, 371.5, 291.0 ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 1 ],
									"midpoints" : [ 435.25, 108.0, 420.0, 108.0, 420.0, 114.0, 418.5, 114.0 ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 2 ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"midpoints" : [ 608.0, 339.0, 608.0, 339.0 ],
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"midpoints" : [ 56.0, 274.0, 132.0, 274.0, 132.0, 271.0, 146.5, 271.0 ],
									"source" : [ "obj-36", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-56", 0 ],
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"midpoints" : [ 836.5, 234.0, 836.5, 234.0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 1 ],
									"source" : [ "obj-44", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 0 ],
									"midpoints" : [ 69.0, 378.0, 35.5, 378.0 ],
									"source" : [ "obj-44", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"midpoints" : [ 159.0, 378.0, 180.0, 378.0, 180.0, 369.0, 342.0, 369.0, 342.0, 714.0, 330.0, 714.0, 330.0, 834.0, 990.0, 834.0, 990.0, 348.0, 1013.5, 348.0 ],
									"source" : [ "obj-44", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"midpoints" : [ 146.5, 99.0, 111.0, 99.0, 111.0, 483.0, 0.0, 483.0, 0.0, 528.0, 54.0, 528.0, 54.0, 525.0, 69.0, 525.0 ],
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"midpoints" : [ 146.5, 387.0, 111.0, 387.0, 111.0, 483.0, 0.0, 483.0, 0.0, 528.0, 54.0, 528.0, 54.0, 525.0, 69.0, 525.0 ],
									"source" : [ "obj-47", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"midpoints" : [ 662.5, 336.0, 402.0, 336.0, 402.0, 291.0, 371.5, 291.0 ],
									"source" : [ "obj-48", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"midpoints" : [ 503.25, 120.0, 429.0, 120.0, 429.0, 114.0, 354.0, 114.0, 354.0, 156.0, 368.5, 156.0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-50", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-54", 0 ],
									"source" : [ "obj-51", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 3 ],
									"source" : [ "obj-54", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-71", 0 ],
									"midpoints" : [ 576.5, 120.0, 429.0, 120.0, 429.0, 114.0, 315.0, 114.0, 315.0, 390.0, 146.5, 390.0 ],
									"order" : 1,
									"source" : [ "obj-55", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 1 ],
									"midpoints" : [ 576.5, 120.0, 429.0, 120.0, 429.0, 114.0, 354.0, 114.0, 354.0, 159.0, 382.5, 159.0 ],
									"order" : 0,
									"source" : [ "obj-55", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"source" : [ "obj-56", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"midpoints" : [ 146.5, 318.0, 111.0, 318.0, 111.0, 483.0, 0.0, 483.0, 0.0, 528.0, 54.0, 528.0, 54.0, 525.0, 69.0, 525.0 ],
									"source" : [ "obj-57", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"midpoints" : [ 146.5, 351.0, 111.0, 351.0, 111.0, 483.0, 0.0, 483.0, 0.0, 528.0, 54.0, 528.0, 54.0, 525.0, 69.0, 525.0 ],
									"source" : [ "obj-58", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-67", 0 ],
									"source" : [ "obj-59", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-55", 0 ],
									"midpoints" : [ 576.5, 45.0, 576.5, 45.0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"source" : [ "obj-60", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 1 ],
									"source" : [ "obj-62", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-65", 1 ],
									"source" : [ "obj-63", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"midpoints" : [ 35.5, 534.0, 0.0, 534.0, 0.0, 9.0, 999.0, 9.0, 999.0, 81.0, 1013.5, 81.0 ],
									"order" : 0,
									"source" : [ "obj-64", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-89", 1 ],
									"source" : [ "obj-64", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-89", 0 ],
									"midpoints" : [ 35.5, 534.0, 37.0, 534.0 ],
									"order" : 1,
									"source" : [ "obj-64", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 0 ],
									"source" : [ "obj-65", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 4 ],
									"source" : [ "obj-66", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-65", 0 ],
									"source" : [ "obj-67", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-79", 0 ],
									"source" : [ "obj-68", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-76", 1 ],
									"source" : [ "obj-70", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"midpoints" : [ 146.5, 420.0, 87.0, 420.0, 87.0, 483.0, 0.0, 483.0, 0.0, 528.0, 54.0, 528.0, 54.0, 525.0, 69.0, 525.0 ],
									"source" : [ "obj-71", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 0 ],
									"midpoints" : [ 68.5, 169.0, 146.5, 169.0 ],
									"source" : [ "obj-72", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"midpoints" : [ 836.5, 84.0, 836.5, 84.0 ],
									"source" : [ "obj-73", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-71", 0 ],
									"midpoints" : [ 68.5, 205.0, 146.5, 205.0 ],
									"source" : [ "obj-74", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"midpoints" : [ 371.5, 420.0, 357.0, 420.0, 357.0, 351.0, 69.0, 351.0 ],
									"source" : [ "obj-75", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 1 ],
									"source" : [ "obj-76", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-76", 0 ],
									"midpoints" : [ 451.25, 754.87890625 ],
									"source" : [ "obj-79", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 1 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-75", 1 ],
									"source" : [ "obj-80", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-57", 0 ],
									"midpoints" : [ 56.0, 103.0, 146.5, 103.0 ],
									"source" : [ "obj-83", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-58", 0 ],
									"midpoints" : [ 56.0, 139.0, 146.5, 139.0 ],
									"source" : [ "obj-86", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"midpoints" : [ 368.5, 291.0, 371.5, 291.0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ],
						"originid" : "pat-290"
					}
,
					"patching_rect" : [ 64.0, 116.0, 81.0, 22.0 ],
					"saved_object_attributes" : 					{
						"globalpatchername" : ""
					}
,
					"text" : "p singleString",
					"varname" : "single"
				}

			}
 ],
		"lines" : [  ],
		"originid" : "pat-46",
		"parameters" : 		{
			"obj-1::obj-55" : [ "Impact duration", "width", 0 ],
			"obj-1::obj-64" : [ "live.gain~", "Output gain", 0 ],
			"obj-3::obj-10" : [ "toggle", "toggle", 0 ],
			"obj-3::obj-23.10::obj-55" : [ "Impact duration[14]", "width", 0 ],
			"obj-3::obj-23.10::obj-67" : [ "live.gain~[9]", "live.gain~", 0 ],
			"obj-3::obj-23.11::obj-55" : [ "Impact duration[15]", "width", 0 ],
			"obj-3::obj-23.11::obj-67" : [ "live.gain~[10]", "live.gain~", 0 ],
			"obj-3::obj-23.12::obj-55" : [ "Impact duration[16]", "width", 0 ],
			"obj-3::obj-23.12::obj-67" : [ "live.gain~[11]", "live.gain~", 0 ],
			"obj-3::obj-23.13::obj-55" : [ "Impact duration[17]", "width", 0 ],
			"obj-3::obj-23.13::obj-67" : [ "live.gain~[12]", "live.gain~", 0 ],
			"obj-3::obj-23.14::obj-55" : [ "Impact duration[18]", "width", 0 ],
			"obj-3::obj-23.14::obj-67" : [ "live.gain~[13]", "live.gain~", 0 ],
			"obj-3::obj-23.15::obj-55" : [ "Impact duration[19]", "width", 0 ],
			"obj-3::obj-23.15::obj-67" : [ "live.gain~[14]", "live.gain~", 0 ],
			"obj-3::obj-23.16::obj-55" : [ "Impact duration[20]", "width", 0 ],
			"obj-3::obj-23.16::obj-67" : [ "live.gain~[15]", "live.gain~", 0 ],
			"obj-3::obj-23.17::obj-55" : [ "Impact duration[21]", "width", 0 ],
			"obj-3::obj-23.17::obj-67" : [ "live.gain~[16]", "live.gain~", 0 ],
			"obj-3::obj-23.18::obj-55" : [ "Impact duration[22]", "width", 0 ],
			"obj-3::obj-23.18::obj-67" : [ "live.gain~[17]", "live.gain~", 0 ],
			"obj-3::obj-23.19::obj-55" : [ "Impact duration[23]", "width", 0 ],
			"obj-3::obj-23.19::obj-67" : [ "live.gain~[18]", "live.gain~", 0 ],
			"obj-3::obj-23.1::obj-55" : [ "Impact duration[66]", "width", 0 ],
			"obj-3::obj-23.1::obj-67" : [ "live.gain~[59]", "live.gain~", 0 ],
			"obj-3::obj-23.20::obj-55" : [ "Impact duration[24]", "width", 0 ],
			"obj-3::obj-23.20::obj-67" : [ "live.gain~[19]", "live.gain~", 0 ],
			"obj-3::obj-23.21::obj-55" : [ "Impact duration[25]", "width", 0 ],
			"obj-3::obj-23.21::obj-67" : [ "live.gain~[20]", "live.gain~", 0 ],
			"obj-3::obj-23.22::obj-55" : [ "Impact duration[26]", "width", 0 ],
			"obj-3::obj-23.22::obj-67" : [ "live.gain~[21]", "live.gain~", 0 ],
			"obj-3::obj-23.23::obj-55" : [ "Impact duration[27]", "width", 0 ],
			"obj-3::obj-23.23::obj-67" : [ "live.gain~[22]", "live.gain~", 0 ],
			"obj-3::obj-23.24::obj-55" : [ "Impact duration[28]", "width", 0 ],
			"obj-3::obj-23.24::obj-67" : [ "live.gain~[23]", "live.gain~", 0 ],
			"obj-3::obj-23.25::obj-55" : [ "Impact duration[29]", "width", 0 ],
			"obj-3::obj-23.25::obj-67" : [ "live.gain~[24]", "live.gain~", 0 ],
			"obj-3::obj-23.26::obj-55" : [ "Impact duration[30]", "width", 0 ],
			"obj-3::obj-23.26::obj-67" : [ "live.gain~[25]", "live.gain~", 0 ],
			"obj-3::obj-23.27::obj-55" : [ "Impact duration[31]", "width", 0 ],
			"obj-3::obj-23.27::obj-67" : [ "live.gain~[26]", "live.gain~", 0 ],
			"obj-3::obj-23.28::obj-55" : [ "Impact duration[32]", "width", 0 ],
			"obj-3::obj-23.28::obj-67" : [ "live.gain~[27]", "live.gain~", 0 ],
			"obj-3::obj-23.29::obj-55" : [ "Impact duration[33]", "width", 0 ],
			"obj-3::obj-23.29::obj-67" : [ "live.gain~[28]", "live.gain~", 0 ],
			"obj-3::obj-23.2::obj-55" : [ "Impact duration[12]", "width", 0 ],
			"obj-3::obj-23.2::obj-67" : [ "live.gain~[1]", "live.gain~", 0 ],
			"obj-3::obj-23.30::obj-55" : [ "Impact duration[34]", "width", 0 ],
			"obj-3::obj-23.30::obj-67" : [ "live.gain~[29]", "live.gain~", 0 ],
			"obj-3::obj-23.31::obj-55" : [ "Impact duration[35]", "width", 0 ],
			"obj-3::obj-23.31::obj-67" : [ "live.gain~[30]", "live.gain~", 0 ],
			"obj-3::obj-23.32::obj-55" : [ "Impact duration[53]", "width", 0 ],
			"obj-3::obj-23.32::obj-67" : [ "live.gain~[31]", "live.gain~", 0 ],
			"obj-3::obj-23.33::obj-55" : [ "Impact duration[36]", "width", 0 ],
			"obj-3::obj-23.33::obj-67" : [ "live.gain~[32]", "live.gain~", 0 ],
			"obj-3::obj-23.34::obj-55" : [ "Impact duration[37]", "width", 0 ],
			"obj-3::obj-23.34::obj-67" : [ "live.gain~[33]", "live.gain~", 0 ],
			"obj-3::obj-23.35::obj-55" : [ "Impact duration[38]", "width", 0 ],
			"obj-3::obj-23.35::obj-67" : [ "live.gain~[34]", "live.gain~", 0 ],
			"obj-3::obj-23.36::obj-55" : [ "Impact duration[39]", "width", 0 ],
			"obj-3::obj-23.36::obj-67" : [ "live.gain~[35]", "live.gain~", 0 ],
			"obj-3::obj-23.37::obj-55" : [ "Impact duration[40]", "width", 0 ],
			"obj-3::obj-23.37::obj-67" : [ "live.gain~[36]", "live.gain~", 0 ],
			"obj-3::obj-23.38::obj-55" : [ "Impact duration[41]", "width", 0 ],
			"obj-3::obj-23.38::obj-67" : [ "live.gain~[37]", "live.gain~", 0 ],
			"obj-3::obj-23.39::obj-55" : [ "Impact duration[42]", "width", 0 ],
			"obj-3::obj-23.39::obj-67" : [ "live.gain~[38]", "live.gain~", 0 ],
			"obj-3::obj-23.3::obj-55" : [ "Impact duration[1]", "width", 0 ],
			"obj-3::obj-23.3::obj-67" : [ "live.gain~[2]", "live.gain~", 0 ],
			"obj-3::obj-23.40::obj-55" : [ "Impact duration[43]", "width", 0 ],
			"obj-3::obj-23.40::obj-67" : [ "live.gain~[39]", "live.gain~", 0 ],
			"obj-3::obj-23.41::obj-55" : [ "Impact duration[44]", "width", 0 ],
			"obj-3::obj-23.41::obj-67" : [ "live.gain~[40]", "live.gain~", 0 ],
			"obj-3::obj-23.42::obj-55" : [ "Impact duration[45]", "width", 0 ],
			"obj-3::obj-23.42::obj-67" : [ "live.gain~[41]", "live.gain~", 0 ],
			"obj-3::obj-23.43::obj-55" : [ "Impact duration[46]", "width", 0 ],
			"obj-3::obj-23.43::obj-67" : [ "live.gain~[42]", "live.gain~", 0 ],
			"obj-3::obj-23.44::obj-55" : [ "Impact duration[47]", "width", 0 ],
			"obj-3::obj-23.44::obj-67" : [ "live.gain~[43]", "live.gain~", 0 ],
			"obj-3::obj-23.45::obj-55" : [ "Impact duration[48]", "width", 0 ],
			"obj-3::obj-23.45::obj-67" : [ "live.gain~[44]", "live.gain~", 0 ],
			"obj-3::obj-23.46::obj-55" : [ "Impact duration[49]", "width", 0 ],
			"obj-3::obj-23.46::obj-67" : [ "live.gain~[45]", "live.gain~", 0 ],
			"obj-3::obj-23.47::obj-55" : [ "Impact duration[50]", "width", 0 ],
			"obj-3::obj-23.47::obj-67" : [ "live.gain~[46]", "live.gain~", 0 ],
			"obj-3::obj-23.48::obj-55" : [ "Impact duration[51]", "width", 0 ],
			"obj-3::obj-23.48::obj-67" : [ "live.gain~[47]", "live.gain~", 0 ],
			"obj-3::obj-23.49::obj-55" : [ "Impact duration[54]", "width", 0 ],
			"obj-3::obj-23.49::obj-67" : [ "live.gain~[48]", "live.gain~", 0 ],
			"obj-3::obj-23.4::obj-55" : [ "Impact duration[2]", "width", 0 ],
			"obj-3::obj-23.4::obj-67" : [ "live.gain~[3]", "live.gain~", 0 ],
			"obj-3::obj-23.50::obj-55" : [ "Impact duration[55]", "width", 0 ],
			"obj-3::obj-23.50::obj-67" : [ "live.gain~[49]", "live.gain~", 0 ],
			"obj-3::obj-23.51::obj-55" : [ "Impact duration[56]", "width", 0 ],
			"obj-3::obj-23.51::obj-67" : [ "live.gain~[50]", "live.gain~", 0 ],
			"obj-3::obj-23.52::obj-55" : [ "Impact duration[57]", "width", 0 ],
			"obj-3::obj-23.52::obj-67" : [ "live.gain~[51]", "live.gain~", 0 ],
			"obj-3::obj-23.53::obj-55" : [ "Impact duration[58]", "width", 0 ],
			"obj-3::obj-23.53::obj-67" : [ "live.gain~[52]", "live.gain~", 0 ],
			"obj-3::obj-23.54::obj-55" : [ "Impact duration[59]", "width", 0 ],
			"obj-3::obj-23.54::obj-67" : [ "live.gain~[53]", "live.gain~", 0 ],
			"obj-3::obj-23.55::obj-55" : [ "Impact duration[60]", "width", 0 ],
			"obj-3::obj-23.55::obj-67" : [ "live.gain~[54]", "live.gain~", 0 ],
			"obj-3::obj-23.56::obj-55" : [ "Impact duration[61]", "width", 0 ],
			"obj-3::obj-23.56::obj-67" : [ "live.gain~[55]", "live.gain~", 0 ],
			"obj-3::obj-23.57::obj-55" : [ "Impact duration[62]", "width", 0 ],
			"obj-3::obj-23.57::obj-67" : [ "live.gain~[56]", "live.gain~", 0 ],
			"obj-3::obj-23.58::obj-55" : [ "Impact duration[63]", "width", 0 ],
			"obj-3::obj-23.58::obj-67" : [ "live.gain~[57]", "live.gain~", 0 ],
			"obj-3::obj-23.59::obj-55" : [ "Impact duration[64]", "width", 0 ],
			"obj-3::obj-23.59::obj-67" : [ "live.gain~[62]", "live.gain~", 0 ],
			"obj-3::obj-23.5::obj-55" : [ "Impact duration[3]", "width", 0 ],
			"obj-3::obj-23.5::obj-67" : [ "live.gain~[4]", "live.gain~", 0 ],
			"obj-3::obj-23.60::obj-55" : [ "Impact duration[65]", "width", 0 ],
			"obj-3::obj-23.60::obj-67" : [ "live.gain~[58]", "live.gain~", 0 ],
			"obj-3::obj-23.6::obj-55" : [ "Impact duration[4]", "width", 0 ],
			"obj-3::obj-23.6::obj-67" : [ "live.gain~[5]", "live.gain~", 0 ],
			"obj-3::obj-23.7::obj-55" : [ "Impact duration[5]", "width", 0 ],
			"obj-3::obj-23.7::obj-67" : [ "live.gain~[6]", "live.gain~", 0 ],
			"obj-3::obj-23.8::obj-55" : [ "Impact duration[6]", "width", 0 ],
			"obj-3::obj-23.8::obj-67" : [ "live.gain~[7]", "live.gain~", 0 ],
			"obj-3::obj-23.9::obj-55" : [ "Impact duration[13]", "width", 0 ],
			"obj-3::obj-23.9::obj-67" : [ "live.gain~[8]", "live.gain~", 0 ],
			"obj-3::obj-43" : [ "slider", "slider", 0 ],
			"obj-3::obj-47" : [ "live.dial[1]", "live.dial", 0 ],
			"obj-3::obj-48" : [ "number", "number", 0 ],
			"obj-3::obj-52" : [ "live.dial[2]", "live.dial", 0 ],
			"obj-3::obj-55" : [ "Impact duration[52]", "width", 0 ],
			"obj-3::obj-57" : [ "number[1]", "number[1]", 0 ],
			"obj-3::obj-64" : [ "live.gain~[61]", "Output gain", 0 ],
			"obj-3::obj-67" : [ "live.dial[3]", "live.dial", 0 ],
			"obj-3::obj-9" : [ "number[2]", "number[2]", 0 ],
			"parameterbanks" : 			{
				"0" : 				{
					"index" : 0,
					"name" : "",
					"parameters" : [ "-", "-", "-", "-", "-", "-", "-", "-" ]
				}

			}
,
			"parameter_overrides" : 			{
				"obj-3::obj-23.10::obj-55" : 				{
					"parameter_longname" : "Impact duration[14]"
				}
,
				"obj-3::obj-23.10::obj-67" : 				{
					"parameter_longname" : "live.gain~[9]"
				}
,
				"obj-3::obj-23.11::obj-55" : 				{
					"parameter_longname" : "Impact duration[15]"
				}
,
				"obj-3::obj-23.11::obj-67" : 				{
					"parameter_longname" : "live.gain~[10]"
				}
,
				"obj-3::obj-23.12::obj-55" : 				{
					"parameter_longname" : "Impact duration[16]"
				}
,
				"obj-3::obj-23.12::obj-67" : 				{
					"parameter_longname" : "live.gain~[11]"
				}
,
				"obj-3::obj-23.13::obj-55" : 				{
					"parameter_longname" : "Impact duration[17]"
				}
,
				"obj-3::obj-23.13::obj-67" : 				{
					"parameter_longname" : "live.gain~[12]"
				}
,
				"obj-3::obj-23.14::obj-55" : 				{
					"parameter_longname" : "Impact duration[18]"
				}
,
				"obj-3::obj-23.14::obj-67" : 				{
					"parameter_longname" : "live.gain~[13]"
				}
,
				"obj-3::obj-23.15::obj-55" : 				{
					"parameter_longname" : "Impact duration[19]"
				}
,
				"obj-3::obj-23.15::obj-67" : 				{
					"parameter_longname" : "live.gain~[14]"
				}
,
				"obj-3::obj-23.16::obj-55" : 				{
					"parameter_longname" : "Impact duration[20]"
				}
,
				"obj-3::obj-23.16::obj-67" : 				{
					"parameter_longname" : "live.gain~[15]"
				}
,
				"obj-3::obj-23.17::obj-55" : 				{
					"parameter_longname" : "Impact duration[21]"
				}
,
				"obj-3::obj-23.17::obj-67" : 				{
					"parameter_longname" : "live.gain~[16]"
				}
,
				"obj-3::obj-23.18::obj-55" : 				{
					"parameter_longname" : "Impact duration[22]"
				}
,
				"obj-3::obj-23.18::obj-67" : 				{
					"parameter_longname" : "live.gain~[17]"
				}
,
				"obj-3::obj-23.19::obj-55" : 				{
					"parameter_longname" : "Impact duration[23]"
				}
,
				"obj-3::obj-23.19::obj-67" : 				{
					"parameter_longname" : "live.gain~[18]"
				}
,
				"obj-3::obj-23.1::obj-55" : 				{
					"parameter_longname" : "Impact duration[66]"
				}
,
				"obj-3::obj-23.1::obj-67" : 				{
					"parameter_longname" : "live.gain~[59]"
				}
,
				"obj-3::obj-23.20::obj-55" : 				{
					"parameter_longname" : "Impact duration[24]"
				}
,
				"obj-3::obj-23.20::obj-67" : 				{
					"parameter_longname" : "live.gain~[19]"
				}
,
				"obj-3::obj-23.21::obj-55" : 				{
					"parameter_longname" : "Impact duration[25]"
				}
,
				"obj-3::obj-23.21::obj-67" : 				{
					"parameter_longname" : "live.gain~[20]"
				}
,
				"obj-3::obj-23.22::obj-55" : 				{
					"parameter_longname" : "Impact duration[26]"
				}
,
				"obj-3::obj-23.22::obj-67" : 				{
					"parameter_longname" : "live.gain~[21]"
				}
,
				"obj-3::obj-23.23::obj-55" : 				{
					"parameter_longname" : "Impact duration[27]"
				}
,
				"obj-3::obj-23.23::obj-67" : 				{
					"parameter_longname" : "live.gain~[22]"
				}
,
				"obj-3::obj-23.24::obj-55" : 				{
					"parameter_longname" : "Impact duration[28]"
				}
,
				"obj-3::obj-23.24::obj-67" : 				{
					"parameter_longname" : "live.gain~[23]"
				}
,
				"obj-3::obj-23.25::obj-55" : 				{
					"parameter_longname" : "Impact duration[29]"
				}
,
				"obj-3::obj-23.25::obj-67" : 				{
					"parameter_longname" : "live.gain~[24]"
				}
,
				"obj-3::obj-23.26::obj-55" : 				{
					"parameter_longname" : "Impact duration[30]"
				}
,
				"obj-3::obj-23.26::obj-67" : 				{
					"parameter_longname" : "live.gain~[25]"
				}
,
				"obj-3::obj-23.27::obj-55" : 				{
					"parameter_longname" : "Impact duration[31]"
				}
,
				"obj-3::obj-23.27::obj-67" : 				{
					"parameter_longname" : "live.gain~[26]"
				}
,
				"obj-3::obj-23.28::obj-55" : 				{
					"parameter_longname" : "Impact duration[32]"
				}
,
				"obj-3::obj-23.28::obj-67" : 				{
					"parameter_longname" : "live.gain~[27]"
				}
,
				"obj-3::obj-23.29::obj-55" : 				{
					"parameter_longname" : "Impact duration[33]"
				}
,
				"obj-3::obj-23.29::obj-67" : 				{
					"parameter_longname" : "live.gain~[28]"
				}
,
				"obj-3::obj-23.2::obj-67" : 				{
					"parameter_longname" : "live.gain~[1]"
				}
,
				"obj-3::obj-23.30::obj-55" : 				{
					"parameter_longname" : "Impact duration[34]"
				}
,
				"obj-3::obj-23.30::obj-67" : 				{
					"parameter_longname" : "live.gain~[29]"
				}
,
				"obj-3::obj-23.31::obj-55" : 				{
					"parameter_longname" : "Impact duration[35]"
				}
,
				"obj-3::obj-23.31::obj-67" : 				{
					"parameter_longname" : "live.gain~[30]"
				}
,
				"obj-3::obj-23.32::obj-55" : 				{
					"parameter_longname" : "Impact duration[53]"
				}
,
				"obj-3::obj-23.32::obj-67" : 				{
					"parameter_longname" : "live.gain~[31]"
				}
,
				"obj-3::obj-23.33::obj-55" : 				{
					"parameter_longname" : "Impact duration[36]"
				}
,
				"obj-3::obj-23.33::obj-67" : 				{
					"parameter_longname" : "live.gain~[32]"
				}
,
				"obj-3::obj-23.34::obj-55" : 				{
					"parameter_longname" : "Impact duration[37]"
				}
,
				"obj-3::obj-23.34::obj-67" : 				{
					"parameter_longname" : "live.gain~[33]"
				}
,
				"obj-3::obj-23.35::obj-55" : 				{
					"parameter_longname" : "Impact duration[38]"
				}
,
				"obj-3::obj-23.35::obj-67" : 				{
					"parameter_longname" : "live.gain~[34]"
				}
,
				"obj-3::obj-23.36::obj-55" : 				{
					"parameter_longname" : "Impact duration[39]"
				}
,
				"obj-3::obj-23.36::obj-67" : 				{
					"parameter_longname" : "live.gain~[35]"
				}
,
				"obj-3::obj-23.37::obj-55" : 				{
					"parameter_longname" : "Impact duration[40]"
				}
,
				"obj-3::obj-23.37::obj-67" : 				{
					"parameter_longname" : "live.gain~[36]"
				}
,
				"obj-3::obj-23.38::obj-55" : 				{
					"parameter_longname" : "Impact duration[41]"
				}
,
				"obj-3::obj-23.38::obj-67" : 				{
					"parameter_longname" : "live.gain~[37]"
				}
,
				"obj-3::obj-23.39::obj-55" : 				{
					"parameter_longname" : "Impact duration[42]"
				}
,
				"obj-3::obj-23.39::obj-67" : 				{
					"parameter_longname" : "live.gain~[38]"
				}
,
				"obj-3::obj-23.3::obj-55" : 				{
					"parameter_longname" : "Impact duration[1]"
				}
,
				"obj-3::obj-23.3::obj-67" : 				{
					"parameter_longname" : "live.gain~[2]"
				}
,
				"obj-3::obj-23.40::obj-55" : 				{
					"parameter_longname" : "Impact duration[43]"
				}
,
				"obj-3::obj-23.40::obj-67" : 				{
					"parameter_longname" : "live.gain~[39]"
				}
,
				"obj-3::obj-23.41::obj-55" : 				{
					"parameter_longname" : "Impact duration[44]"
				}
,
				"obj-3::obj-23.41::obj-67" : 				{
					"parameter_longname" : "live.gain~[40]"
				}
,
				"obj-3::obj-23.42::obj-55" : 				{
					"parameter_longname" : "Impact duration[45]"
				}
,
				"obj-3::obj-23.42::obj-67" : 				{
					"parameter_longname" : "live.gain~[41]"
				}
,
				"obj-3::obj-23.43::obj-55" : 				{
					"parameter_longname" : "Impact duration[46]"
				}
,
				"obj-3::obj-23.43::obj-67" : 				{
					"parameter_longname" : "live.gain~[42]"
				}
,
				"obj-3::obj-23.44::obj-55" : 				{
					"parameter_longname" : "Impact duration[47]"
				}
,
				"obj-3::obj-23.44::obj-67" : 				{
					"parameter_longname" : "live.gain~[43]"
				}
,
				"obj-3::obj-23.45::obj-55" : 				{
					"parameter_longname" : "Impact duration[48]"
				}
,
				"obj-3::obj-23.45::obj-67" : 				{
					"parameter_longname" : "live.gain~[44]"
				}
,
				"obj-3::obj-23.46::obj-55" : 				{
					"parameter_longname" : "Impact duration[49]"
				}
,
				"obj-3::obj-23.46::obj-67" : 				{
					"parameter_longname" : "live.gain~[45]"
				}
,
				"obj-3::obj-23.47::obj-55" : 				{
					"parameter_longname" : "Impact duration[50]"
				}
,
				"obj-3::obj-23.47::obj-67" : 				{
					"parameter_longname" : "live.gain~[46]"
				}
,
				"obj-3::obj-23.48::obj-55" : 				{
					"parameter_longname" : "Impact duration[51]"
				}
,
				"obj-3::obj-23.48::obj-67" : 				{
					"parameter_longname" : "live.gain~[47]"
				}
,
				"obj-3::obj-23.49::obj-55" : 				{
					"parameter_longname" : "Impact duration[54]"
				}
,
				"obj-3::obj-23.49::obj-67" : 				{
					"parameter_longname" : "live.gain~[48]"
				}
,
				"obj-3::obj-23.4::obj-55" : 				{
					"parameter_longname" : "Impact duration[2]"
				}
,
				"obj-3::obj-23.4::obj-67" : 				{
					"parameter_longname" : "live.gain~[3]"
				}
,
				"obj-3::obj-23.50::obj-55" : 				{
					"parameter_longname" : "Impact duration[55]"
				}
,
				"obj-3::obj-23.50::obj-67" : 				{
					"parameter_longname" : "live.gain~[49]"
				}
,
				"obj-3::obj-23.51::obj-55" : 				{
					"parameter_longname" : "Impact duration[56]"
				}
,
				"obj-3::obj-23.51::obj-67" : 				{
					"parameter_longname" : "live.gain~[50]"
				}
,
				"obj-3::obj-23.52::obj-55" : 				{
					"parameter_longname" : "Impact duration[57]"
				}
,
				"obj-3::obj-23.52::obj-67" : 				{
					"parameter_longname" : "live.gain~[51]"
				}
,
				"obj-3::obj-23.53::obj-55" : 				{
					"parameter_longname" : "Impact duration[58]"
				}
,
				"obj-3::obj-23.53::obj-67" : 				{
					"parameter_longname" : "live.gain~[52]"
				}
,
				"obj-3::obj-23.54::obj-55" : 				{
					"parameter_longname" : "Impact duration[59]"
				}
,
				"obj-3::obj-23.54::obj-67" : 				{
					"parameter_longname" : "live.gain~[53]"
				}
,
				"obj-3::obj-23.55::obj-55" : 				{
					"parameter_longname" : "Impact duration[60]"
				}
,
				"obj-3::obj-23.55::obj-67" : 				{
					"parameter_longname" : "live.gain~[54]"
				}
,
				"obj-3::obj-23.56::obj-55" : 				{
					"parameter_longname" : "Impact duration[61]"
				}
,
				"obj-3::obj-23.56::obj-67" : 				{
					"parameter_longname" : "live.gain~[55]"
				}
,
				"obj-3::obj-23.57::obj-55" : 				{
					"parameter_longname" : "Impact duration[62]"
				}
,
				"obj-3::obj-23.57::obj-67" : 				{
					"parameter_longname" : "live.gain~[56]"
				}
,
				"obj-3::obj-23.58::obj-55" : 				{
					"parameter_longname" : "Impact duration[63]"
				}
,
				"obj-3::obj-23.58::obj-67" : 				{
					"parameter_longname" : "live.gain~[57]"
				}
,
				"obj-3::obj-23.59::obj-55" : 				{
					"parameter_longname" : "Impact duration[64]"
				}
,
				"obj-3::obj-23.59::obj-67" : 				{
					"parameter_longname" : "live.gain~[62]"
				}
,
				"obj-3::obj-23.5::obj-55" : 				{
					"parameter_longname" : "Impact duration[3]"
				}
,
				"obj-3::obj-23.5::obj-67" : 				{
					"parameter_longname" : "live.gain~[4]"
				}
,
				"obj-3::obj-23.60::obj-55" : 				{
					"parameter_longname" : "Impact duration[65]"
				}
,
				"obj-3::obj-23.60::obj-67" : 				{
					"parameter_longname" : "live.gain~[58]"
				}
,
				"obj-3::obj-23.6::obj-55" : 				{
					"parameter_longname" : "Impact duration[4]"
				}
,
				"obj-3::obj-23.6::obj-67" : 				{
					"parameter_longname" : "live.gain~[5]"
				}
,
				"obj-3::obj-23.7::obj-55" : 				{
					"parameter_longname" : "Impact duration[5]"
				}
,
				"obj-3::obj-23.7::obj-67" : 				{
					"parameter_longname" : "live.gain~[6]"
				}
,
				"obj-3::obj-23.8::obj-55" : 				{
					"parameter_longname" : "Impact duration[6]"
				}
,
				"obj-3::obj-23.8::obj-67" : 				{
					"parameter_longname" : "live.gain~[7]"
				}
,
				"obj-3::obj-23.9::obj-55" : 				{
					"parameter_longname" : "Impact duration[13]"
				}
,
				"obj-3::obj-23.9::obj-67" : 				{
					"parameter_longname" : "live.gain~[8]"
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"parameter_map" : 		{
			"key" : 			{
				"button" : 				{
					"srcname" : "0.modifiers.12.code.key",
					"min" : 0.0,
					"max" : 1.0,
					"flags" : 1,
					"active" : 0,
					"trigger" : 1
				}
,
				"button[1]" : 				{
					"srcname" : "0.modifiers.13.code.key",
					"min" : 0.0,
					"max" : 1.0,
					"flags" : 1,
					"active" : 0,
					"trigger" : 1
				}
,
				"button[2]" : 				{
					"srcname" : "0.modifiers.14.code.key",
					"min" : 0.0,
					"max" : 1.0,
					"flags" : 1,
					"active" : 0,
					"trigger" : 1
				}
,
				"button[3]" : 				{
					"srcname" : "0.modifiers.15.code.key",
					"min" : 0.0,
					"max" : 1.0,
					"flags" : 1,
					"active" : 0,
					"trigger" : 1
				}
,
				"button[4]" : 				{
					"srcname" : "0.modifiers.17.code.key",
					"min" : 0.0,
					"max" : 1.0,
					"flags" : 1,
					"active" : 0,
					"trigger" : 1
				}
,
				"button[5]" : 				{
					"srcname" : "0.modifiers.16.code.key",
					"min" : 0.0,
					"max" : 1.0,
					"flags" : 1,
					"active" : 0,
					"trigger" : 1
				}
,
				"button[6]" : 				{
					"srcname" : "0.modifiers.32.code.key",
					"min" : 0.0,
					"max" : 1.0,
					"flags" : 1,
					"active" : 0,
					"trigger" : 1
				}
,
				"button[7]" : 				{
					"srcname" : "0.modifiers.34.code.key",
					"min" : 0.0,
					"max" : 1.0,
					"flags" : 1,
					"active" : 0,
					"trigger" : 1
				}

			}
,
			"midi" : 			{
				"button" : 				{
					"srcname" : "48.note.0.chan.midi",
					"min" : 0.0,
					"max" : 1.0,
					"flags" : 3,
					"trigger" : 1
				}
,
				"button[1]" : 				{
					"srcname" : "49.note.0.chan.midi",
					"min" : 0.0,
					"max" : 1.0,
					"flags" : 3,
					"trigger" : 1
				}
,
				"button[2]" : 				{
					"srcname" : "50.note.0.chan.midi",
					"min" : 0.0,
					"max" : 1.0,
					"flags" : 3,
					"trigger" : 1
				}
,
				"button[3]" : 				{
					"srcname" : "51.note.0.chan.midi",
					"min" : 0.0,
					"max" : 1.0,
					"flags" : 3,
					"trigger" : 1
				}
,
				"button[4]" : 				{
					"srcname" : "52.note.0.chan.midi",
					"min" : 0.0,
					"max" : 1.0,
					"flags" : 3,
					"trigger" : 1
				}
,
				"button[5]" : 				{
					"srcname" : "53.note.0.chan.midi",
					"min" : 0.0,
					"max" : 1.0,
					"flags" : 3,
					"trigger" : 1
				}
,
				"button[6]" : 				{
					"srcname" : "54.note.0.chan.midi",
					"min" : 0.0,
					"max" : 1.0,
					"flags" : 3,
					"trigger" : 1
				}
,
				"button[7]" : 				{
					"srcname" : "55.note.0.chan.midi",
					"min" : 0.0,
					"max" : 1.0,
					"flags" : 3,
					"trigger" : 1
				}
,
				"Impact duration[52]" : 				{
					"srcname" : "73.ctrl.0.chan.midi",
					"min" : 0.5,
					"max" : 20.0,
					"flags" : 2
				}
,
				"toggle" : 				{
					"srcname" : "79.ctrl.0.chan.midi",
					"min" : 0.0,
					"max" : 1.0,
					"flags" : 2
				}
,
				"number" : 				{
					"srcname" : "1.ctrl.0.chan.midi",
					"min" : 0.0,
					"max" : 127.0,
					"flags" : 2
				}
,
				"number[1]" : 				{
					"srcname" : "bend.0.chan.midi",
					"min" : 0.0,
					"max" : 127.0,
					"flags" : 2
				}
,
				"live.gain~[61]" : 				{
					"srcname" : "85.ctrl.0.chan.midi",
					"min" : -70.0,
					"max" : 6.0,
					"flags" : 2
				}
,
				"slider" : 				{
					"srcname" : "75.ctrl.0.chan.midi",
					"min" : 0.0,
					"max" : 4.0,
					"flags" : 2
				}
,
				"number[2]" : 				{
					"srcname" : "74.ctrl.0.chan.midi",
					"min" : 0.0,
					"max" : 1.0,
					"flags" : 2
				}

			}

		}
,
		"dependency_cache" : [ 			{
				"name" : "08 Under Star (album edition).mp3",
				"bootpath" : "~/Downloads",
				"patcherrelativepath" : "../../../../../../../Downloads",
				"type" : "Mp3",
				"implicit" : 1
			}
, 			{
				"name" : "11-REC_bois_secouer-150319_1238_pingpong_woodbox_FB.wav",
				"bootpath" : "~/Downloads",
				"patcherrelativepath" : "../../../../../../../Downloads",
				"type" : "WAVE",
				"implicit" : 1
			}
, 			{
				"name" : "1_Parrots_8-15am.mp3",
				"bootpath" : "~/Downloads",
				"patcherrelativepath" : "../../../../../../../Downloads",
				"type" : "Mp3",
				"implicit" : 1
			}
, 			{
				"name" : "1dSAV.CubicString.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "polyString.maxpat",
				"bootpath" : "~/work/these/nonlinear_string/SAV-string-simulations/src/maxmsp/test patches",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
