# Based on https://stackoverflow.com/questions/43002803/detect-if-process-executes-inside-a-windows-container
function test-sandbox {
	$foundService = Get-Service -Name cexecsvc -ErrorAction SilentlyContinue
	if ($foundService -eq $null) {
		$false
	} else {
		$true
	}
}

