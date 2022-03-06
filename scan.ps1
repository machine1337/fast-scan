$Modules = @"
***********************************************************************************
     _______         _       ____                                __                *
    / /  ___|_ _ ___| |_    / ___|  ___ __ _ _ __  _ __   ___ _ _\ \               *
   | || |_ / _  / __| __|___\___ \ / __/ _  | '_ \| '_ \ / _ \ '__| |              *
  < < |  _| (_| \__ \ ||_____|__) | (_| (_| | | | | | | |  __/ |   > >             *
   | ||_|  \__,_|___/\__|   |____/ \___\__,_|_| |_|_| |_|\___|_|  | |              *
    \_\                                                          /_/               *
                        Developed By:   Machine404                                 *
			Instagram:      Invisibleclay100                           *
			Facebook:       Pakhack                                    *
			Twitter:        whoami4041                                 *
			                                                           *
	            Advanced Tool To Scan Hundreds Of IP's In                      *
	               Seconds For CVE's, Open Ports, Web Tech                     *
		                                                                   *
************************************************************************************	

"@;
$usage = @"
******************************************************************************
 - | usage             | - Help Commands.                                     *
 - | Single IP Scan    | - Enter Target IP Only.                              *
 - | Mass IP Scan      | - Provide Full Path To The Ip's List                 *
                                                                              *
                    Developed By: Machine404                                  *
*******************************************************************************

"@;
function clay(){
	Clear-Host;
Write-Host $Modules;
  #Write-Host "`n********************************************";
  Write-Host "`n [*] Choose Scanning Type: [*]" -ForegroundColor Green;

  Write-Host "`n [1] = Single IP Scan" -ForegroundColor Yellow;
  Write-Host " [2] = Mass IP's Scan" -ForegroundColor Cyan;
  Write-Host " [3] = Usage" -ForegroundColor blue;
  Write-Host " [4] = Exit" -ForegroundColor Red;

  Write-Host "`n Choose [*] :- " -NoNewline;
  $Choice = Read-Host;
  
if($Choice -eq "3"){
	Clear-Host
	Write-Host $Modules
  $usage
}	
If($Choice -eq "1")
{
	Clear-Host;
	Write-Host $Modules;
  Write-Host "`n [*] Enter Target IP: " -NoNewline -ForegroundColor Green;
  $Local_Port = Read-Host;
  $ld = "aAB0AHQAcABzADoALwAvAGkAbg"
$fa = "B0AGUAcgBuAGUAdABkAGIALgBzAGgAbwBkAGEAbgAuAGkAbwAvAA=="

$fin = $ld+$fa

$he= [System.Text.Encoding]::Unicode.GetString([System.Convert]::FromBase64String($fin))

  $hello = curl $he$Local_Port
  $you = ConvertFrom-Json -Inputobject $hello
  $hi= $you.ports; $ab= $you.vulns; $bc= $you.cpes
  Write-Host "`n [*] PORTS: [ $hi ]" -NoNewline -ForegroundColor Green;
  Write-Host "`n [*] VULNS: [ $ab ]" -NoNewline -ForegroundColor Yellow;
   Write-Host "`n [*] INFO: [ $bc ]`r`n" -NoNewline -ForegroundColor Cyan;
 
  
}
If($Choice -eq "2")
{
	Clear-Host;
	Write-Host $Modules;
  Write-Host "`n [*] Enter path of IP's List: " -NoNewline -ForegroundColor Green;
  $Local_Port = Read-Host;
  $ld = "aAB0AHQAcABzADoALwAvAGkAbg"
$fa = "B0AGUAcgBuAGUAdABkAGIALgBzAGgAbwBkAGEAbgAuAGkAbwAvAA=="

$fin = $ld+$fa

$he= [System.Text.Encoding]::Unicode.GetString([System.Convert]::FromBase64String($fin))
  ForEach ($loo in Get-Content "$Local_Port"){
	  
  $hello = curl $he$loo
  $you = ConvertFrom-Json -Inputobject $hello
  $hi= $you.ports; $ab= $you.vulns; $bc= $you.cpes
  Write-Host "`n [*] PORTS: [ $hi ]" -NoNewline -ForegroundColor Green;
  Write-Host "`n [*] VULNS: [ $ab ]" -NoNewline -ForegroundColor Yellow;
   Write-Host "`n [*] INFO: [ $bc ] `r`n"  -ForegroundColor Cyan;
   echo "[*] [ $loo ]" >> $pwd\scan_result.txt
  echo "[*] PORTS: [ $hi ]" >> $pwd\scan_result.txt; echo "[*] VULNS: [ $ab ]" >> $pwd\scan_result.txt; echo "[*] INFO: [ $bc ]" >> $pwd\scan_result.txt 
  }
  
   Sleep 1
   Write-Host "`n [*] Scanning Result  Saved In $pwd\scan_result.txt" -ForeGroundColor Green;
}
}
clay

#Coded By Machine404! Don't copy this code without giving me credit~
#https://instagram.com/invisibleclay100
#https://twitter.com/whoami4041
#https://www.youtube.com/channel/UCC_aPnmV_zGfdwktCFE9cPQ                    
#Github: machine1337 
