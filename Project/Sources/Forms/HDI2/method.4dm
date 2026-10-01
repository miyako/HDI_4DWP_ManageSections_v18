Case of 
		
	: (Form event code:C388=On Load:K2:1)
		
		ARRAY TEXT:C222(_TabTitles; 0)
		ARRAY TEXT:C222(_Descriptions; 0)
		
		READ ONLY:C145([INFO:1])
		ALL RECORDS:C47([INFO:1])
		ORDER BY:C49([INFO:1]; [INFO:1]PageNumber:4; >)
		
		SELECTION TO ARRAY:C260([INFO:1]TabTitle:3; _TabTitles; [INFO:1]Description:2; _Descriptions)
		
		_TabTitles:=1
		If (Is Windows:C1573)
			ST SET ATTRIBUTES:C1093(_Descriptions{_TabTitles}; ST Start text:K78:15; ST End text:K78:16; Attribute text size:K65:6; 14)
		Else 
			ST SET ATTRIBUTES:C1093(_Descriptions{_TabTitles}; ST Start text:K78:15; ST End text:K78:16; Attribute text size:K65:6; 16)
		End if 
		
		C_COLLECTION:C1488(selected)
		selected:=New collection:C1472
		
		C_BOOLEAN:C305(bTrace)
		bTrace:=False:C215
		
	: (Form event code:C388=On Page Change:K2:54)
		
		If (Is Windows:C1573)
			ST SET ATTRIBUTES:C1093(_Descriptions{_TabTitles}; ST Start text:K78:15; ST End text:K78:16; Attribute text size:K65:6; 14)
		Else 
			ST SET ATTRIBUTES:C1093(_Descriptions{_TabTitles}; ST Start text:K78:15; ST End text:K78:16; Attribute text size:K65:6; 16)
		End if 
		
		Case of 
			: (FORM Get current page:C276=2)
				createDoc1
				
			: (FORM Get current page:C276=3)
				createDoc2
				
		End case 
		
		
End case 

