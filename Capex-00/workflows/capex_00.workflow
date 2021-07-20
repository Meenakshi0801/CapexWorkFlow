{
	"contents": {
		"160214fd-8277-4989-9249-015c59fe524a": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "capex_00",
			"subject": "CAPEX Approval for '${context.Title}'",
			"businessKey": "${context.RequestId}",
			"customAttributes": [{
				"id": "Currency",
				"label": "Currency",
				"type": "string",
				"value": "${context.Investment.Currency}"
			}, {
				"id": "TotalCost",
				"label": "Total Cost",
				"type": "string",
				"value": "${context.Investment.TotalCost}"
			}, {
				"id": "CAPEX",
				"label": "CAPEX",
				"type": "string",
				"value": "${context.Investment.CAPEX}"
			}, {
				"id": "ROI",
				"label": "ROI",
				"type": "string",
				"value": "${context.Investment.ROI}"
			}, {
				"id": "Country",
				"label": "Country",
				"type": "string",
				"value": "${context.Investment.Country}"
			}, {
				"id": "Type",
				"label": "Type",
				"type": "string",
				"value": "${context.Investment.Type}"
			}, {
				"id": "Title",
				"label": "Title",
				"type": "string",
				"value": "${context.Title}"
			}, {
				"id": "RequestId",
				"label": "Request Id",
				"type": "string",
				"value": "${context.RequestId}"
			}],
			"name": "capex_00",
			"documentation": "Capital Expenditure Approval",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "Capex Request"
				},
				"a56a2b89-bd5a-494d-bab7-44c27de94dec": {
					"name": "End (Rejection)"
				},
				"d4a0864f-cddd-421e-ae31-c17fbe9b752c": {
					"name": "End (Approval)"
				},
				"f1702ac4-7876-4368-a214-0661d4e7f906": {
					"name": "End (Rejection)"
				}
			},
			"activities": {
				"83ea50e6-7423-425c-9697-092404822268": {
					"name": "Prepare Data"
				},
				"db5b466d-c70b-4b73-8986-1acdac112ae4": {
					"name": "Retrieve Approval Steps"
				},
				"6ba55f02-5711-4edd-a4d6-0597773bffb8": {
					"name": "Approval required?"
				},
				"3ea97084-71e9-455b-826b-2f15c980d0c9": {
					"name": "Approval Task(Local Manager)"
				},
				"eb001004-7d0c-49f7-b401-bfe3a7a5bed5": {
					"name": "HandleApproval(Local Manager)"
				},
				"73165fd0-58e6-43e9-b04d-3bcab6dcfc2d": {
					"name": "Approval Result?"
				},
				"d5501892-ee40-4384-a5b8-2e8b1552d05d": {
					"name": "join"
				},
				"fd0a7ff8-c344-4833-8cf6-ccd81a2b89c1": {
					"name": "Rework Task"
				},
				"b82f33e8-c2df-487d-ba00-c243ef69d1da": {
					"name": "Approval Required?"
				},
				"5fbf0759-8982-49af-bc3f-9c2cdca65120": {
					"name": "Approval Task (Central Manager)"
				},
				"c26cc55f-df8a-4d20-b634-ac7e0c6017a7": {
					"name": "Handle Approval (Central Manager)"
				},
				"69f2da30-9c96-42f9-a83b-4a331ee25524": {
					"name": "Approve Result?"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"d3b217e2-98c3-437d-afb3-b0870074d114": {
					"name": "SequenceFlow2"
				},
				"36ad49a5-42dd-4cc3-b95a-7a73fe573d33": {
					"name": "SequenceFlow3"
				},
				"24724034-606e-4d0d-8aba-c755ba504f56": {
					"name": "yes"
				},
				"46845521-5766-4593-914f-8b3a62106632": {
					"name": "SequenceFlow5"
				},
				"38be4733-9b82-40ee-a908-ffb88c535965": {
					"name": "SequenceFlow6"
				},
				"9f923cff-c816-4dce-925c-d129b0e85e2e": {
					"name": "Approve"
				},
				"f29219eb-da30-4b42-9a3a-5245a4ca22d5": {
					"name": "SequenceFlow8"
				},
				"b3e34c06-26c4-4ee5-8ba7-2c7e9e8b0a63": {
					"name": "no"
				},
				"34315db1-95a7-43a8-83d7-5e47757df832": {
					"name": "Reject"
				},
				"8db7dbaf-8096-4283-b90b-ce4d80e5efd2": {
					"name": "Rework"
				},
				"9a1fe3b3-8f0a-4d47-8453-bb421a59b2e2": {
					"name": "SequenceFlow12"
				},
				"809e8ab2-88f3-4983-ad4a-0dd16953c73c": {
					"name": "yes"
				},
				"a97a2b9f-b6f2-4270-b260-ebb50637bb97": {
					"name": "SequenceFlow16"
				},
				"6deebe53-f7cd-49ac-aa03-6276a4ded62a": {
					"name": "Approve"
				},
				"600ad3d2-bfa0-4d78-a7c9-d62d85f9902c": {
					"name": "no"
				},
				"a562b9b8-83c8-4853-8e45-cc3f5e14adf5": {
					"name": "SequenceFlow19"
				},
				"336ff8fb-7bff-46ad-95dc-0a632442723c": {
					"name": "Reject"
				},
				"008a81e7-2ce2-4233-89da-23abcc1c612a": {
					"name": "Rework"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "Capex Request",
			"sampleContextRefs": {
				"6cbe10e9-183c-4c1a-8d4c-dab0a5187ffc": {}
			}
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "83ea50e6-7423-425c-9697-092404822268"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"7b9c9969-a0a1-4316-8394-6b422e9e40e9": {},
				"9cccd0dc-6365-454e-a94c-c8f0c69829a7": {},
				"e5c15d27-5224-4b01-b137-1c96783e62c0": {},
				"9ef3b9d6-428c-479f-b912-7da9ea85df15": {},
				"3a27e8d1-abc2-4e7b-a3aa-6e200860e435": {},
				"b0c40baf-6ef3-47a3-bd18-a3dc7c024166": {},
				"a2dab916-c73b-4c4e-bde9-a3bd7510da6e": {},
				"ae32cf49-28ff-4fba-8c8a-248c8b20c21e": {},
				"62de64ae-9b8e-4551-be5c-6e0e549af819": {},
				"0aff7567-c279-4a96-9b9a-2ce2bc00bfe0": {},
				"467d656e-983f-4d9e-851d-7376a7d54fec": {},
				"d6252163-5b3d-419a-8641-8ea1166fa792": {},
				"6520424c-bab6-414f-86bf-4d383af37afa": {},
				"d61043b6-defb-4a68-9cd9-646c2612c0ab": {},
				"6029eb25-bac1-407d-a9c5-a7ca50b1b430": {},
				"a0f96c01-4c8d-420e-a659-66bea3758101": {},
				"b1cb5b65-6144-409a-8037-46127ed9ea43": {},
				"3b49fce7-7bc9-4b96-9bec-5aedb32ff3cb": {},
				"6774c2e9-9728-4a2a-8e80-71acc5d8721e": {},
				"001fd2bd-d703-4907-aaf0-a31a08912061": {},
				"2625b0b1-bc26-4a46-908d-5e365d4d464b": {},
				"86e2cd9b-f2c5-4627-b9cc-66ea295675a6": {},
				"fcf59ac2-b902-4671-ac26-24e99a1857d5": {},
				"28b3e6f7-6eea-4387-a232-8de3fc459894": {},
				"2a37b8e7-af6c-4d5f-b320-09a5591eacac": {},
				"eb654894-ad88-4a16-8aa1-ef731de217b5": {},
				"4e1970f6-7ffe-4b55-8376-76fe01edf220": {},
				"2acdf758-b9f2-44d9-a67c-d402880a5dd6": {},
				"0468ee22-735f-4931-855e-2be4c8b50cbc": {},
				"59d5de64-398b-4baa-8bcd-305e55924ad7": {},
				"12b7ab86-d9f4-4256-9d39-a0b925d728f6": {},
				"2843a18e-4430-4fcd-9c97-32fc72ebcec0": {},
				"e7465c9d-a013-4823-94fa-d43fceead1a8": {}
			}
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 12,
			"y": 43.999999701976776,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "44,59.999999701976776 94,59.999999701976776",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "7b9c9969-a0a1-4316-8394-6b422e9e40e9",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"terminateeventdefinition": 3,
			"timereventdefinition": 1,
			"sequenceflow": 21,
			"startevent": 1,
			"endevent": 4,
			"usertask": 3,
			"servicetask": 1,
			"scripttask": 3,
			"exclusivegateway": 5
		},
		"6cbe10e9-183c-4c1a-8d4c-dab0a5187ffc": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/capex_00/CapexSampleStartPayload.json",
			"id": "default-start-context"
		},
		"83ea50e6-7423-425c-9697-092404822268": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/capex_00/PrepareData.js",
			"id": "scripttask1",
			"name": "Prepare Data"
		},
		"7b9c9969-a0a1-4316-8394-6b422e9e40e9": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 94,
			"y": 29.999999701976776,
			"width": 100,
			"height": 60,
			"object": "83ea50e6-7423-425c-9697-092404822268"
		},
		"d3b217e2-98c3-437d-afb3-b0870074d114": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "83ea50e6-7423-425c-9697-092404822268",
			"targetRef": "db5b466d-c70b-4b73-8986-1acdac112ae4"
		},
		"9cccd0dc-6365-454e-a94c-c8f0c69829a7": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "194,59.999999701976776 244,59.999999701976776",
			"sourceSymbol": "7b9c9969-a0a1-4316-8394-6b422e9e40e9",
			"targetSymbol": "e5c15d27-5224-4b01-b137-1c96783e62c0",
			"object": "d3b217e2-98c3-437d-afb3-b0870074d114"
		},
		"db5b466d-c70b-4b73-8986-1acdac112ae4": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "BUSINESS_RULES",
			"path": "/rest/v2/rule-services",
			"httpMethod": "POST",
			"requestVariable": "${context.rulesPayload}",
			"responseVariable": "${context.approvalStepsResult}",
			"id": "servicetask1",
			"name": "Retrieve Approval Steps"
		},
		"e5c15d27-5224-4b01-b137-1c96783e62c0": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 244,
			"y": 29.999999701976776,
			"width": 100,
			"height": 60,
			"object": "db5b466d-c70b-4b73-8986-1acdac112ae4"
		},
		"36ad49a5-42dd-4cc3-b95a-7a73fe573d33": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow3",
			"name": "SequenceFlow3",
			"sourceRef": "db5b466d-c70b-4b73-8986-1acdac112ae4",
			"targetRef": "6ba55f02-5711-4edd-a4d6-0597773bffb8"
		},
		"9ef3b9d6-428c-479f-b912-7da9ea85df15": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "344,59.999999701976776 394,59.999999701976776",
			"sourceSymbol": "e5c15d27-5224-4b01-b137-1c96783e62c0",
			"targetSymbol": "3a27e8d1-abc2-4e7b-a3aa-6e200860e435",
			"object": "36ad49a5-42dd-4cc3-b95a-7a73fe573d33"
		},
		"6ba55f02-5711-4edd-a4d6-0597773bffb8": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway1",
			"name": "Approval required?",
			"default": "b3e34c06-26c4-4ee5-8ba7-2c7e9e8b0a63"
		},
		"3a27e8d1-abc2-4e7b-a3aa-6e200860e435": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 394,
			"y": 38.999999701976776,
			"object": "6ba55f02-5711-4edd-a4d6-0597773bffb8"
		},
		"24724034-606e-4d0d-8aba-c755ba504f56": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.approvalStepsResult.Result[0].Approvers.lm_required}",
			"id": "sequenceflow4",
			"name": "yes",
			"sourceRef": "6ba55f02-5711-4edd-a4d6-0597773bffb8",
			"targetRef": "3ea97084-71e9-455b-826b-2f15c980d0c9"
		},
		"b0c40baf-6ef3-47a3-bd18-a3dc7c024166": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "436,59.999999701976776 470.99999940395355,59.999999701976776 470.99999940395355,42 505.9999988079071,42",
			"sourceSymbol": "3a27e8d1-abc2-4e7b-a3aa-6e200860e435",
			"targetSymbol": "a2dab916-c73b-4c4e-bde9-a3bd7510da6e",
			"object": "24724034-606e-4d0d-8aba-c755ba504f56"
		},
		"3ea97084-71e9-455b-826b-2f15c980d0c9": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Approval for '${context.Title}' in your role as Local Manager",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${context.approvalStepsResult.Result[0].Approvers.lm_userid}, ${info.startedBy}",
			"formReference": "/forms/capex_00/CapexApproval_00.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "capexapproval_00"
			}, {
				"key": "formRevision",
				"value": "1"
			}],
			"id": "usertask1",
			"name": "Approval Task(Local Manager)"
		},
		"a2dab916-c73b-4c4e-bde9-a3bd7510da6e": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 505.9999988079071,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "3ea97084-71e9-455b-826b-2f15c980d0c9"
		},
		"46845521-5766-4593-914f-8b3a62106632": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow5",
			"name": "SequenceFlow5",
			"sourceRef": "3ea97084-71e9-455b-826b-2f15c980d0c9",
			"targetRef": "eb001004-7d0c-49f7-b401-bfe3a7a5bed5"
		},
		"ae32cf49-28ff-4fba-8c8a-248c8b20c21e": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "605.9999988079071,42 655.9999988079071,42",
			"sourceSymbol": "a2dab916-c73b-4c4e-bde9-a3bd7510da6e",
			"targetSymbol": "62de64ae-9b8e-4551-be5c-6e0e549af819",
			"object": "46845521-5766-4593-914f-8b3a62106632"
		},
		"eb001004-7d0c-49f7-b401-bfe3a7a5bed5": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/capex_00/HandleApprovalLocalManager.js",
			"id": "scripttask2",
			"name": "HandleApproval(Local Manager)"
		},
		"62de64ae-9b8e-4551-be5c-6e0e549af819": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 655.9999988079071,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "eb001004-7d0c-49f7-b401-bfe3a7a5bed5"
		},
		"38be4733-9b82-40ee-a908-ffb88c535965": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow6",
			"name": "SequenceFlow6",
			"sourceRef": "eb001004-7d0c-49f7-b401-bfe3a7a5bed5",
			"targetRef": "73165fd0-58e6-43e9-b04d-3bcab6dcfc2d"
		},
		"0aff7567-c279-4a96-9b9a-2ce2bc00bfe0": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "755.9999988079071,42 825.9999976158142,42",
			"sourceSymbol": "62de64ae-9b8e-4551-be5c-6e0e549af819",
			"targetSymbol": "467d656e-983f-4d9e-851d-7376a7d54fec",
			"object": "38be4733-9b82-40ee-a908-ffb88c535965"
		},
		"73165fd0-58e6-43e9-b04d-3bcab6dcfc2d": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway2",
			"name": "Approval Result?",
			"default": "34315db1-95a7-43a8-83d7-5e47757df832"
		},
		"467d656e-983f-4d9e-851d-7376a7d54fec": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 825.9999976158142,
			"y": 21,
			"object": "73165fd0-58e6-43e9-b04d-3bcab6dcfc2d"
		},
		"9f923cff-c816-4dce-925c-d129b0e85e2e": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.decision == \"approve\"}",
			"id": "sequenceflow7",
			"name": "Approve",
			"sourceRef": "73165fd0-58e6-43e9-b04d-3bcab6dcfc2d",
			"targetRef": "d5501892-ee40-4384-a5b8-2e8b1552d05d"
		},
		"d6252163-5b3d-419a-8641-8ea1166fa792": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "867.9999976158142,42 902.9999970197678,42 902.9999970197678,59.999999701976776 937.9999964237213,59.999999701976776",
			"sourceSymbol": "467d656e-983f-4d9e-851d-7376a7d54fec",
			"targetSymbol": "6520424c-bab6-414f-86bf-4d383af37afa",
			"object": "9f923cff-c816-4dce-925c-d129b0e85e2e"
		},
		"d5501892-ee40-4384-a5b8-2e8b1552d05d": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway3",
			"name": "join"
		},
		"6520424c-bab6-414f-86bf-4d383af37afa": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 937.9999964237213,
			"y": 38.999999701976776,
			"object": "d5501892-ee40-4384-a5b8-2e8b1552d05d"
		},
		"f29219eb-da30-4b42-9a3a-5245a4ca22d5": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow8",
			"name": "SequenceFlow8",
			"sourceRef": "d5501892-ee40-4384-a5b8-2e8b1552d05d",
			"targetRef": "b82f33e8-c2df-487d-ba00-c243ef69d1da"
		},
		"d61043b6-defb-4a68-9cd9-646c2612c0ab": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "958.9999964237213,59.999999701976776 1024.9999964237213,59.999999701976776",
			"sourceSymbol": "6520424c-bab6-414f-86bf-4d383af37afa",
			"targetSymbol": "2625b0b1-bc26-4a46-908d-5e365d4d464b",
			"object": "f29219eb-da30-4b42-9a3a-5245a4ca22d5"
		},
		"b3e34c06-26c4-4ee5-8ba7-2c7e9e8b0a63": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow9",
			"name": "no",
			"sourceRef": "6ba55f02-5711-4edd-a4d6-0597773bffb8",
			"targetRef": "d5501892-ee40-4384-a5b8-2e8b1552d05d"
		},
		"6029eb25-bac1-407d-a9c5-a7ca50b1b430": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "419,59.999999701976776 419,-207 616,-207 616,-249 956,-249 956,59.999999701976776",
			"sourceSymbol": "3a27e8d1-abc2-4e7b-a3aa-6e200860e435",
			"targetSymbol": "6520424c-bab6-414f-86bf-4d383af37afa",
			"object": "b3e34c06-26c4-4ee5-8ba7-2c7e9e8b0a63"
		},
		"a56a2b89-bd5a-494d-bab7-44c27de94dec": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent2",
			"name": "End (Rejection)",
			"eventDefinitions": {
				"257b491b-2537-43cd-9516-98e8ecb3e80d": {}
			}
		},
		"257b491b-2537-43cd-9516-98e8ecb3e80d": {
			"classDefinition": "com.sap.bpm.wfs.TerminateEventDefinition",
			"id": "terminateeventdefinition1"
		},
		"a0f96c01-4c8d-420e-a659-66bea3758101": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 829.5,
			"y": -80.5,
			"width": 35,
			"height": 35,
			"object": "a56a2b89-bd5a-494d-bab7-44c27de94dec"
		},
		"34315db1-95a7-43a8-83d7-5e47757df832": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow10",
			"name": "Reject",
			"sourceRef": "73165fd0-58e6-43e9-b04d-3bcab6dcfc2d",
			"targetRef": "a56a2b89-bd5a-494d-bab7-44c27de94dec"
		},
		"b1cb5b65-6144-409a-8037-46127ed9ea43": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "846.9999976158142,42 847,-46",
			"sourceSymbol": "467d656e-983f-4d9e-851d-7376a7d54fec",
			"targetSymbol": "a0f96c01-4c8d-420e-a659-66bea3758101",
			"object": "34315db1-95a7-43a8-83d7-5e47757df832"
		},
		"fd0a7ff8-c344-4833-8cf6-ccd81a2b89c1": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Rework for '${context.Title}'",
			"priority": "HIGH",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${info.startedBy}",
			"formReference": "/forms/capex_00/CapexApproval_00.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "capexapproval_00"
			}, {
				"key": "formRevision",
				"value": "1"
			}],
			"id": "usertask2",
			"name": "Rework Task",
			"dueDateRef": "fac9c930-e06e-4a8a-b596-027f4aeeff76"
		},
		"3b49fce7-7bc9-4b96-9bec-5aedb32ff3cb": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 99,
			"y": 207,
			"width": 100,
			"height": 60,
			"object": "fd0a7ff8-c344-4833-8cf6-ccd81a2b89c1"
		},
		"fac9c930-e06e-4a8a-b596-027f4aeeff76": {
			"classDefinition": "com.sap.bpm.wfs.TimerEventDefinition",
			"timeDuration": "P2D",
			"id": "timereventdefinition1"
		},
		"8db7dbaf-8096-4283-b90b-ce4d80e5efd2": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.decision == \"rework\"}",
			"id": "sequenceflow11",
			"name": "Rework",
			"sourceRef": "73165fd0-58e6-43e9-b04d-3bcab6dcfc2d",
			"targetRef": "fd0a7ff8-c344-4833-8cf6-ccd81a2b89c1"
		},
		"6774c2e9-9728-4a2a-8e80-71acc5d8721e": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "846.9999976158142,42 846.9999976158142,240 163,240",
			"sourceSymbol": "467d656e-983f-4d9e-851d-7376a7d54fec",
			"targetSymbol": "3b49fce7-7bc9-4b96-9bec-5aedb32ff3cb",
			"object": "8db7dbaf-8096-4283-b90b-ce4d80e5efd2"
		},
		"9a1fe3b3-8f0a-4d47-8453-bb421a59b2e2": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow12",
			"name": "SequenceFlow12",
			"sourceRef": "fd0a7ff8-c344-4833-8cf6-ccd81a2b89c1",
			"targetRef": "83ea50e6-7423-425c-9697-092404822268"
		},
		"001fd2bd-d703-4907-aaf0-a31a08912061": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "149,237 149,148.25 135,148.25 135,59",
			"sourceSymbol": "3b49fce7-7bc9-4b96-9bec-5aedb32ff3cb",
			"targetSymbol": "7b9c9969-a0a1-4316-8394-6b422e9e40e9",
			"object": "9a1fe3b3-8f0a-4d47-8453-bb421a59b2e2"
		},
		"b82f33e8-c2df-487d-ba00-c243ef69d1da": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway4",
			"name": "Approval Required?",
			"default": "600ad3d2-bfa0-4d78-a7c9-d62d85f9902c"
		},
		"2625b0b1-bc26-4a46-908d-5e365d4d464b": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 1003.9999964237213,
			"y": 38.999999701976776,
			"object": "b82f33e8-c2df-487d-ba00-c243ef69d1da"
		},
		"809e8ab2-88f3-4983-ad4a-0dd16953c73c": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.approvalStepsResult.Result[0].Approvers.cm_required}",
			"id": "sequenceflow13",
			"name": "yes",
			"sourceRef": "b82f33e8-c2df-487d-ba00-c243ef69d1da",
			"targetRef": "5fbf0759-8982-49af-bc3f-9c2cdca65120"
		},
		"86e2cd9b-f2c5-4627-b9cc-66ea295675a6": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1024.9999964237213,57 1139.9999964237213,57",
			"sourceSymbol": "2625b0b1-bc26-4a46-908d-5e365d4d464b",
			"targetSymbol": "fcf59ac2-b902-4671-ac26-24e99a1857d5",
			"object": "809e8ab2-88f3-4983-ad4a-0dd16953c73c"
		},
		"5fbf0759-8982-49af-bc3f-9c2cdca65120": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Approval for '${context.Title}' in your role as Central Manager",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${context.approvalStepsResult.Result[0].Approvers.cm_userid}, ${info.startedBy}",
			"formReference": "/forms/capex_00/CapexApproval_00.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "capexapproval_00"
			}, {
				"key": "formRevision",
				"value": "1"
			}],
			"id": "usertask3",
			"name": "Approval Task (Central Manager)"
		},
		"fcf59ac2-b902-4671-ac26-24e99a1857d5": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 1089.9999964237213,
			"y": 29.999999701976776,
			"width": 100,
			"height": 60,
			"object": "5fbf0759-8982-49af-bc3f-9c2cdca65120"
		},
		"c26cc55f-df8a-4d20-b634-ac7e0c6017a7": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/capex_00/HandleApprovalCentralManager.js",
			"id": "scripttask3",
			"name": "Handle Approval (Central Manager)"
		},
		"28b3e6f7-6eea-4387-a232-8de3fc459894": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 1275.9999964237213,
			"y": 29.999999701976776,
			"width": 100,
			"height": 60,
			"object": "c26cc55f-df8a-4d20-b634-ac7e0c6017a7"
		},
		"69f2da30-9c96-42f9-a83b-4a331ee25524": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway5",
			"name": "Approve Result?",
			"default": "336ff8fb-7bff-46ad-95dc-0a632442723c"
		},
		"2a37b8e7-af6c-4d5f-b320-09a5591eacac": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 1386.4999964237213,
			"y": 38.999999701976776,
			"object": "69f2da30-9c96-42f9-a83b-4a331ee25524"
		},
		"a97a2b9f-b6f2-4270-b260-ebb50637bb97": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow16",
			"name": "SequenceFlow16",
			"sourceRef": "c26cc55f-df8a-4d20-b634-ac7e0c6017a7",
			"targetRef": "69f2da30-9c96-42f9-a83b-4a331ee25524"
		},
		"eb654894-ad88-4a16-8aa1-ef731de217b5": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1325.9999964237213,59.999999701976776 1407.4999964237213,59.999999701976776",
			"sourceSymbol": "28b3e6f7-6eea-4387-a232-8de3fc459894",
			"targetSymbol": "2a37b8e7-af6c-4d5f-b320-09a5591eacac",
			"object": "a97a2b9f-b6f2-4270-b260-ebb50637bb97"
		},
		"d4a0864f-cddd-421e-ae31-c17fbe9b752c": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent3",
			"name": "End (Approval)",
			"eventDefinitions": {
				"e3bc9e9c-187d-4f4b-8042-b8c64cb661dc": {}
			}
		},
		"e3bc9e9c-187d-4f4b-8042-b8c64cb661dc": {
			"classDefinition": "com.sap.bpm.wfs.TerminateEventDefinition",
			"id": "terminateeventdefinition2"
		},
		"4e1970f6-7ffe-4b55-8376-76fe01edf220": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 1478.4999964237213,
			"y": 42.499999701976776,
			"width": 35,
			"height": 35,
			"object": "d4a0864f-cddd-421e-ae31-c17fbe9b752c"
		},
		"6deebe53-f7cd-49ac-aa03-6276a4ded62a": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.decision == \"approve\"}",
			"id": "sequenceflow17",
			"name": "Approve",
			"sourceRef": "69f2da30-9c96-42f9-a83b-4a331ee25524",
			"targetRef": "d4a0864f-cddd-421e-ae31-c17fbe9b752c"
		},
		"2acdf758-b9f2-44d9-a67c-d402880a5dd6": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1407.4999964237213,59.999999701976776 1495.9999964237213,59.999999701976776",
			"sourceSymbol": "2a37b8e7-af6c-4d5f-b320-09a5591eacac",
			"targetSymbol": "4e1970f6-7ffe-4b55-8376-76fe01edf220",
			"object": "6deebe53-f7cd-49ac-aa03-6276a4ded62a"
		},
		"600ad3d2-bfa0-4d78-a7c9-d62d85f9902c": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow18",
			"name": "no",
			"sourceRef": "b82f33e8-c2df-487d-ba00-c243ef69d1da",
			"targetRef": "d4a0864f-cddd-421e-ae31-c17fbe9b752c"
		},
		"0468ee22-735f-4931-855e-2be4c8b50cbc": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1024.9999964237213,59.999999701976776 1024.9999964237213,-122 1502,-122 1502,59.999999701976776",
			"sourceSymbol": "2625b0b1-bc26-4a46-908d-5e365d4d464b",
			"targetSymbol": "4e1970f6-7ffe-4b55-8376-76fe01edf220",
			"object": "600ad3d2-bfa0-4d78-a7c9-d62d85f9902c"
		},
		"a562b9b8-83c8-4853-8e45-cc3f5e14adf5": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow19",
			"name": "SequenceFlow19",
			"sourceRef": "5fbf0759-8982-49af-bc3f-9c2cdca65120",
			"targetRef": "c26cc55f-df8a-4d20-b634-ac7e0c6017a7"
		},
		"59d5de64-398b-4baa-8bcd-305e55924ad7": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1189.9999964237213,59.999999701976776 1233.25,60 1233.25,69 1329,69",
			"sourceSymbol": "fcf59ac2-b902-4671-ac26-24e99a1857d5",
			"targetSymbol": "28b3e6f7-6eea-4387-a232-8de3fc459894",
			"object": "a562b9b8-83c8-4853-8e45-cc3f5e14adf5"
		},
		"f1702ac4-7876-4368-a214-0661d4e7f906": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent4",
			"name": "End (Rejection)",
			"eventDefinitions": {
				"ddf12ff2-edcf-40e9-a1e1-bd4b024a0ced": {}
			}
		},
		"ddf12ff2-edcf-40e9-a1e1-bd4b024a0ced": {
			"classDefinition": "com.sap.bpm.wfs.TerminateEventDefinition",
			"id": "terminateeventdefinition3"
		},
		"12b7ab86-d9f4-4256-9d39-a0b925d728f6": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 1375.5,
			"y": -80.5,
			"width": 35,
			"height": 35,
			"object": "f1702ac4-7876-4368-a214-0661d4e7f906"
		},
		"336ff8fb-7bff-46ad-95dc-0a632442723c": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow20",
			"name": "Reject",
			"sourceRef": "69f2da30-9c96-42f9-a83b-4a331ee25524",
			"targetRef": "f1702ac4-7876-4368-a214-0661d4e7f906"
		},
		"2843a18e-4430-4fcd-9c97-32fc72ebcec0": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1407.4999964237213,59.999999701976776 1407.5,-3.25 1392,-3.25 1392,-57",
			"sourceSymbol": "2a37b8e7-af6c-4d5f-b320-09a5591eacac",
			"targetSymbol": "12b7ab86-d9f4-4256-9d39-a0b925d728f6",
			"object": "336ff8fb-7bff-46ad-95dc-0a632442723c"
		},
		"008a81e7-2ce2-4233-89da-23abcc1c612a": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.decision == \"rework\"}",
			"id": "sequenceflow21",
			"name": "Rework",
			"sourceRef": "69f2da30-9c96-42f9-a83b-4a331ee25524",
			"targetRef": "fd0a7ff8-c344-4833-8cf6-ccd81a2b89c1"
		},
		"e7465c9d-a013-4823-94fa-d43fceead1a8": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1407.4999964237213,59.999999701976776 1407.4999965163156,251 792.7500000925943,251.00000029802322 792.75,249 138,249",
			"sourceSymbol": "2a37b8e7-af6c-4d5f-b320-09a5591eacac",
			"targetSymbol": "3b49fce7-7bc9-4b96-9bec-5aedb32ff3cb",
			"object": "008a81e7-2ce2-4233-89da-23abcc1c612a"
		}
	}
}