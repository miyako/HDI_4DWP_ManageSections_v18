

Case of 
		
	: (Form event code:C388=On Clicked:K2:4)
		
		If (selected.length>0)
			WP SELECT:C1348(wpDoc; selected[0].start; selected[0].end)
			WP SELECT:C1348(wpDoc; selected[0].start; selected[0].start)
		End if 
		
End case 
