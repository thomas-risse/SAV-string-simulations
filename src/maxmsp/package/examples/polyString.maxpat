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
		"rect" : [ -75.0, -894.0, 1439.0, 848.0 ],
		"openinpresentation" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 852.0, 616.5, 150.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 406.0, 504.0, 150.0, 20.0 ],
					"text" : "Update parameters"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 822.0, 614.5, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 376.0, 502.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1079.0, 210.0, 92.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1005.5, 132.097701072692871, 150.0, 20.0 ],
					"text" : "Recall presets"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-196",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 541.5, 97.0, 67.0, 22.0 ],
					"restore" : [ 0.078740157480315 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "pattr Eamp",
					"varname" : "Eamp"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-197",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 455.0, 97.0, 77.0, 22.0 ],
					"restore" : [ 0.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "pattr Espeed",
					"varname" : "Espeed"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-198",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 376.0, 97.0, 70.0, 22.0 ],
					"restore" : [ 0.3 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "pattr Ebase",
					"varname" : "Ebase"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-193",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 542.0, 268.0, 66.0, 22.0 ],
					"restore" : [ 0.133858267716535 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "pattr Lamp",
					"varname" : "Lamp"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-194",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 455.0, 268.0, 75.0, 22.0 ],
					"restore" : [ 0.178740157480315 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "pattr Lspeed",
					"varname" : "Lspeed"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-195",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 376.0, 268.0, 69.0, 22.0 ],
					"restore" : [ 0.3 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "pattr Lbase",
					"varname" : "Lbase"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-192",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 542.0, 439.5, 68.0, 22.0 ],
					"restore" : [ 0.102362204724409 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "pattr Ramp",
					"varname" : "Ramp"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-191",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 455.0, 439.5, 77.0, 22.0 ],
					"restore" : [ 0.1 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "pattr Rspeed",
					"varname" : "Rspeed"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-190",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 376.0, 439.5, 71.0, 22.0 ],
					"restore" : [ 0.3 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "pattr Rbase",
					"varname" : "Rbase"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-189",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 126.5, 407.0, 86.0, 22.0 ],
					"restore" : [ 0.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "pattr bendamp",
					"varname" : "bendamp"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-188",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 27.0, 407.0, 95.0, 22.0 ],
					"restore" : [ 7.50551181102363 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "pattr bendspeed",
					"varname" : "bendspeed"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-187",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 291.0, 433.0, 55.0, 35.0 ],
					"restore" : [ 100.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "pattr lambda0",
					"varname" : "lambda0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-186",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 30.0, 606.0, 71.0, 22.0 ],
					"restore" : [ 0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "pattr extype",
					"varname" : "extype"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-185",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 30.0, 708.0, 68.0, 22.0 ],
					"restore" : [ 2.02991452991453 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "pattr ingain",
					"varname" : "ingain"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-184",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 152.0, 606.0, 64.0, 22.0 ],
					"restore" : [ 1.72834645669292 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "pattr width",
					"varname" : "width"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-183",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 873.0, 498.5, 81.0, 22.0 ],
					"restore" : [ -6.8375, -6.8375, -6.8375, -6.8375, -6.8375, -6.8375, -6.8375, -6.8375, -6.512499999999999, -6.1875, -6.1875, -5.862500000000001, -5.5375, -5.2125, -5.2125, -4.887499999999999, -4.5625, -4.5625, -4.237500000000001, -4.237500000000001, -3.912500000000001, -3.912500000000001, -3.587499999999999, -3.587499999999999, -3.587499999999999, -3.262499999999999, -3.262499999999999, -2.9375, -2.9375, -2.9375, -2.9375, -2.9375, -2.612500000000001, -2.612500000000001, -2.287500000000001, -1.962499999999999, -1.962499999999999, -1.962499999999999, -1.637499999999999, -1.637499999999999, -1.637499999999999, -1.637499999999999, -1.637499999999999, -1.637499999999999, -1.637499999999999, -1.3125, -1.3125, -0.987500000000001, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "pattr outgains",
					"varname" : "outgains"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-182",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 873.0, 351.5, 52.0, 22.0 ],
					"restore" : [ -0.118893682956696, -0.118893682956696, -0.118893682956696, -0.056393682956696, -0.056393682956696, 0.006106317043304, 0.006106317043304, 0.068606317043304, 0.068606317043304, 0.193606317043304, 0.193606317043304, 0.256106317043304, 0.256106317043304, 0.381106317043304, 0.381106317043304, 0.381106317043304, 0.443606317043304, 0.506106317043304, 0.568606317043304, 0.568606317043304, 0.631106317043304, 0.631106317043304, 0.631106317043304, 0.631106317043304, 0.693606317043304, 0.693606317043304, 0.756106317043304, 0.818606317043304, 0.818606317043304, 0.881106317043304, 0.881106317043304, 0.881106317043304, 0.881106317043304, 0.881106317043304, 0.943606317043304, 0.943606317043304, 0.943606317043304, 0.943606317043304, 0.943606317043304, 0.943606317043304, 0.943606317043304, 0.693606317043304, 0.693606317043304, 0.693606317043304, 0.693606317043304, 0.693606317043304, 0.693606317043304, 0.693606317043304, 0.756106317043304, 0.818606317043304, 0.818606317043304, 0.818606317043304, 0.881106317043304, 0.943606317043304, 1.006106317043304, 1.006106317043304, 1.068606317043304, 1.068606317043304, 1.068606317043304, 1.068606317043304 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "pattr t1s",
					"varname" : "t1s"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-180",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 873.0, 204.5, 52.0, 22.0 ],
					"restore" : [ 1.068606317043304, 1.068606317043304, 1.068606317043304, 1.068606317043304, 1.068606317043304, 1.131106317043304, 1.162356317043304, 1.193606317043304, 1.193606317043304, 1.224856317043304, 1.256106317043304, 1.318606317043304, 1.318606317043304, 1.318606317043304, 1.381106317043304, 1.381106317043304, 1.412356317043304, 1.443606317043304, 1.506106317043304, 1.506106317043304, 1.506106317043304, 1.568606317043304, 1.568606317043304, 1.568606317043304, 1.568606317043304, 1.568606317043304, 1.568606317043304, 1.568606317043304, 1.568606317043304, 1.568606317043304, 1.568606317043304, 1.568606317043304, 1.568606317043304, 1.568606317043304, 1.568606317043304, 1.568606317043304, 1.381106317043304, 1.381106317043304, 1.318606317043304, 1.318606317043304, 1.318606317043304, 1.318606317043304, 1.318606317043304, 1.318606317043304, 1.318606317043304, 1.318606317043304, 1.318606317043304, 1.318606317043304, 1.318606317043304, 1.318606317043304, 1.318606317043304, 1.318606317043304, 1.318606317043304, 1.318606317043304, 1.318606317043304, 1.318606317043304, 1.318606317043304, 1.318606317043304, 1.318606317043304, 1.381106317043304 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "pattr t0s",
					"varname" : "t0s"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-179",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 873.0, 58.5, 65.0, 22.0 ],
					"restore" : [ -3.995114946365356, -3.995114946365356, -3.945114946365357, -3.945114946365357, -3.945114946365357, -3.945114946365357, -3.945114946365357, -3.945114946365357, -3.945114946365357, -3.945114946365357, -3.945114946365357, -3.945114946365357, -3.945114946365357, -3.945114946365357, -3.945114946365357, -3.945114946365357, -3.945114946365357, -3.945114946365357, -3.945114946365357, -3.945114946365357, -3.945114946365357, -3.945114946365357, -3.895114946365356, -3.895114946365356, -3.845114946365356, -3.845114946365356, -3.795114946365357, -3.795114946365357, -3.795114946365357, -3.745114946365356, -3.745114946365356, -3.695114946365357, -3.595114946365356, -3.595114946365356, -3.545114946365357, -3.545114946365357, -3.545114946365357, -3.495114946365356, -3.495114946365356, -3.495114946365356, -3.495114946365356, -3.495114946365356, -3.445114946365357, -3.445114946365357, -3.395114946365356, -3.395114946365356, -3.395114946365356, -3.395114946365356, -3.395114946365356, -3.395114946365356, -3.395114946365356, -3.395114946365356, -3.395114946365356, -3.395114946365356, -3.345114946365356, -3.345114946365356, -3.345114946365356, -3.295114946365357, -3.295114946365357, -3.295114946365357 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "pattr betas",
					"varname" : "betas"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-174",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 248.0, 533.0, 84.0, 22.0 ],
					"text" : "s globalparam"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-173",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 248.0, 449.0, 33.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 251.5, 306.0, 50.0, 22.0 ],
					"varname" : "number"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-171",
					"linecount" : 3,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 248.0, 480.0, 84.0, 49.0 ],
					"text" : "\"regularisation parameter\" $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-168",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 249.0, 376.5, 97.0, 47.0 ],
					"presentation" : 1,
					"presentation_linecount" : 3,
					"presentation_rect" : [ 251.5, 256.0, 89.0, 47.0 ],
					"text" : "Regularisation parameter lambda_0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-165",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 169.0, 736.0, 72.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 174.5, 209.0, 72.0, 20.0 ],
					"text" : "Input Gain",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-164",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 192.0, 647.0, 60.0, 33.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 266.0, 163.5, 60.0, 33.0 ],
					"text" : "Impulse width"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-162",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 60.0, 637.0, 74.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 65.0, 170.0, 74.0, 20.0 ],
					"text" : "Pluck/struck"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-157",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 24.0, 581.0, 185.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 26.0, 124.0, 185.0, 20.0 ],
					"text" : "GLOBAL INPUT PARAMETERS"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-149",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 686.0, 498.5, 150.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 377.0, 393.097701072692871, 150.0, 20.0 ],
					"text" : "Output gain"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-150",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 686.0, 615.5, 57.0, 22.0 ],
					"text" : "s gainout"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-151",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 686.0, 523.5, 275.0, 80.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 377.0, 418.097701072692871, 275.0, 80.0 ],
					"setminmax" : [ -20.0, 6.0 ],
					"size" : 60,
					"varname" : "multislider[3]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-145",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 686.0, 352.5, 150.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 377.0, 281.097701072692871, 150.0, 20.0 ],
					"text" : "Second decay time"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-146",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 686.0, 469.5, 54.0, 22.0 ],
					"text" : "s t1table"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-147",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 686.0, 377.5, 275.0, 80.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 377.0, 306.097701072692871, 275.0, 80.0 ],
					"setminmax" : [ -2.0, 3.0 ],
					"size" : 60,
					"varname" : "multislider[2]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-139",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 686.0, 205.5, 150.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 377.0, 171.097701072692871, 150.0, 20.0 ],
					"text" : "First decay time"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-140",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 686.0, 322.5, 54.0, 22.0 ],
					"text" : "s t0table"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-142",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 686.0, 230.5, 275.0, 80.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 377.0, 196.097701072692871, 275.0, 80.0 ],
					"setminmax" : [ -2.0, 3.0 ],
					"size" : 60,
					"varname" : "multislider[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-138",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 686.0, 59.5, 150.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 377.0, 59.097701072692871, 150.0, 20.0 ],
					"text" : "Inharmonicity"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-135",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 686.0, 32.5, 252.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 377.0, 27.097701072692871, 252.0, 20.0 ],
					"text" : "INSTANCE-SPECIFIC PARAMETERS"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-132",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 431.0, 613.0, 150.0, 20.0 ],
					"text" : "Open specific instance"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-129",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 248.0, 53.0, 84.0, 33.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 190.0, 55.0, 117.0, 20.0 ],
					"text" : "Read/play midi file"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-126",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 94.5, 92.5, 150.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 27.0, 55.0, 150.0, 20.0 ],
					"text" : "Input midi device"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-124",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 128.0, 258.5, 219.0, 33.0 ],
					"text" : "Lowest note (must be the same than in polyString_instance.maxpat)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-122",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 25.0, 27.097701072692871, 192.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 25.0, 27.097701072692871, 192.0, 20.0 ],
					"text" : "MIDI"
				}

			}
, 			{
				"box" : 				{
					"border" : 2.0,
					"id" : "obj-119",
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 519.0, 756.0, 5.0, 100.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 16.5, 47.5, 345.0, 5.0 ]
				}

			}
, 			{
				"box" : 				{
					"border" : 2.0,
					"id" : "obj-118",
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 519.0, 756.0, 5.0, 100.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 18.0, 144.0, 343.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"border" : 2.0,
					"id" : "obj-117",
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 519.0, 756.0, 5.0, 100.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 18.0, 275.0, 211.0, 11.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-116",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 558.0, 746.0, 74.045980215072632, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 178.477009892463684, 460.0, 74.045980215072632, 20.0 ],
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
					"patching_rect" : [ 551.0, 817.0, 100.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 261.0, 459.0, 100.0, 22.0 ],
					"varname" : "umenu[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-108",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 551.0, 777.0, 67.0, 22.0 ],
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
					"patching_rect" : [ 519.0, 756.0, 5.0, 100.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 18.0, 380.0, 343.0, 10.0 ]
				}

			}
, 			{
				"box" : 				{
					"border" : 2.0,
					"id" : "obj-103",
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 519.0, 756.0, 5.0, 100.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 675.0, 47.097701072692871, 300.0, 10.0 ]
				}

			}
, 			{
				"box" : 				{
					"border" : 3.0,
					"id" : "obj-102",
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 519.0, 756.0, 5.0, 100.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 369.0, 48.097701072692871, 299.0, 14.0 ]
				}

			}
, 			{
				"box" : 				{
					"border" : 3.0,
					"id" : "obj-76",
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 519.0, 756.0, 5.0, 100.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 987.0, 47.0, 173.0, 28.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-75",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 438.0, 812.0, 60.431656837463379, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 25.0, 355.0, 60.431656837463379, 20.0 ],
					"text" : "OUTPUT"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-114",
					"local" : 1,
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 377.0, 812.0, 48.25, 48.25 ],
					"presentation" : 1,
					"presentation_rect" : [ 252.375, 393.375, 48.25, 48.25 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-120",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"orientation" : 1,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 377.0, 752.0, 136.0, 47.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 32.0, 394.0, 136.0, 47.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~[62]",
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
					"id" : "obj-66",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 120.906473636627197, 496.0, 31.0, 22.0 ],
					"text" : "sig~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 120.906473636627197, 450.0, 27.0, 37.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 121.0, 289.0, 27.0, 37.0 ],
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
					"id" : "obj-35",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 54.906473636627197, 459.0, 47.482016086578369, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 55.0, 298.0, 47.482016086578369, 20.0 ],
					"text" : "Speed"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-46",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 25.906473636627197, 530.0, 112.956825733184814, 22.0 ],
					"text" : "*~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-47",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 150.906473636627197, 453.0, 66.187052726745605, 33.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 151.0, 292.0, 66.187052726745605, 33.0 ],
					"text" : "Amplitude (cents)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-48",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 24.0, 380.0, 60.431656837463379, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 26.0, 256.0, 60.431656837463379, 20.0 ],
					"text" : "VIBRATO"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-50",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 25.906473636627197, 450.0, 27.0, 37.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 26.0, 289.0, 27.0, 37.0 ],
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
					"id" : "obj-51",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 25.906473636627197, 496.0, 53.0, 22.0 ],
					"text" : "cycle~ 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 377.0, 414.5, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 682.0, 199.097701072692871, 130.0, 20.0 ],
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
					"patching_rect" : [ 377.0, 517.5, 29.5, 22.0 ],
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
					"patching_rect" : [ 455.0, 542.5, 34.0, 22.0 ],
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
					"patching_rect" : [ 455.0, 513.5, 43.0, 22.0 ],
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
					"patching_rect" : [ 377.0, 547.5, 60.0, 22.0 ],
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
					"patching_rect" : [ 574.0, 469.5, 69.0, 33.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 879.0, 230.097701072692871, 69.0, 33.0 ],
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
					"patching_rect" : [ 542.0, 467.5, 27.0, 37.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 847.0, 228.097701072692871, 27.0, 37.0 ],
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
					"patching_rect" : [ 486.0, 469.5, 49.0, 33.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 791.0, 230.097701072692871, 49.0, 33.0 ],
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
					"patching_rect" : [ 455.0, 467.5, 27.0, 37.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 760.0, 228.097701072692871, 27.0, 37.0 ],
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
					"patching_rect" : [ 409.0, 475.5, 37.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 714.0, 236.097701072692871, 37.0, 20.0 ],
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
					"patching_rect" : [ 377.0, 466.5, 27.0, 37.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 682.0, 227.097701072692871, 27.0, 37.0 ],
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
					"patching_rect" : [ 377.0, 244.5, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 682.0, 128.097701072692871, 130.0, 20.0 ],
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
					"patching_rect" : [ 377.0, 348.5, 29.5, 22.0 ],
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
					"patching_rect" : [ 455.0, 372.0, 34.0, 22.0 ],
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
					"patching_rect" : [ 455.0, 342.0, 43.0, 22.0 ],
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
					"patching_rect" : [ 377.0, 376.5, 60.0, 22.0 ],
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
					"patching_rect" : [ 574.0, 298.0, 69.0, 33.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 879.0, 156.097701072692871, 69.0, 33.0 ],
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
					"patching_rect" : [ 542.0, 296.0, 27.0, 37.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 847.0, 154.097701072692871, 27.0, 37.0 ],
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
					"patching_rect" : [ 486.0, 298.0, 49.0, 33.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 791.0, 156.097701072692871, 49.0, 33.0 ],
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
					"patching_rect" : [ 455.0, 296.0, 27.0, 37.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 760.0, 154.097701072692871, 27.0, 37.0 ],
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
					"patching_rect" : [ 409.0, 304.0, 37.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 714.0, 162.097701072692871, 37.0, 20.0 ],
					"text" : "Base"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 377.0, 295.0, 27.0, 37.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 682.0, 153.097701072692871, 27.0, 37.0 ],
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
					"patching_rect" : [ 377.0, 174.5, 29.5, 22.0 ],
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
					"patching_rect" : [ 455.0, 200.0, 34.0, 22.0 ],
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
					"patching_rect" : [ 455.0, 171.0, 43.0, 22.0 ],
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
					"patching_rect" : [ 377.0, 204.5, 60.0, 22.0 ],
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
					"patching_rect" : [ 574.0, 128.0, 69.0, 33.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 879.0, 87.097701072692871, 69.0, 33.0 ],
					"text" : "LF0\nAmplitude"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 542.0, 127.0, 27.0, 37.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 847.0, 86.097701072692871, 27.0, 37.0 ],
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
					"patching_rect" : [ 486.0, 128.0, 49.0, 33.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 791.0, 87.097701072692871, 49.0, 33.0 ],
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
					"patching_rect" : [ 455.0, 125.0, 27.0, 37.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 760.0, 84.097701072692871, 27.0, 37.0 ],
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
					"patching_rect" : [ 409.0, 133.0, 37.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 714.0, 92.097701072692871, 37.0, 20.0 ],
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
					"patching_rect" : [ 377.0, 125.0, 27.0, 37.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 682.0, 84.097701072692871, 27.0, 37.0 ],
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
					"patching_rect" : [ 377.0, 66.5, 84.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 682.0, 59.097701072692871, 84.0, 20.0 ],
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
					"patching_rect" : [ 377.0, 27.5, 192.0, 33.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 682.0, 27.097701072692871, 266.0, 20.0 ],
					"text" : "EXCITATION AND LISTENING POSITIONS"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 686.0, 176.5, 76.0, 22.0 ],
					"text" : "s betatable"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 686.0, 84.5, 275.0, 80.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 377.0, 84.097701072692871, 275.0, 80.0 ],
					"setminmax" : [ -5.0, -1.0 ],
					"size" : 60,
					"varname" : "multislider"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 249.0, 139.0, 31.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 313.0, 77.5, 31.0, 22.0 ],
					"text" : "stop"
				}

			}
, 			{
				"box" : 				{
					"floatoutput" : 1,
					"id" : "obj-43",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 30.0, 738.0, 133.0, 16.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 33.5, 211.0, 133.0, 16.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "slider",
							"parameter_mmax" : 5.0,
							"parameter_modmode" : 3,
							"parameter_osc_name" : "<default>",
							"parameter_shortname" : "slider",
							"parameter_type" : 0
						}

					}
,
					"size" : 5.0,
					"varname" : "slider"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 754.0, 41.0, 22.0 ],
					"text" : "s gain"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 249.0, 112.0, 62.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 240.0, 77.5, 62.0, 22.0 ],
					"text" : "start 1024"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 249.0, 87.0, 33.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 194.0, 77.5, 33.0, 22.0 ],
					"text" : "read"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "bang", "" ],
					"patching_rect" : [ 249.0, 176.0, 40.0, 22.0 ],
					"text" : "seq"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-55",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 149.0, 633.0, 41.0, 48.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 213.0, 156.0, 41.0, 48.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
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
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 149.0, 685.0, 46.0, 22.0 ],
					"text" : "s width"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 30.0, 635.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 35.0, 168.0, 24.0, 24.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
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
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 675.0, 59.0, 22.0 ],
					"text" : "s exctype"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 92.0, 300.0, 34.0, 22.0 ],
					"text" : "pack"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 92.0, 264.0, 29.5, 22.0 ],
					"text" : "- 23"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 377.0, 612.0, 45.0, 22.0 ],
					"text" : "open 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 92.0, 225.0, 59.0, 22.0 ],
					"text" : "unpack i i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 92.0, 333.0, 76.0, 22.0 ],
					"text" : "target $1, $2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"linecount" : 5,
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 377.0, 647.0, 138.0, 76.0 ],
					"text" : "poly~ polyString_instance 60 @midimode 1 @zone 0 @parallel 1 @threadcount 10",
					"varname" : "poly~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 8,
					"outlettype" : [ "", "", "", "int", "int", "", "int", "" ],
					"patching_rect" : [ 92.0, 193.0, 92.5, 22.0 ],
					"text" : "midiparse"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 27.0, 91.0, 55.0, 23.0 ],
					"text" : "midiinfo"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-22",
					"items" : [ "Arturia KeyLab Essential 49 MIDI In", ",", "Arturia KeyLab Essential 49 DAW In", ",", "to Max 1", ",", "to Max 2" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 27.0, 118.0, 150.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 27.0, 77.0, 150.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-28",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 63.0, 63.0, 77.0, 23.0 ],
					"text" : "loadmess 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 92.0, 161.0, 45.0, 23.0 ],
					"text" : "midiin"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-181",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1036.0, 136.0, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-144",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1051.0, 53.0, 150.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1005.5, 77.5, 150.0, 20.0 ],
					"text" : "Store a preset at index"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-143",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 994.0, 27.097701072692871, 150.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1010.0, 27.097701072692871, 150.0, 20.0 ],
					"text" : "PRESETS"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-141",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1235.0, 47.5, 154.0, 33.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 1003.5, 228.097701072692871, 154.0, 33.0 ],
					"text" : "Write and read preset data to/from disk"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-137",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1235.5, 139.0, 33.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1064.0, 264.0, 33.0, 22.0 ],
					"text" : "read"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-133",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1010.0, 52.0, 35.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1009.0, 105.5, 35.0, 22.0 ],
					"text" : "store"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-130",
					"maxclass" : "number",
					"maximum" : 8,
					"minimum" : 1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1040.0, 79.0, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1055.5, 105.5, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-128",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1010.0, 109.0, 49.0, 22.0 ],
					"text" : "pack s i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-115",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1235.0, 113.5, 89.0, 22.0 ],
					"text" : "storagewindow"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-112",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1235.0, 86.5, 34.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1009.0, 264.0, 34.0, 22.0 ],
					"text" : "write"
				}

			}
, 			{
				"box" : 				{
					"autorestore" : "polyString.json",
					"id" : "obj-109",
					"linecount" : 3,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1235.0, 167.5, 99.0, 49.0 ],
					"saved_object_attributes" : 					{
						"client_rect" : [ 4, 44, 358, 172 ],
						"parameter_enable" : 0,
						"parameter_mappable" : 0,
						"storage_rect" : [ 100, 172, 1128, 300 ]
					}
,
					"text" : "pattrstorage presetmultiple @savemode 0",
					"varname" : "presetmultiple"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-107",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1010.0, 162.0, 151.0, 22.0 ],
					"text" : "pattrstorage presetmultiple"
				}

			}
, 			{
				"box" : 				{
					"bubblesize" : 16,
					"id" : "obj-91",
					"maxclass" : "preset",
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "preset", "int", "preset", "int", "" ],
					"patching_rect" : [ 1010.0, 200.0, 67.0, 48.0 ],
					"pattrstorage" : "presetmultiple",
					"presentation" : 1,
					"presentation_rect" : [ 1009.0, 154.097701072692871, 71.0, 67.097701072692871 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.133674, 0.354866, 0.236742, 1.0 ],
					"id" : "obj-170",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 987.0, 23.0, 402.0, 241.5 ],
					"presentation" : 1,
					"presentation_rect" : [ 987.0, 23.0, 173.0, 278.097701072692871 ],
					"proportion" : 0.5
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 0.666666666666667, 0.564705882352941, 0.380392156862745, 1.0 ],
					"id" : "obj-166",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 240.0, 372.0, 111.0, 194.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 240.0, 249.125, 121.0, 97.25 ],
					"proportion" : 0.5
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 0.333333333333333, 0.231372549019608, 0.274509803921569, 1.0 ],
					"id" : "obj-134",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 678.0, 22.5, 299.0, 620.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 369.0, 23.0, 299.0, 505.097701072692871 ],
					"proportion" : 0.5
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 0.223529411764706, 0.215686274509804, 0.286274509803922, 1.0 ],
					"id" : "obj-121",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 18.0, 23.0, 342.0, 338.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 18.0, 23.0, 343.5, 85.5 ],
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
					"patching_rect" : [ 370.0, 22.5, 300.0, 559.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 675.0, 23.097701072692871, 300.0, 253.0 ],
					"proportion" : 0.5
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 0.285714, 0.256629, 0.217237, 1.0 ],
					"id" : "obj-52",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 16.0, 373.0, 211.0, 193.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 18.0, 249.0, 211.0, 97.5 ],
					"proportion" : 0.5
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
					"patching_rect" : [ 370.0, 742.0, 293.0, 125.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 18.0, 355.0, 343.0, 125.0 ],
					"proportion" : 0.5
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 0.368627450980392, 0.36078431372549, 0.203921568627451, 1.0 ],
					"id" : "obj-161",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 16.0, 575.0, 297.0, 210.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 18.0, 117.0, 343.0, 124.0 ],
					"proportion" : 0.5
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"midpoints" : [ 39.5, 660.0, 39.5, 660.0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-92", 0 ],
					"midpoints" : [ 386.5, 504.0, 386.5, 504.0 ],
					"source" : [ "obj-101", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-91", 0 ],
					"midpoints" : [ 1019.5, 186.0, 1019.5, 186.0 ],
					"source" : [ "obj-107", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-111", 0 ],
					"midpoints" : [ 560.5, 801.0, 560.5, 801.0 ],
					"source" : [ "obj-108", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-174", 0 ],
					"midpoints" : [ 831.5, 648.0, 591.0, 648.0, 591.0, 591.0, 324.0, 591.0, 324.0, 555.0, 243.0, 555.0, 243.0, 528.0, 257.5, 528.0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-108", 0 ],
					"midpoints" : [ 560.5, 840.0, 537.0, 840.0, 537.0, 774.0, 560.5, 774.0 ],
					"source" : [ "obj-111", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-109", 0 ],
					"midpoints" : [ 1244.5, 108.0, 1221.0, 108.0, 1221.0, 162.0, 1244.5, 162.0 ],
					"source" : [ "obj-112", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-109", 0 ],
					"midpoints" : [ 1244.5, 135.0, 1230.0, 135.0, 1230.0, 162.0, 1244.5, 162.0 ],
					"source" : [ "obj-115", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"midpoints" : [ 36.5, 117.0, 36.5, 117.0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-114", 1 ],
					"midpoints" : [ 415.75, 801.0, 415.75, 801.0 ],
					"source" : [ "obj-120", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-114", 0 ],
					"midpoints" : [ 386.5, 801.0, 386.5, 801.0 ],
					"source" : [ "obj-120", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-91", 0 ],
					"midpoints" : [ 1019.5, 147.0, 996.0, 147.0, 996.0, 195.0, 1019.5, 195.0 ],
					"source" : [ "obj-128", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"midpoints" : [ 101.5, 216.0, 101.5, 216.0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-128", 1 ],
					"midpoints" : [ 1049.5, 102.0, 1049.5, 102.0 ],
					"source" : [ "obj-130", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-128", 0 ],
					"midpoints" : [ 1019.5, 75.0, 1019.5, 75.0 ],
					"source" : [ "obj-133", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-109", 0 ],
					"midpoints" : [ 1245.0, 162.0, 1244.5, 162.0 ],
					"source" : [ "obj-137", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-140", 0 ],
					"midpoints" : [ 695.5, 312.0, 695.5, 312.0 ],
					"source" : [ "obj-142", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-146", 0 ],
					"midpoints" : [ 695.5, 459.0, 695.5, 459.0 ],
					"source" : [ "obj-147", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-78", 1 ],
					"midpoints" : [ 551.5, 195.0, 479.5, 195.0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-150", 0 ],
					"midpoints" : [ 695.5, 606.0, 695.5, 606.0 ],
					"source" : [ "obj-151", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-174", 0 ],
					"midpoints" : [ 257.5, 531.0, 257.5, 531.0 ],
					"source" : [ "obj-171", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-171", 0 ],
					"midpoints" : [ 257.5, 474.0, 257.5, 474.0 ],
					"source" : [ "obj-173", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"midpoints" : [ 905.5, 81.0, 695.5, 81.0 ],
					"source" : [ "obj-179", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-142", 0 ],
					"midpoints" : [ 899.0, 189.0, 846.0, 189.0, 846.0, 225.0, 695.5, 225.0 ],
					"source" : [ "obj-180", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-107", 0 ],
					"midpoints" : [ 1045.5, 159.0, 1019.5, 159.0 ],
					"source" : [ "obj-181", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-147", 0 ],
					"midpoints" : [ 899.0, 336.0, 741.0, 336.0, 741.0, 348.0, 681.0, 348.0, 681.0, 372.0, 695.5, 372.0 ],
					"source" : [ "obj-182", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-151", 0 ],
					"midpoints" : [ 913.5, 483.0, 741.0, 483.0, 741.0, 495.0, 681.0, 495.0, 681.0, 519.0, 695.5, 519.0 ],
					"source" : [ "obj-183", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"midpoints" : [ 184.0, 630.0, 158.5, 630.0 ],
					"source" : [ "obj-184", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"midpoints" : [ 64.0, 732.0, 39.5, 732.0 ],
					"source" : [ "obj-185", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"midpoints" : [ 65.5, 630.0, 39.5, 630.0 ],
					"source" : [ "obj-186", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-173", 0 ],
					"midpoints" : [ 318.5, 471.0, 282.0, 471.0, 282.0, 444.0, 257.5, 444.0 ],
					"source" : [ "obj-187", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"midpoints" : [ 74.5, 444.0, 35.406473636627197, 444.0 ],
					"source" : [ "obj-188", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"midpoints" : [ 169.5, 432.0, 130.406473636627197, 432.0 ],
					"source" : [ "obj-189", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"midpoints" : [ 258.5, 162.0, 258.5, 162.0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-101", 0 ],
					"midpoints" : [ 411.5, 462.0, 386.5, 462.0 ],
					"source" : [ "obj-190", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-99", 0 ],
					"midpoints" : [ 493.5, 462.0, 464.5, 462.0 ],
					"source" : [ "obj-191", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-97", 0 ],
					"midpoints" : [ 576.0, 462.0, 551.5, 462.0 ],
					"source" : [ "obj-192", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-85", 0 ],
					"midpoints" : [ 575.0, 291.0, 551.5, 291.0 ],
					"source" : [ "obj-193", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-87", 0 ],
					"midpoints" : [ 492.5, 291.0, 464.5, 291.0 ],
					"source" : [ "obj-194", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"midpoints" : [ 410.5, 291.0, 386.5, 291.0 ],
					"source" : [ "obj-195", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"midpoints" : [ 575.0, 120.0, 551.5, 120.0 ],
					"source" : [ "obj-196", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"midpoints" : [ 493.5, 120.0, 464.5, 120.0 ],
					"source" : [ "obj-197", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"midpoints" : [ 411.0, 120.0, 386.5, 120.0 ],
					"source" : [ "obj-198", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"midpoints" : [ 386.5, 636.0, 386.5, 636.0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"midpoints" : [ 102.0, 156.0, 101.5, 156.0 ],
					"source" : [ "obj-22", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-120", 1 ],
					"midpoints" : [ 505.5, 747.0, 503.5, 747.0 ],
					"source" : [ "obj-23", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-120", 0 ],
					"midpoints" : [ 386.5, 726.0, 386.5, 726.0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"midpoints" : [ 258.5, 201.0, 195.0, 201.0, 195.0, 180.0, 138.0, 180.0, 138.0, 189.0, 101.5, 189.0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-66", 0 ],
					"midpoints" : [ 130.406473636627197, 489.0, 130.406473636627197, 489.0 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 1 ],
					"midpoints" : [ 72.5, 87.0, 72.5, 87.0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"midpoints" : [ 101.5, 288.0, 101.5, 288.0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"midpoints" : [ 101.5, 357.0, 357.0, 357.0, 357.0, 642.0, 386.5, 642.0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"midpoints" : [ 101.5, 186.0, 101.5, 186.0 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"midpoints" : [ 101.5, 249.0, 101.5, 249.0 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 1 ],
					"midpoints" : [ 141.5, 249.0, 123.0, 249.0, 123.0, 297.0, 116.5, 297.0 ],
					"source" : [ "obj-32", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"midpoints" : [ 258.5, 111.0, 246.0, 111.0, 246.0, 168.0, 258.5, 168.0 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"midpoints" : [ 695.5, 165.0, 695.5, 165.0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"midpoints" : [ 258.5, 135.0, 246.0, 135.0, 246.0, 168.0, 258.5, 168.0 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"midpoints" : [ 39.5, 756.0, 39.5, 756.0 ],
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 1 ],
					"midpoints" : [ 35.406473636627197, 555.0, 225.0, 555.0, 225.0, 570.0, 324.0, 570.0, 324.0, 642.0, 416.25, 642.0 ],
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"midpoints" : [ 35.406473636627197, 489.0, 35.406473636627197, 489.0 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"midpoints" : [ 35.406473636627197, 519.0, 35.406473636627197, 519.0 ],
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"midpoints" : [ 158.5, 684.0, 158.5, 684.0 ],
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-79", 0 ],
					"midpoints" : [ 386.5, 165.0, 386.5, 165.0 ],
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 1 ],
					"midpoints" : [ 130.406473636627197, 519.0, 129.363299369812012, 519.0 ],
					"source" : [ "obj-66", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 0 ],
					"midpoints" : [ 464.5, 165.0, 464.5, 165.0 ],
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"midpoints" : [ 101.5, 324.0, 101.5, 324.0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 2 ],
					"midpoints" : [ 386.5, 240.0, 363.0, 240.0, 363.0, 597.0, 426.0, 597.0, 426.0, 639.0, 446.0, 639.0 ],
					"source" : [ "obj-73", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-78", 0 ],
					"midpoints" : [ 464.5, 195.0, 464.5, 195.0 ],
					"source" : [ "obj-77", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-79", 1 ],
					"midpoints" : [ 464.5, 225.0, 441.0, 225.0, 441.0, 171.0, 397.0, 171.0 ],
					"source" : [ "obj-78", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"midpoints" : [ 386.5, 198.0, 386.5, 198.0 ],
					"source" : [ "obj-79", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-83", 0 ],
					"midpoints" : [ 386.5, 372.0, 386.5, 372.0 ],
					"source" : [ "obj-80", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-80", 1 ],
					"midpoints" : [ 464.5, 396.0, 441.0, 396.0, 441.0, 345.0, 397.0, 345.0 ],
					"source" : [ "obj-81", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-81", 0 ],
					"midpoints" : [ 464.5, 366.0, 464.5, 366.0 ],
					"source" : [ "obj-82", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 3 ],
					"midpoints" : [ 386.5, 399.0, 363.0, 399.0, 363.0, 597.0, 426.0, 597.0, 426.0, 639.0, 475.75, 639.0 ],
					"source" : [ "obj-83", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-81", 1 ],
					"midpoints" : [ 551.5, 369.0, 479.5, 369.0 ],
					"source" : [ "obj-85", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-82", 0 ],
					"midpoints" : [ 464.5, 336.0, 464.5, 336.0 ],
					"source" : [ "obj-87", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-80", 0 ],
					"midpoints" : [ 386.5, 333.0, 386.5, 333.0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-95", 0 ],
					"midpoints" : [ 386.5, 540.0, 386.5, 540.0 ],
					"source" : [ "obj-92", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-92", 1 ],
					"midpoints" : [ 464.5, 567.0, 441.0, 567.0, 441.0, 513.0, 397.0, 513.0 ],
					"source" : [ "obj-93", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-93", 0 ],
					"midpoints" : [ 464.5, 537.0, 464.5, 537.0 ],
					"source" : [ "obj-94", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 4 ],
					"midpoints" : [ 386.5, 597.0, 426.0, 597.0, 426.0, 639.0, 505.5, 639.0 ],
					"source" : [ "obj-95", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-93", 1 ],
					"midpoints" : [ 551.5, 537.0, 479.5, 537.0 ],
					"source" : [ "obj-97", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 0 ],
					"midpoints" : [ 464.5, 507.0, 464.5, 507.0 ],
					"source" : [ "obj-99", 0 ]
				}

			}
 ],
		"originid" : "pat-46",
		"parameters" : 		{
			"obj-10" : [ "toggle", "toggle", 0 ],
			"obj-101" : [ "Base right listening", "speed", 0 ],
			"obj-120" : [ "live.gain~[62]", "live.gain~", 0 ],
			"obj-15" : [ "Excitation LF0 amplitude", "speed", 0 ],
			"obj-23.10::obj-55" : [ "Impact duration[8]", "width", 0 ],
			"obj-23.10::obj-67" : [ "live.gain~[10]", "live.gain~", 0 ],
			"obj-23.11::obj-55" : [ "Impact duration[13]", "width", 0 ],
			"obj-23.11::obj-67" : [ "live.gain~[11]", "live.gain~", 0 ],
			"obj-23.12::obj-55" : [ "Impact duration[9]", "width", 0 ],
			"obj-23.12::obj-67" : [ "live.gain~[12]", "live.gain~", 0 ],
			"obj-23.13::obj-55" : [ "Impact duration[14]", "width", 0 ],
			"obj-23.13::obj-67" : [ "live.gain~[13]", "live.gain~", 0 ],
			"obj-23.14::obj-55" : [ "Impact duration[10]", "width", 0 ],
			"obj-23.14::obj-67" : [ "live.gain~[14]", "live.gain~", 0 ],
			"obj-23.15::obj-55" : [ "Impact duration[15]", "width", 0 ],
			"obj-23.15::obj-67" : [ "live.gain~[15]", "live.gain~", 0 ],
			"obj-23.16::obj-55" : [ "Impact duration[11]", "width", 0 ],
			"obj-23.16::obj-67" : [ "live.gain~[16]", "live.gain~", 0 ],
			"obj-23.17::obj-55" : [ "Impact duration[16]", "width", 0 ],
			"obj-23.17::obj-67" : [ "live.gain~[17]", "live.gain~", 0 ],
			"obj-23.18::obj-55" : [ "Impact duration[17]", "width", 0 ],
			"obj-23.18::obj-67" : [ "live.gain~[18]", "live.gain~", 0 ],
			"obj-23.19::obj-55" : [ "Impact duration[18]", "width", 0 ],
			"obj-23.19::obj-67" : [ "live.gain~[19]", "live.gain~", 0 ],
			"obj-23.1::obj-55" : [ "Impact duration[67]", "width", 0 ],
			"obj-23.1::obj-67" : [ "live.gain~[61]", "live.gain~", 0 ],
			"obj-23.20::obj-55" : [ "Impact duration[19]", "width", 0 ],
			"obj-23.20::obj-67" : [ "live.gain~[20]", "live.gain~", 0 ],
			"obj-23.21::obj-55" : [ "Impact duration[20]", "width", 0 ],
			"obj-23.21::obj-67" : [ "live.gain~[21]", "live.gain~", 0 ],
			"obj-23.22::obj-55" : [ "Impact duration[21]", "width", 0 ],
			"obj-23.22::obj-67" : [ "live.gain~[22]", "live.gain~", 0 ],
			"obj-23.23::obj-55" : [ "Impact duration[22]", "width", 0 ],
			"obj-23.23::obj-67" : [ "live.gain~[23]", "live.gain~", 0 ],
			"obj-23.24::obj-55" : [ "Impact duration[23]", "width", 0 ],
			"obj-23.24::obj-67" : [ "live.gain~[24]", "live.gain~", 0 ],
			"obj-23.25::obj-55" : [ "Impact duration[24]", "width", 0 ],
			"obj-23.25::obj-67" : [ "live.gain~[25]", "live.gain~", 0 ],
			"obj-23.26::obj-55" : [ "Impact duration[25]", "width", 0 ],
			"obj-23.26::obj-67" : [ "live.gain~[26]", "live.gain~", 0 ],
			"obj-23.27::obj-55" : [ "Impact duration[26]", "width", 0 ],
			"obj-23.27::obj-67" : [ "live.gain~[27]", "live.gain~", 0 ],
			"obj-23.28::obj-55" : [ "Impact duration[27]", "width", 0 ],
			"obj-23.28::obj-67" : [ "live.gain~[28]", "live.gain~", 0 ],
			"obj-23.29::obj-55" : [ "Impact duration[28]", "width", 0 ],
			"obj-23.29::obj-67" : [ "live.gain~[29]", "live.gain~", 0 ],
			"obj-23.2::obj-55" : [ "Impact duration[12]", "width", 0 ],
			"obj-23.2::obj-67" : [ "live.gain~", "live.gain~", 0 ],
			"obj-23.30::obj-55" : [ "Impact duration[29]", "width", 0 ],
			"obj-23.30::obj-67" : [ "live.gain~[30]", "live.gain~", 0 ],
			"obj-23.31::obj-55" : [ "Impact duration[30]", "width", 0 ],
			"obj-23.31::obj-67" : [ "live.gain~[31]", "live.gain~", 0 ],
			"obj-23.32::obj-55" : [ "Impact duration[31]", "width", 0 ],
			"obj-23.32::obj-67" : [ "live.gain~[32]", "live.gain~", 0 ],
			"obj-23.33::obj-55" : [ "Impact duration[32]", "width", 0 ],
			"obj-23.33::obj-67" : [ "live.gain~[33]", "live.gain~", 0 ],
			"obj-23.34::obj-55" : [ "Impact duration[33]", "width", 0 ],
			"obj-23.34::obj-67" : [ "live.gain~[34]", "live.gain~", 0 ],
			"obj-23.35::obj-55" : [ "Impact duration[34]", "width", 0 ],
			"obj-23.35::obj-67" : [ "live.gain~[35]", "live.gain~", 0 ],
			"obj-23.36::obj-55" : [ "Impact duration[35]", "width", 0 ],
			"obj-23.36::obj-67" : [ "live.gain~[36]", "live.gain~", 0 ],
			"obj-23.37::obj-55" : [ "Impact duration[36]", "width", 0 ],
			"obj-23.37::obj-67" : [ "live.gain~[37]", "live.gain~", 0 ],
			"obj-23.38::obj-55" : [ "Impact duration[37]", "width", 0 ],
			"obj-23.38::obj-67" : [ "live.gain~[38]", "live.gain~", 0 ],
			"obj-23.39::obj-55" : [ "Impact duration[38]", "width", 0 ],
			"obj-23.39::obj-67" : [ "live.gain~[39]", "live.gain~", 0 ],
			"obj-23.3::obj-55" : [ "Impact duration[1]", "width", 0 ],
			"obj-23.3::obj-67" : [ "live.gain~[3]", "live.gain~", 0 ],
			"obj-23.40::obj-55" : [ "Impact duration[39]", "width", 0 ],
			"obj-23.40::obj-67" : [ "live.gain~[40]", "live.gain~", 0 ],
			"obj-23.41::obj-55" : [ "Impact duration[40]", "width", 0 ],
			"obj-23.41::obj-67" : [ "live.gain~[41]", "live.gain~", 0 ],
			"obj-23.42::obj-55" : [ "Impact duration[41]", "width", 0 ],
			"obj-23.42::obj-67" : [ "live.gain~[42]", "live.gain~", 0 ],
			"obj-23.43::obj-55" : [ "Impact duration[42]", "width", 0 ],
			"obj-23.43::obj-67" : [ "live.gain~[43]", "live.gain~", 0 ],
			"obj-23.44::obj-55" : [ "Impact duration[43]", "width", 0 ],
			"obj-23.44::obj-67" : [ "live.gain~[44]", "live.gain~", 0 ],
			"obj-23.45::obj-55" : [ "Impact duration[44]", "width", 0 ],
			"obj-23.45::obj-67" : [ "live.gain~[45]", "live.gain~", 0 ],
			"obj-23.46::obj-55" : [ "Impact duration[45]", "width", 0 ],
			"obj-23.46::obj-67" : [ "live.gain~[46]", "live.gain~", 0 ],
			"obj-23.47::obj-55" : [ "Impact duration[53]", "width", 0 ],
			"obj-23.47::obj-67" : [ "live.gain~[47]", "live.gain~", 0 ],
			"obj-23.48::obj-55" : [ "Impact duration[54]", "width", 0 ],
			"obj-23.48::obj-67" : [ "live.gain~[48]", "live.gain~", 0 ],
			"obj-23.49::obj-55" : [ "Impact duration[55]", "width", 0 ],
			"obj-23.49::obj-67" : [ "live.gain~[49]", "live.gain~", 0 ],
			"obj-23.4::obj-55" : [ "Impact duration[2]", "width", 0 ],
			"obj-23.4::obj-67" : [ "live.gain~[4]", "live.gain~", 0 ],
			"obj-23.50::obj-55" : [ "Impact duration[56]", "width", 0 ],
			"obj-23.50::obj-67" : [ "live.gain~[50]", "live.gain~", 0 ],
			"obj-23.51::obj-55" : [ "Impact duration[57]", "width", 0 ],
			"obj-23.51::obj-67" : [ "live.gain~[51]", "live.gain~", 0 ],
			"obj-23.52::obj-55" : [ "Impact duration[58]", "width", 0 ],
			"obj-23.52::obj-67" : [ "live.gain~[52]", "live.gain~", 0 ],
			"obj-23.53::obj-55" : [ "Impact duration[59]", "width", 0 ],
			"obj-23.53::obj-67" : [ "live.gain~[53]", "live.gain~", 0 ],
			"obj-23.54::obj-55" : [ "Impact duration[60]", "width", 0 ],
			"obj-23.54::obj-67" : [ "live.gain~[54]", "live.gain~", 0 ],
			"obj-23.55::obj-55" : [ "Impact duration[61]", "width", 0 ],
			"obj-23.55::obj-67" : [ "live.gain~[55]", "live.gain~", 0 ],
			"obj-23.56::obj-55" : [ "Impact duration[62]", "width", 0 ],
			"obj-23.56::obj-67" : [ "live.gain~[56]", "live.gain~", 0 ],
			"obj-23.57::obj-55" : [ "Impact duration[63]", "width", 0 ],
			"obj-23.57::obj-67" : [ "live.gain~[57]", "live.gain~", 0 ],
			"obj-23.58::obj-55" : [ "Impact duration[64]", "width", 0 ],
			"obj-23.58::obj-67" : [ "live.gain~[58]", "live.gain~", 0 ],
			"obj-23.59::obj-55" : [ "Impact duration[65]", "width", 0 ],
			"obj-23.59::obj-67" : [ "live.gain~[59]", "live.gain~", 0 ],
			"obj-23.5::obj-55" : [ "Impact duration[3]", "width", 0 ],
			"obj-23.5::obj-67" : [ "live.gain~[5]", "live.gain~", 0 ],
			"obj-23.60::obj-55" : [ "Impact duration[66]", "width", 0 ],
			"obj-23.60::obj-67" : [ "live.gain~[60]", "live.gain~", 0 ],
			"obj-23.6::obj-55" : [ "Impact duration[4]", "width", 0 ],
			"obj-23.6::obj-67" : [ "live.gain~[6]", "live.gain~", 0 ],
			"obj-23.7::obj-55" : [ "Impact duration[5]", "width", 0 ],
			"obj-23.7::obj-67" : [ "live.gain~[7]", "live.gain~", 0 ],
			"obj-23.8::obj-55" : [ "Impact duration[6]", "width", 0 ],
			"obj-23.8::obj-67" : [ "live.gain~[8]", "live.gain~", 0 ],
			"obj-23.9::obj-55" : [ "Impact duration[7]", "width", 0 ],
			"obj-23.9::obj-67" : [ "live.gain~[9]", "live.gain~", 0 ],
			"obj-27" : [ "Vibrato Amplitude", "amplitude", 0 ],
			"obj-43" : [ "slider", "slider", 0 ],
			"obj-50" : [ "Vibrato Speed", "speed", 0 ],
			"obj-55" : [ "Impact duration[52]", "width", 0 ],
			"obj-63" : [ "Base excitation position", "speed", 0 ],
			"obj-69" : [ "Excitation LF0 speed", "speed", 0 ],
			"obj-85" : [ "Left LF0 amplitude", "speed", 0 ],
			"obj-87" : [ "Left LF0 speed", "speed", 0 ],
			"obj-9" : [ "Base left listening", "speed", 0 ],
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
			"parameter_overrides" : 			{
				"obj-23.10::obj-55" : 				{
					"parameter_longname" : "Impact duration[8]"
				}
,
				"obj-23.10::obj-67" : 				{
					"parameter_longname" : "live.gain~[10]"
				}
,
				"obj-23.11::obj-55" : 				{
					"parameter_longname" : "Impact duration[13]"
				}
,
				"obj-23.11::obj-67" : 				{
					"parameter_longname" : "live.gain~[11]"
				}
,
				"obj-23.12::obj-55" : 				{
					"parameter_longname" : "Impact duration[9]"
				}
,
				"obj-23.12::obj-67" : 				{
					"parameter_longname" : "live.gain~[12]"
				}
,
				"obj-23.13::obj-55" : 				{
					"parameter_longname" : "Impact duration[14]"
				}
,
				"obj-23.13::obj-67" : 				{
					"parameter_longname" : "live.gain~[13]"
				}
,
				"obj-23.14::obj-55" : 				{
					"parameter_longname" : "Impact duration[10]"
				}
,
				"obj-23.14::obj-67" : 				{
					"parameter_longname" : "live.gain~[14]"
				}
,
				"obj-23.15::obj-55" : 				{
					"parameter_longname" : "Impact duration[15]"
				}
,
				"obj-23.15::obj-67" : 				{
					"parameter_longname" : "live.gain~[15]"
				}
,
				"obj-23.16::obj-55" : 				{
					"parameter_longname" : "Impact duration[11]"
				}
,
				"obj-23.16::obj-67" : 				{
					"parameter_longname" : "live.gain~[16]"
				}
,
				"obj-23.17::obj-55" : 				{
					"parameter_longname" : "Impact duration[16]"
				}
,
				"obj-23.17::obj-67" : 				{
					"parameter_longname" : "live.gain~[17]"
				}
,
				"obj-23.18::obj-55" : 				{
					"parameter_longname" : "Impact duration[17]"
				}
,
				"obj-23.18::obj-67" : 				{
					"parameter_longname" : "live.gain~[18]"
				}
,
				"obj-23.19::obj-55" : 				{
					"parameter_longname" : "Impact duration[18]"
				}
,
				"obj-23.19::obj-67" : 				{
					"parameter_longname" : "live.gain~[19]"
				}
,
				"obj-23.1::obj-55" : 				{
					"parameter_longname" : "Impact duration[67]"
				}
,
				"obj-23.1::obj-67" : 				{
					"parameter_longname" : "live.gain~[61]"
				}
,
				"obj-23.20::obj-55" : 				{
					"parameter_longname" : "Impact duration[19]"
				}
,
				"obj-23.20::obj-67" : 				{
					"parameter_longname" : "live.gain~[20]"
				}
,
				"obj-23.21::obj-55" : 				{
					"parameter_longname" : "Impact duration[20]"
				}
,
				"obj-23.21::obj-67" : 				{
					"parameter_longname" : "live.gain~[21]"
				}
,
				"obj-23.22::obj-55" : 				{
					"parameter_longname" : "Impact duration[21]"
				}
,
				"obj-23.22::obj-67" : 				{
					"parameter_longname" : "live.gain~[22]"
				}
,
				"obj-23.23::obj-55" : 				{
					"parameter_longname" : "Impact duration[22]"
				}
,
				"obj-23.23::obj-67" : 				{
					"parameter_longname" : "live.gain~[23]"
				}
,
				"obj-23.24::obj-55" : 				{
					"parameter_longname" : "Impact duration[23]"
				}
,
				"obj-23.24::obj-67" : 				{
					"parameter_longname" : "live.gain~[24]"
				}
,
				"obj-23.25::obj-55" : 				{
					"parameter_longname" : "Impact duration[24]"
				}
,
				"obj-23.25::obj-67" : 				{
					"parameter_longname" : "live.gain~[25]"
				}
,
				"obj-23.26::obj-55" : 				{
					"parameter_longname" : "Impact duration[25]"
				}
,
				"obj-23.26::obj-67" : 				{
					"parameter_longname" : "live.gain~[26]"
				}
,
				"obj-23.27::obj-55" : 				{
					"parameter_longname" : "Impact duration[26]"
				}
,
				"obj-23.27::obj-67" : 				{
					"parameter_longname" : "live.gain~[27]"
				}
,
				"obj-23.28::obj-55" : 				{
					"parameter_longname" : "Impact duration[27]"
				}
,
				"obj-23.28::obj-67" : 				{
					"parameter_longname" : "live.gain~[28]"
				}
,
				"obj-23.29::obj-55" : 				{
					"parameter_longname" : "Impact duration[28]"
				}
,
				"obj-23.29::obj-67" : 				{
					"parameter_longname" : "live.gain~[29]"
				}
,
				"obj-23.30::obj-55" : 				{
					"parameter_longname" : "Impact duration[29]"
				}
,
				"obj-23.30::obj-67" : 				{
					"parameter_longname" : "live.gain~[30]"
				}
,
				"obj-23.31::obj-55" : 				{
					"parameter_longname" : "Impact duration[30]"
				}
,
				"obj-23.31::obj-67" : 				{
					"parameter_longname" : "live.gain~[31]"
				}
,
				"obj-23.32::obj-55" : 				{
					"parameter_longname" : "Impact duration[31]"
				}
,
				"obj-23.32::obj-67" : 				{
					"parameter_longname" : "live.gain~[32]"
				}
,
				"obj-23.33::obj-55" : 				{
					"parameter_longname" : "Impact duration[32]"
				}
,
				"obj-23.33::obj-67" : 				{
					"parameter_longname" : "live.gain~[33]"
				}
,
				"obj-23.34::obj-55" : 				{
					"parameter_longname" : "Impact duration[33]"
				}
,
				"obj-23.34::obj-67" : 				{
					"parameter_longname" : "live.gain~[34]"
				}
,
				"obj-23.35::obj-55" : 				{
					"parameter_longname" : "Impact duration[34]"
				}
,
				"obj-23.35::obj-67" : 				{
					"parameter_longname" : "live.gain~[35]"
				}
,
				"obj-23.36::obj-55" : 				{
					"parameter_longname" : "Impact duration[35]"
				}
,
				"obj-23.36::obj-67" : 				{
					"parameter_longname" : "live.gain~[36]"
				}
,
				"obj-23.37::obj-55" : 				{
					"parameter_longname" : "Impact duration[36]"
				}
,
				"obj-23.37::obj-67" : 				{
					"parameter_longname" : "live.gain~[37]"
				}
,
				"obj-23.38::obj-55" : 				{
					"parameter_longname" : "Impact duration[37]"
				}
,
				"obj-23.38::obj-67" : 				{
					"parameter_longname" : "live.gain~[38]"
				}
,
				"obj-23.39::obj-55" : 				{
					"parameter_longname" : "Impact duration[38]"
				}
,
				"obj-23.39::obj-67" : 				{
					"parameter_longname" : "live.gain~[39]"
				}
,
				"obj-23.3::obj-55" : 				{
					"parameter_longname" : "Impact duration[1]"
				}
,
				"obj-23.3::obj-67" : 				{
					"parameter_longname" : "live.gain~[3]"
				}
,
				"obj-23.40::obj-55" : 				{
					"parameter_longname" : "Impact duration[39]"
				}
,
				"obj-23.40::obj-67" : 				{
					"parameter_longname" : "live.gain~[40]"
				}
,
				"obj-23.41::obj-55" : 				{
					"parameter_longname" : "Impact duration[40]"
				}
,
				"obj-23.41::obj-67" : 				{
					"parameter_longname" : "live.gain~[41]"
				}
,
				"obj-23.42::obj-55" : 				{
					"parameter_longname" : "Impact duration[41]"
				}
,
				"obj-23.42::obj-67" : 				{
					"parameter_longname" : "live.gain~[42]"
				}
,
				"obj-23.43::obj-55" : 				{
					"parameter_longname" : "Impact duration[42]"
				}
,
				"obj-23.43::obj-67" : 				{
					"parameter_longname" : "live.gain~[43]"
				}
,
				"obj-23.44::obj-55" : 				{
					"parameter_longname" : "Impact duration[43]"
				}
,
				"obj-23.44::obj-67" : 				{
					"parameter_longname" : "live.gain~[44]"
				}
,
				"obj-23.45::obj-55" : 				{
					"parameter_longname" : "Impact duration[44]"
				}
,
				"obj-23.45::obj-67" : 				{
					"parameter_longname" : "live.gain~[45]"
				}
,
				"obj-23.46::obj-55" : 				{
					"parameter_longname" : "Impact duration[45]"
				}
,
				"obj-23.46::obj-67" : 				{
					"parameter_longname" : "live.gain~[46]"
				}
,
				"obj-23.47::obj-55" : 				{
					"parameter_longname" : "Impact duration[53]"
				}
,
				"obj-23.47::obj-67" : 				{
					"parameter_longname" : "live.gain~[47]"
				}
,
				"obj-23.48::obj-55" : 				{
					"parameter_longname" : "Impact duration[54]"
				}
,
				"obj-23.48::obj-67" : 				{
					"parameter_longname" : "live.gain~[48]"
				}
,
				"obj-23.49::obj-55" : 				{
					"parameter_longname" : "Impact duration[55]"
				}
,
				"obj-23.49::obj-67" : 				{
					"parameter_longname" : "live.gain~[49]"
				}
,
				"obj-23.4::obj-55" : 				{
					"parameter_longname" : "Impact duration[2]"
				}
,
				"obj-23.4::obj-67" : 				{
					"parameter_longname" : "live.gain~[4]"
				}
,
				"obj-23.50::obj-55" : 				{
					"parameter_longname" : "Impact duration[56]"
				}
,
				"obj-23.50::obj-67" : 				{
					"parameter_longname" : "live.gain~[50]"
				}
,
				"obj-23.51::obj-55" : 				{
					"parameter_longname" : "Impact duration[57]"
				}
,
				"obj-23.51::obj-67" : 				{
					"parameter_longname" : "live.gain~[51]"
				}
,
				"obj-23.52::obj-55" : 				{
					"parameter_longname" : "Impact duration[58]"
				}
,
				"obj-23.52::obj-67" : 				{
					"parameter_longname" : "live.gain~[52]"
				}
,
				"obj-23.53::obj-55" : 				{
					"parameter_longname" : "Impact duration[59]"
				}
,
				"obj-23.53::obj-67" : 				{
					"parameter_longname" : "live.gain~[53]"
				}
,
				"obj-23.54::obj-55" : 				{
					"parameter_longname" : "Impact duration[60]"
				}
,
				"obj-23.54::obj-67" : 				{
					"parameter_longname" : "live.gain~[54]"
				}
,
				"obj-23.55::obj-55" : 				{
					"parameter_longname" : "Impact duration[61]"
				}
,
				"obj-23.55::obj-67" : 				{
					"parameter_longname" : "live.gain~[55]"
				}
,
				"obj-23.56::obj-55" : 				{
					"parameter_longname" : "Impact duration[62]"
				}
,
				"obj-23.56::obj-67" : 				{
					"parameter_longname" : "live.gain~[56]"
				}
,
				"obj-23.57::obj-55" : 				{
					"parameter_longname" : "Impact duration[63]"
				}
,
				"obj-23.57::obj-67" : 				{
					"parameter_longname" : "live.gain~[57]"
				}
,
				"obj-23.58::obj-55" : 				{
					"parameter_longname" : "Impact duration[64]"
				}
,
				"obj-23.58::obj-67" : 				{
					"parameter_longname" : "live.gain~[58]"
				}
,
				"obj-23.59::obj-55" : 				{
					"parameter_longname" : "Impact duration[65]"
				}
,
				"obj-23.59::obj-67" : 				{
					"parameter_longname" : "live.gain~[59]"
				}
,
				"obj-23.5::obj-55" : 				{
					"parameter_longname" : "Impact duration[3]"
				}
,
				"obj-23.5::obj-67" : 				{
					"parameter_longname" : "live.gain~[5]"
				}
,
				"obj-23.60::obj-55" : 				{
					"parameter_longname" : "Impact duration[66]"
				}
,
				"obj-23.60::obj-67" : 				{
					"parameter_longname" : "live.gain~[60]"
				}
,
				"obj-23.6::obj-55" : 				{
					"parameter_longname" : "Impact duration[4]"
				}
,
				"obj-23.6::obj-67" : 				{
					"parameter_longname" : "live.gain~[6]"
				}
,
				"obj-23.7::obj-55" : 				{
					"parameter_longname" : "Impact duration[5]"
				}
,
				"obj-23.7::obj-67" : 				{
					"parameter_longname" : "live.gain~[7]"
				}
,
				"obj-23.8::obj-55" : 				{
					"parameter_longname" : "Impact duration[6]"
				}
,
				"obj-23.8::obj-67" : 				{
					"parameter_longname" : "live.gain~[8]"
				}
,
				"obj-23.9::obj-55" : 				{
					"parameter_longname" : "Impact duration[7]"
				}
,
				"obj-23.9::obj-67" : 				{
					"parameter_longname" : "live.gain~[9]"
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
				"name" : "polyString.json",
				"bootpath" : "~/work/these/nonlinear_string/SAV-string-simulations/src/maxmsp/package/examples",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "polyString_instance.maxpat",
				"bootpath" : "~/work/these/nonlinear_string/SAV-string-simulations/src/maxmsp/package/examples",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
