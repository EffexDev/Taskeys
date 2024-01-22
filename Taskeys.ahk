; Name: Jordan's Hotkeys
; Version Number: 1.2
; Author: Jordan Cartledge
;
; Credit: Originally a version of Hugh's Hotkeys that were updated, modified and optimised for tasking
; Commands for lockup and logout from Terry King

; Shoutouts:
; Chris Lynn for pointing out flaws and providing me with countless suggestions for additions
; Bailey Wilson for some of the fairly niche stuff
; Adam Abreu for writing out a couple of the templates
; Terry for helping me learn more code formatting and optimisations

; *************** ENTER YOUR NAME AND CHANGE EMAIL HERE FOR SCRIPT TO WORK SUCCESSFULLY *****************
csname = Jordan C
:O:!email::jordan.cartledge@team.aussiebroadband.com.au

; *******************************************************************************************************

; ==== Main ====
; "!call" Formatted inbound template for OTRS tickets
; "!ocall" Unformatted inbound template
; "!ob" Formatted ob template
; "!oob" Unformatted ob template for OTRS tickets
; "!end" End of Call
; "!optinoc" Call template for calling OptiNOC

; ==== CS Troubleshooting scripts ======
; "!selt" - Selt results 
; "!speeds" - SHS displayed speeds
; "!raise" Raise to Opticomm/NBN template
; "!acsinfo" ACS information
; "!pingtest" Ping test email - eu ping tests
; "!voipset" VOIP settings
; "!acswan" Code for enabling Wan access on netcomm

; =========== CSP Scripts =========
; "!outage" - Outage resolved
; "!ongoing" Adv eu of ongoing outage
; "!apoke" Aussie SMS Poke
; "!opoke" Origin SMS Poke
; "!thanks" Close fault with confirmation from customer
; "!booked" Awaiting NBN Appt
; "!checkin24" Touching base - Close warning
; "!checkin48" Touching base - Close warning
; "!loan" Email for warranty and loan devices.
; "!myopen" Advise of opening a fault in app
; "!myclose" Close fault due to no contact
; "!buyloan" Ask eu if they would like to purchase their loan router
; "!coat" Adv the customer of further Network Activity required and provide the date if available
; "!nfu" No Further Update
; "!acr" Awaiting Customer Response
; "!5drops" Advise of FTTN dropout requirements
; "!monitor7" Advise that NBN are monitoring for 7 days
; "!slowspeeds" Asks for more info regarding speed fault
; "!nodrops" We dont see drops on testing asks for more info
; "!SOS" Info about SOS/ROC and SRA
; "!plotter" Advises we have set a ping plotter
; "!reserved" Adv eu that their appointment has been reserved
; "!monitoring" Status: [red]In progress - [b]Monitoring[/b][/red]
; "!keepalive" Advise we have booked an NBN appointment for the future to keep the ticket open
; "!nextpick" Service within specifications. Check on next pickup and action accordingly
; "!awaitenad" Advise that NBN have not completed works and we are waiting for an ENAD
; "!reset" Steps for factory resetting an NTD
; "!coax" Steps to coax reset a HFC NTD
; "!hwreturn" Thank customer for supplying tracking code for hardware
; "!resolved" Advise customer that we can see fault is resolved and ask for confirmation
; "!stabon" Provide information about stability profile and ask when we can apply one
; "!staboff" Suggest disabling the applied stability profile
; "!opticommicof" Shows the Opticomm ICOF
; "!telstraicof" Shows the Telstra ICOF
; "!fttcicof" Shows the FTTC ICOF
; "!game" Adv eu of a big game release
; "!delay" Adv eu of 5 hours app response time delay
; "!reseat" steps for reseating SIM card
; "!mybook" Template for booking NBN apps via MyAussie
; "!obresolved" Template for No ID fault resolved call
; "!dontkick" adv eu not to kick their connection for no reason
; "!config18" config template for NF18Mesh
; "!config20" config template for NF20Mesh
; "!wan20" WAN Access guide for NF20Mesh
; "!wan18" WAN Access guide for NF18Mesh
; "!confirmation" Adv eu that we have booked and inform of confirmation text
; "!preempt" Adv we have booked an appointment without confirmation

;=========== Prov Scripts ================
;
; "!cooling" Moved out of cooling off period into quarantine then pr-order confirmation
;
;=========================================

;============== NBN Raises ======================

; "!afispeed" Template for AFI speed raise

; =========== OTRS Scripts =========
; "!eclose" We cannot close services via email
; "!leftvm" Tried calling about OTRS but did not reach
; "!nrfwarn" Advise customer that we require a loan device back or will charge for it
; "!id" Cannot find customers account with their email address
; "!bridgetap" Bridge tap information email
; "!speedtest" Speed-test ticket email
; "!nochange" Advise that we cannot make account changes without verbal contact
; "!heavyuser" Information about the FW fair use policy
; "!paramount" Paramount+ esco template
; "!dataretention" Adv that we cannot delete accounts and links to data retention laws
; "!payment" Terms and conditions stating we need payment method on file
; "!pod" Template to Request Pod from eu
; "!nrfdate" Send NRF warning with date of invoice attached
; "!tstc" T&Cs for troubleshooting obligations
; "!loanreturn" Request for loan to be returned
; "!warrantyreturn" Request for faulty router to be returned

; ===== CS Misc Scripts ===============
; "!sign" Email Footer
; "!followup" L.2 followup email

; =========== run commands ============
; ctrl + del - Cayde Dixon, Michael, Doug and Camille's super lookup tool
; ctrl + alt + O - Opens up a Chrome, slack, outlook, notepad++

;=========== CMS Linking ================
; "!nbninc" NBN Incident ID: xxx
; "!nbnappt" NBN Appointment ID: xxx
; "!nbnc" NBN Conversation ID: xxx
; "!tracking" Return Post Tracking Code: (Copy the tracking number first)
; "!Symbio" Symbio ID: xxx
; "!redmine" Redmine ID: xxx
; "!optin" Opticomm Incident ID: xxx
; "!telstra" Telstra Case Number: xxx
; "!optus" Optus ID: xxx
; "!net"iBoss ID: xxx

;=========== Testing Tools ================

; "!microsip" MicroSIP testing settings

;=========== some script stuff for optimisation==========
#NoEnv 

;#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;=========== Queue Hotstrings =============

:C10:!call::
{
[b][u]Caller:[/u][/b]
[b][u]ID Check:[/u][/b] Yes
[b][u]Reason for call:[/u][/b]
[b][u]Troubleshooting/Observations:[/u][/b]
}

:C10:!ob::
{
[b][u]Called:[/u][/b]
[b][u]ID Check:[/u][/b] Yes 
[b][u]Advised of OBR:[/u][/b] Yes 
[b][u]Reason for call:[/u][/b]
[u][b]Troubleshooting/Observations:[/b][/u]
}

:C10:!oob::
{
Called:
ID Check: Yes 
Advised of OBR: Yes 
Reason for call: 
Troubleshooting/Observations:
}

:C10:!ocall::
{
Caller: 
ID Check: Yes
Reason for call: 
Troubleshooting/Observations:
}

:O:!end::[b][u]EoC.[/u][/b] 

:O:!oend::EoC.

:C10:!optinoc::
{
[b][u]Called OptiNOC[/u][/b]
[b][u]Agent:[/u][/b]
[b][u]Ticket:[/u][/b] 
}
;=========== CSP Hotstrings ===============
^!r::
Reload
return

:O:!appopen::I've made this available in the app/portal for you to make keeping track of it easier.

:O:!appclose::As we have not heard from you, we will have to unfortunately close this fault off now, if you have any further issues or concerns, don't hesitate to raise a new fault or give us a call.{Enter 2}

:O:!checkin24::Just checking in to ensure you've received my colleague's response above?{Enter 2}If we have not heard from you within 24 hours we may look to close this fault.{Enter 2}

:O:!checkin48::Just checking in to ensure you've received my colleague's response above?{Enter 2}If we have not heard from you within 48 hours we may look to close this fault.{Enter 2}

:O:!thanks::Thanks for letting us know. We will close this one off for now, If you have any further issues or concerns, don't hesitate to raise a new fault or give us a call.{Enter 2}

:O:!nfu::No Further Update {Tab 4}{space}

:O:!acr::Awaiting Customer Response {Tab 4}{space}

:O:!apoke::AussieBB here, Just a reminder to please log in to the MyAussie app/portal and view our latest response there in relation to your fault.

:O:!opoke::OriginBB here, Just a reminder to please log in to the Origin app and view our latest response there in relation to your fault.

:O:!returnsms::Just a reminder to return your loan hardware to avoid being charged a non-return fee for the cost of the device.

:O:!booked::Still Booked - Awaiting Appointment {Tab 4}{space}

:O:!reserved::Thanks for letting us know. I have booked this appointment for you. Please look out for a confirmation message within the next 24 hours. If you do not receive this please let us know.{Enter 2}

:O:!buyloan::It appears that the loan unit we sent out has resolved the issues you were having. As per the loan device terms you can either ship this device back to us, or choose to purchase the loan device from us.{Enter 2}If you choose to purchase the loan device, please let us know and we can raise the cost of the device as an invoice on your account.{Enter 2}

:O:!coat::NBN have determined that the scope of works to restore your service is more than originally expected. Due to this they have placed your ticket on hold for now, and will be re-evaluating the issue to determine when they will be able to complete the required network activity.{Enter 2}The current date provided by NBN for this network activity is: {Enter 2}Please note that this is subject to change.{Enter 2}Apologies for the delay.{Enter 2}

:O:!5drops::In order for us to raise a fault to NBN we need to see 5+ Dropouts in a 24 hour period. We will keep this one open for you for monitoring over a 48 hour period and touch base with you in a couple days if we meet this threshold.{Enter 2}Sometimes if there is a tech out in the street fixing another connection, this can sometimes cause a drop out on your service. {Enter 2}

:O:!reset::Please perform a factory reset on your nbn box, to do this just hold a paper clip or pin in the reset hole of your nbn box for 15-20 seconds (after this your nbn box will reset itself) {Enter}If this doesn't bring you online do the same on your router (You will need to reconfigure the router after this) and call our team if still having issues. {Enter 2}

:O:!coax::I ran some testing and it appears HFC Signal is not within specifications, which may cause an issue with service performance.{Enter 2}Please unscrew the coax (TV antenna) from the NBN device.{Enter 2}Now we need to factory reset the device.{Enter 2}In the back of your nbn box there should be a little reset hole, please try holding a paperclip or pin in your nbn box for 15 seconds to reset it.{Enter 2}Now screw the coax cable back in.{Enter 2}If the device does not fully restore after a minute or two please let us know.{Enter 2}

:O:!plotter:: I have set a ping plotter on your service. A ping plotter will send a large amount of pings to your IP address over the course of the day, and make a graph using this data. This allows us to pinpoint where, and how much data is being lost on the way to your router. It will help us determine the extent of packet loss even when we do not see dropouts on NBN testing.{Enter 2}

:O:!slowspeeds::In order for us to narrow this down further for you please provide some more information.{Enter}{Enter}Please run a few speedtests on speedtest.net and tell us the results here.{Enter}{Enter}Are all devices currently experiencing slow speeds?{Enter}Are the tests being done over wifi or an ethernet connection?{Enter}Are the ethernet cables cables you are using Category 5e or above?{Enter}{Enter}Once we know this information we can assist you further.{Enter}{Enter}

:O:!nodrops::I have run some testing and are not seeing any dropouts, Can you please provide more information on the dropouts so we can investigate further.{Enter}{Enter}How long do these dropouts last?{Enter}How often do they happen?{Enter}{Enter}Do they happen over Wi-Fi or is it over ethernet as well?{Enter}Do any lights on your router change during these dropouts?{Enter}{Enter}

:O:!hwreturn::Thanks for getting that tracking code to us, we'll monitor the return of the hardware using the code - once confirmed received by our hardware team we'll confirm refund/credit as required. {Enter 2}

:O:!SOS::SRA and SOS/ROC are protocols that ensure the router remains connected at the correct frequency. When the router first syncs with the NBN line it syncs at the current line rate. SRA and SOS/ROC allow it to change to different line rates when the frequency on the incoming copper changes. If SRA and SOS/ROC are not showing on the NBN testing or are not available settings on the router this can cause dropouts and speed fluctuations. If the settings are not available in the router, it may need a firmware upgrade, or the router may not be compatible.{Enter 2}

:O:!resolved::As it does appear that the issues have been resolved from this end, please let us know if you are still having issues with your service within 24-48 hours, otherwise we will look to close this fault. {Enter 2}

:O:!ongoing::Unfortunately at this stage your service is being affected by an outage. We do not currently have an ETA on a fix but the issue is currently being investigated.{Enter 2}

:O:!stabon::In order for us to raise this as a dropouts fault with NBN, we need to apply a stability profile and monitor the connection for 48 hours. The profile can negatively affect speeds to a degree. Please let us know when it would be an appropriate time for us to apply this, as it will cause the router to lose connection momentarily. {Enter 2}

:O:!staboff::We could now look at removing the stability profile on your service to try attain some of you speed back if you would like to? When we do this, you will initially experience a dropout whilst your modem re-syncs. {Enter 2}

:O:!opticommicof::$297 Minimum + $148.50 per additional hour + Additional Parts.{Enter}{Enter}Additional Parts{Enter}{Enter}ONT / NTD / Modem: $145.00 PLUS ($14.50 GST){Enter}Lead In (all lengths): $66.00 PLUS ($6.60 GST){Enter}Premise Connection Device (PCD): $16.00 PLUS ($1.60 GST){Enter}Power Supply Replacement: $17.00 PLUS ($1.70 GST){Enter}Rapid Deploy Fibre Cable: $35.00 PLUS ($3.50 GST) {Enter 2}

:O:!telstraicof::ICOF is{Enter}-$35 per 15min per tech{Enter}-$85 service fee{Enter}-minimum $120 cost. {Enter 2}

:O:!fttcicof::Incorrect call out charges:{Enter}$82.50 Per Hour, for a minimum of 2 hours{Enter}A minimum call out fee of $165. {Enter 2}

:O:!outage::It does appear that your service was being effected by an outage that has since been resolved, if you are still having issues please power-cycle your router(turn off and on){Enter 2}If the issue has been resolved alongside that outage let us know and we'll close this fault off, otherwise we may close this fault as resolved anyway within 48 hours {Enter 2}

:O:!awaitenad::As per the recent NBN appointment, they have advised us that there is more extensive work to complete. We are currently waiting for them to supply us with an ETA, but we will keep you in the loop with any changes. {Enter 2}

:O:!monitor7::After your recent NBN appointment, NBN have placed your service on a 7 calendar day monitoring period. If the service is still below spec after this period we can raise another appointment for you. {Enter 2}

:O:!monitoring::Status: [red]In progress - [b]Monitoring[/b][/red]{Tab 4}{Enter}Please run testing

:O:!keepalive::As we were unable to contact you, we have booked an NBN appointment for a future time slot in order to keep the ticket open and not lose progress. Please give us a call when you can to bring this appointment forward.{Enter 2}

:O:!nextpick::Service within specifications. Check on next pickup and action accordingly

:O:!game::Unfortunately at this stage we are in the process of dealing with a very popular game release. As there is a large number of people all downloading this game at the same time, it is putting huge stress on our CVCs. If you test again tomorrow and are still experiencing an issue, please let us know and we can investigate further. {Enter 2}

:O:!paramount:: Date of Service Activation:{Enter 2}Have they checked junk/spam folder: Y/N{Enter 2}Searched inbox for an email from origincomms@origin.com.au: Y/N{Enter 2}Do they have the Paramount+ Promo applied?:{Enter 2}Did they select monthly subscription when signing up?:{Enter 2}

:O:!delay::Please bear in mind that the minimum reply time for a fault raised via the app is 5 hours, and your replies will restart this timer so multiple comments in a row may actually slow things down.{Enter 2}Our actual response time may be significantly higher depending on how many online tickets we currently have in the system, so any urgent issues would be best handled over a call.{Enter 2}

:O:!reseat::Please re-seat the SIM card in the device and then try to test the service again.{Enter 2}To do this:{enter}1. Power the device off{Enter}2. Remove the SIM card from the device{Enter}3. Place the SIM card back into the device{Enter}4. Power the device back up{Enter 2}If you are still unable to use mobile data after this please let us know.{Enter 2}

:O:!obresolved::[b][u]Called:[/u][/b] {Enter 2}[b][u]ID Check:[/u][/b] No{Enter}[b][u]Advised of OBR:[/u][/b] No{Enter 2}[b][u]Reason for call:[/u][/b] Follow Up{Enter 2}[u][b]Troubleshooting/Observations:[/b][/u]{Enter}- adv eu following up on fault{Enter}- eu adv fault resolved{Enter}- eu happy to close{Enter}[b][u]EoC.[/u][/b]{Enter}

:O:!dontkick::I noticed from our test history that you ran a kick connection test from the MyAussie app earlier today.{Enter 2}The wording in the app can be a little vague, but this test will disconnect your internet completely until 15 minutes have elapsed and your router reconnects, or you powercycle the device.{Enter 2}As your service is back online, please let us know if you are happy to close this fault.{Enter 2}

:O:!config18::Netcomm NF18Mesh Setup Guide.{Enter 2}1. If the router has been factory reset select 'Skip to Main Menu'{Enter}2. On the left hand toolbar go to 'Internet'{Enter}3. If there are already any 'Current Connections' listed delete all of them{Enter}4. Select 'Create New' and fill in the details shown below{Enter 2}Description: This one doesn't matter too much, it just helps tell us what the connection is, though we normally just enter 'AussieBB'{Enter 2]Internet Service:{Enter}VDSL: FttN and FttB connections{Enter}Ethernet WAN: All other connection types{Enter 2}Connection Type: Dynamic IP {Enter 2}DNS Servers: When you connect to the internet your router reaches out to DNS servers to find out where your data needs to be sent. Think of this an entering an address into Google Maps to find out where it is.{Enter}​Primary: 202.142.142.142{Enter}Secondary: 202.142.142.242{Enter 2}802.1P: -1{Enter 2}VLAN Tag: -1{Enter 2}NAT: Enabled{Enter 2}Firewall: Enabled{Enter 2}MTU Size: 1500 {Enter 2}MSS Size: 1460{Enter 2}IP Protocol: IPv4/IPv6 {Enter 2}DHCPv6 (IANA): Enabled{Enter}DHCPv6 (IAPD): Enabled{Enter}IGMP: Enabled{Enter 2}

:O:!config20::Netcomm NF20Mesh Setup Guide.{Enter 2}1. If the router has been factory reset select 'Skip to Main Menu'{Enter}2. On the left hand toolbar go to 'Basic'{Enter}3. Follow the setup steps 1 by 1 using the following options{Enter 2}Internet Setup: {Enter}VDSL for FTTN and FTTB connections{Enter}Ethernet WAN for all other connections{Enter 2}WAN Setup:{Enter}IP over Ethernet{Enter 2}PVC Setup:{Enter}VPI = 8{Enter}VCI = 35{Enter 2}Apply and Save{Enter 2}

:O:!wan20::NF20MESH{Enter}On a device connected to your router follow these steps.{Enter}1. Open a web browser and type 192.168.20.1 and you should get a login screen.{Enter}2. Username: admin Password: XXX{Enter}3. Navigate to Management > Access Control > Services Control{Enter}4. Enable WAN in the HTTP row.{Enter}5. Hit Apply/Save{Enter}6. Navigate to Access List above Services Control{Enter}7. Ensure toggle under this is disabled then save/apply{Enter 2}

:O:!wan18::NF18MESH{Enter}On a device connected to your router follow these steps.{Enter}1. Open a web browser and type 192.168.20.1 and you should get a login screen.{Enter}2. Username: admin Password: XXX{Enter}3. Navigate to Advanced > Security > Access Control{Enter}4. Enable WAN in the HTTP row.{Enter}5. Check access control list below the table is set to Disabled{Enter}6. Hit Apply/Save{Enter 2}

:O:!confirmation::I have raised this appointment for you.{Enter 2}You should receive a confirmation text within 24 hours. {Enter}If you do not receive this text please give us a call and let us know and we will look into it.{Enter 2}

:O:!preempt::In order to ensure that your NBN ticket stays open I have booked a tentative appointment for you.{Enter 2}The appointment date/time is:{Enter 2}If this appointment does not suit you, please give us a call and we can rewchedule.{Enter 2} 

return

;=========== OTRS Hotstrings ===============
Reload
return

:O:!eclose::Thank you very much for your email, we can definitely assist with this request but unfortunately we require verbal confirmation to close a service. Please call our friendly team on 1300 880 905 so that they can assist you with organising the closure of your service. 

:O:!leftvm::I tried calling you about this request, unfortunately I was not able to get a hold of you. The fastest way for us to assist you with this is over the phone. Please give our a friendly team a call on 1300 880 905 at your earliest convenience 

:O:!nrfwarn::Just a friendly reminder that we are waiting for your hardware return. To avoid non return fee, please call us on 1300880905 or return ASAP

:O:!id::Unfortunately the email you are inquiring from is not associated with any accounts, can you please call our team or help us find your account by providing: {Enter}{Enter}- Date of Birth{Enter}- Address for your service{Enter}- Customer Number 

:O:!bridgetap::I have provided a link below that explains what a Bridge-Tap is and how it can effect your service.{Enter}https://www.acma.gov.au/improving-your-home-internet{Enter}If you have any questions at all please don't hesitate to contact us, we are available between 8am and Midnight AEST everyday on 1300 880 905.

:O:!nochange::Unfortunately we cannot process this via e-mail due to security reasons. Please call our customer service team to process this update.{Enter 2}If you have any further questions, please do not hesitate to contact us.

:O:!hfcmac:: Thanks for reaching out. It looks like NBN are requesting confirmation of the MAC ID on your NBN device. Please give us a call when you can, and we can have this updated in our system. This can occur when NBN have replaced the device at the address, or if they are expecting a different device than what is online.
return 

:O:!sau::The recent price changes are consequence of the recent Special Access Undertaking (SAU) changes passed down by NBN. These price changes were at the wholesale level and will be reflected not only by Aussie Broadband, but across the ISP industry as a whole.{Enter 2}While we have tried our best to keep the prices down, the changes mean that we do need to make some adjustments. While our lower plans are increasing in price by $6, we are able to more drastically bring down the prices on our higher tier plans, and our 12/1 Senior's Plan pricing will not change.{Enter 2}If you have any questions please give us a call on 1300 880 905{Enter 2}

:O:!heavyuser::As part of NBNs Fair Use Policy changes for Fixed Wireless services, they are pushing for a more even spread of bandwidth across users. This means that more intensive users will have shaping applied for certain applications.{Enter 2}During each month that you are flagged as a high-usage connection, you will be subject to certain applications being shaped during the busy periods of that cell. The busy periods is an important part to remember, as a cell may be quiet and this is barely enforced, or a cell may be busy every night and then this is enforced some more.{Enter 2}The services that will be affected if you breach the download are the following:{Enter 2}Video Streaming: 14Mbps{Enter}P2P File Sharing: 1Mbps{Enter}Software Downloads/Updates: 3Mbps{Enter}Gaming Downloads/Updates: 5Mbps{Enter 2}The services that will be affected if you breach the upload are the following:{Enter 2}P2P File Sharing: 1Mbps{Enter 2}

:O:!dataretention::Due to data retentions laws, we cannot delete the account entirely.{Enter 2}The billing information saved to the account will be removed 10 business days from the date of service closure when the account is put into an inactive state.{Enter 2}If you would like more information regarding this, please find it here: https://www.homeaffairs.gov.au/about-us/our-portfolios/national-security/lawful-access-telecommunications/data-retention-obligations

:O:!payment::As per our Terms and Conditions we do require a payment method on file as a backup. Please find the relevant section of the Ts and Cs below.{Enter 2}14.3 Methods of payment (a) When you pay for your Services, you’ll need to pay by direct debit from either a credit card standing authorisation or bank account. This means we need a record of your credit card or bank account whilst you’re enjoying our Services.

:O:!pod::In order for us to move forward we will need a Prroof of Occupancy document.{Enter 2}Please reply to this email with one of the following documents:{Enter 2}- Rental/Tenancy/Lease Agreement{Enter}- Contract of Sale{Enter}- Utility Bill (Gas, Water or Electricity){Enter}- Council Rates{Enter 2}If you are renting or have just moved in and cannot supply the above, we can also use the following:{Enter 2}- Statutory declaration from the property owner and the rent receipt from the new occupant{Enter}- Statutory declaration from the property owner and the bond payment receipt{Enter}- Letter from the real estate agent and the rent receipt from the new occupant{Enter}- Letter from the real estate agent and the bond payment receipt.{Enter 2}Once we have received this we will pass it on to our provisioning team to submit to NBN and will get back to you when we have an update from them.

:O:!mybook::Looks like the service was still very unstable today. This means we can book an NBN appointment for you. Please select from the below times:{Enter 2}

:O:!nrfdate::As we have not received the loan unit back, and we have not been able to discuss the extension of the loan period, we will raise the Non-Return Fee of the device.{Enter 2}The Non-Return Fee for this device is: {Enter 2}This will be raised as an invoice on: {Enter 2}If you do not wish to pay this non-return fee then please send back the loan device and advise if you have used a tracking number different than what was supplied on the return satchel.{Enter 2}

:O:!tstc::As per our terms and conditions regarding the troubleshooting of the service{Enter 2}Section 6.2{Enter 2}}(d) Unless specifically included in our Agreement with you, it is your responsibility to provide thetechnology necessary for the Service.{Enter 2}(e) You warrant that information you give us in relation to this Agreement is true and correct.{Enter}● You must promptly inform us of any changes to this information.{Enter 2}(f) You agree to give all reasonable assistance, information, access, that we reasonably require to enable us to perform our obligations under this Agreement and deliver Services to you.

:O:!loanreturn::We have tried getting in touch with yourself regarding the loan router we sent out.{Enter 2}As we have passed the designated 2 weeks we need to discuss the return or purchase of the device. If you wish to return the device please take it to Auspost and send it back in the return bag provided. If this bag has expired, please advise us of the tracking code that Auspost gives you.{Enter 2}If you wish to purchase the device, please give us a call and we will place a purchase order for a new device so that you aren't buying a refurbished one.{Enter 2}Please give us a call when you can.{Enter 2}

:O:!warrantyreturn::We have tried getting in touch with yourself regarding the warranty router we sent out.{Enter 2}As this device was a replacement, we do need the original faulty device sent back to us for evaluation.{Enter 2}The warranty device came with a pre-paid return bag. Please take this and the original device to Auspost and post it to us. If the return bag has expired, please let us know and we can generate you a shipping label.{Enter 2}

;=========== Prov Scripts ================

:O:!cooling::App has exceeded cooling off period. No hardware attached. No upfront costs. Payment details on file. Pushing order through (Pre-order).

;============== Test Tools ===============

:O:!microsip::MicroSIP Test Bench:{Enter 2}Account Name: EU{Enter 2}SIP Server: AussieBB.nms1.voice.wide.net.au{Enter}SIP Proxy: AussieBB.nms1.voice.wide.net.au{Enter 2}Username: SIP Number{Enter}Domain: AussieBB.nms1.voice.wide.net.au{Enter}Login: SIP Number{Enter}Password: SIP password{Enter}Display name: EU{Enter}

;============== NBN Raises ======================

:O:!afispeed::Hey Team,{Enter 2}Eu has an AFI detected speed fault{Enter}Line state: {Enter}Assured Download: {Enter}Assured Upload: {Enter 2}Attainable Download: {Enter}Attainable Upload: {Enter 2}Please investigate

;================================
:O:!nbnc::NBN Conversation ID: xxx

:O:!symbio::Symbio ID: xxx

:O:!redmine::Redmine ID: xxx

:O:!telstra::Telstra Case Number: xxx

:O:!optus::Optus ID: xxx

:O:!netsip::iBoss ID: xxx

; ===============================
;  launch ctrl+alt+o
; ===============================
#z::Run www.autohotkey.com
; Will open outlook, chrome and notepad++ when CTRL ALT O is pressed
^!o::
	global csnumber
	if WinExist("C:\Program Files\Slack\slack.exe")
	{
		WinActivate
	}
	else
	{
		Run, C:\Program Files\Slack\Slack.exe
	}
	if WinExist("ahk_exe C:\Program Files (x86)\Google\Chrome\Application\chrome.exe")
	{
		WinActivate
	}
	else
	{
		Run, chrome.exe
	}
	if WinExist("ahk_exe C:\Program Files (x86)\Notepad++\notepad++.exe")
	{
		WinActivate
	}
	else
	{
		Run, notepad++.exe
	}
	sleep 100
Return

; ===============================
;  Fault Signature
; ===============================
::!sign::
	global csname
	SendInput Regards,{Enter}%csname%
	SendInput {Tab 1}{Space}
	SendInput {Tab 3}{Enter}
Exit
return

; ===============================
;  SELT Test
; ===============================
::!selt::
	SendInput - Ran Seated SELT(XXX):{Enter} * Sync Status Before SELT:{Enter}* Termination Type:{Enter}* Line Length [{+}/-] Accuracy:{Enter}* Service Problems:
return
; ===============================
;  SPEED SHS
; ===============================
::!speeds::
	Gui, Add, Text, section xm w130, SHS:
	Gui, Add, Edit, vSHS w200 ys
	Gui, Add, Text, section xm w130, Actual:
	Gui, Add, Edit, vActuald  w50 ys
	Gui, Add, Text, section ys, /
	Gui, Add, Edit, vActualu  w50 ys
	Gui, Add, Text, section ys, Mbps
	Gui, Add, Text, section xm w130, Attainable:
	Gui, Add, Edit, vAttainabled  w50 ys
	Gui, Add, Text, section ys, /
	Gui, Add, Edit, vAttainableu  w50 ys
	Gui, Add, Text, section ys, Mbps
	Gui, Add, Text, section xm w130, Assured:
	Gui, Add, Edit, vAssuredd  w50 ys
	Gui, Add, Text, section ys, /
	Gui, Add, Edit, vAssuredu  w50 ys
	Gui, Add, Text, section ys, Mbps
	Gui Add, Button, xm w150 h23 section gspeedz, Submit
	Gui Add, Button, ys w150 h23, Close
	Gui Show, w370 h160, Line Speeds
Return

speedz:
{
  Gui, Submit

  SendInput - Checked Service Health Summary(%SHS%):{Enter}  * Actual Line Rate:%Actuald% / %Actualu% Mbps{Enter}* Attainable Line Rate:%Attainabled% / %Attainableu% Mbps {Enter}* Assured Line Rate:%Assuredd% / %Assuredu% Mbps {Enter}
 }
Gui, Destroy
Exit
return

; ===============================
;  NBN FAULT TEMPLATE
; ===============================
::!raise::
	Sleep, 100
	
	Gui Add, Text, x10 y20 w130 h13, NBN or Opticomm:
	Gui Add, Radio, X110 y10 w80 h23  vRaisenbn checked, NBN
	Gui Add, Radio, x110 y30 w100 h23 vRasieopt, Opticomm
	Gui Add, Text, x10 y66 w130 h13, Fault Type:
	Gui Add, Radio, x80 y60 w100 h23 vCheckBox_1 checked, A loss of service
	Gui Add, Radio, x80 y80 w150 h23 vCheckBox_2, Dropouts on their service
	Gui Add, Radio, x80 y100 w200 h23 vCheckBox_3,  Slow speeds on their service
	Gui Add, Radio, x80 y120 w200 h23 vCheckbox_4, New Service Never Worked
	Gui Add, Button, x14 y160 w150 h23 section gdoThis, Submit
	Gui Add, Button, x173 y160 w150 h23, Close
	Gui Show, w350 h190, Opticmm and NBN Ticket Raise
Return

;Labels

	doThis:
		{
		Gui, Submit, NoHide
	   if (CheckBox_1 = 1)
		{
		service = a loss of service
		}
		if (CheckBox_2 = 1)
		{
		service = dropouts on their service
		}
		{
		if (CheckBox_3 = 1)
		service = slow speeds on their service
		}
		{
		if (CheckBox_4 = 1)
		service = a no connection fault New Service Never Worked
		}
		{
		if (Raisenbn = 1)
		servicetype = NBN
		}
		{
		if (Rasieopt = 1)
		servicetype = Opticomm
		}
		
				if WinExist("ahk_exe notepad++.exe")
			WinActivate
		
		SendInput Hi Team,{Enter}{Enter}End user is experiencing %service%.{Enter}{Enter}The following troubleshooting and testing has been conducted and results show a potential fault on the %servicetype% network:{Enter}-{Enter}-{Enter}-{Enter}{Enter}Please raise to field for investigation and further information/resolution. Thank you
		Gui, Destroy
Exit        
        }
Exit
return

; ==============================
; 		 NBN INC update
; ==============================
::!nbninc::
	Sleep, 100
	SendInput NBN Incident ID: %Clipboard%{Enter}
Exit
return

; ==============================
;  NBN Appointment ID update
; ==============================
::!nbnappt::
	Sleep, 100
	SendInput NBN Appointment ID: %Clipboard%{Enter}
Exit
return

; ==============================
;  Return Post Tracking
; ==============================
::!tracking::
	SendInput Return Post Tracking Code: %Clipboard%{Enter}
Exit
return

; ==============================
; 		Opticomm OTT update
; ==============================
::!optinc::
	Sleep, 100
	SendInput Opticomm Incident ID: %Clipboard%{Enter}
Exit
return

;==============================
;	Speed Test template (new)
;==============================
  ::!speedtest::
	
	SendInput Can you please run some direct connection speed tests? This will show us whether the speeds coming directly from NBNco are poor or not, if the results show an issue it acts as evidence should we need to raise this to nbn.{Enter 2}Direct connection speed test instructions:{Enter}1. Kick your connection using the service tests in MyAussie{Enter}2. Unplug your Modem/Router from the NBN device{Enter}3. Using the same cable from the NBN device, plug in a laptop or computer.{Enter}4. Run 3-5 speed tests through [url]www.speedtest.net[/url]{Enter}5. Reply to us with the Result IDs the tests generate {Enter}6. Kick the connection again via MyAussie {Enter}7. Swap from the laptop/PC to the Modem/Router {Enter 2}If you have any further questions, issues or concerns, feel free to simply reply back to this message or give our team a call on 1300 880 905.{Enter 2}Regards,{Enter 2}https://www.aussiebroadband.com.au/help-centre/nbn/tech-support/speed-tests-how-do-i-run-a-speed-test/{Enter 2}
Exit
Return

;========= Auto Ctrl + Del Clipboard lookup tool ==============
^del::
  Engine := "https://www.google.com/search?q={1}"
    ;NBN CRQs
    if (RegExMatch(Clipboard, "^CRQ\d{12}", Match) > 0) 
    {
      RunWait https://nbnportals.nbnco.net.au/online_customers/page/change_activity/list?criteriaType=CHANGE_REF_NO&criteria=%MATCH%&startDate=&endDate=&status=  
    return
    }
    ;NBN AVC/INC/ORD/PRI/WRI/HRI/CVCs
    if (RegExMatch(Clipboard, "(AVC|INC|ORD|PRI|WRI|HRI|CVC)\d{12}", Match) > 0) 
    {
      RunWait https://nbnportals.nbnco.net.au/online_customers/page/home?search=%MATCH%#idp=aussiebb
    return
	}
    ;NBN APTs
    if (RegExMatch(Clipboard, "APT\d{12}", Match) > 0)
    {
      RunWait https://nbnportals.nbnco.net.au/online_customers/page/appointment/view/ASI000000001104/%MATCH%#idp=aussiebb
    return
    }
	;NBN LOC
    if (RegExMatch(Clipboard, "LOC\d+", Match) > 0)
    {
      RunWait https://nbnportals.nbnco.net.au/online_customers/page/manageaddress/site_qualification/setup
    return
    }
    ;Opticomm R-Xs
    if (RegExMatch(Clipboard, "(R-\w{4}-\d{9}|OAC\d{12})", Match) > 0) 
    {
      RunWait https://portal.opticomm.net.au:4005/ontoldv2/?service_id=%MATCH%
	return
    }
	;Opti Faults
	if (RegExMatch(Clipboard, "OTT\d{12}", Match) > 0) 
	{
	RunWait https://rspportal.telco.opticomm.net.au/tickets
	return
	}
	;Opti Appts
	if (RegExMatch(Clipboard, "OAT\d{12}", Match) > 0) 
	{
	RunWait https://rspportal.telco.opticomm.net.au/properties/appointments
	return
	}
    ;Australia Post T/Ns
    if (RegExMatch(Clipboard, "(?:R|92A|34ECK|I8|2KUZ|34TDC|36AAC|36BRU|030)\d+", Match) > 0)
    {
      RunWait https://auspost.com.au/mypost/track/#/details/%MATCH% 
    return
    }
	 ;Startrack T/Ns
    if (RegExMatch(Clipboard, "(?:PGXZ)\d+", Match) > 0)
    {
      RunWait https://startrack.com.au/track/search
    return
    }
	;ACS Lookup. S/N
	if (RegExMatch(Clipboard, "(\d{15})|(\d{12})|(J3N\d[A-Z]\d{11})", Match) > 0)    
	{
	ACSURL = https://aussieacs.aussiebb.com.au/CSR/Login.aspx
    RunWait %ACSURL% 
    return
    } 
    ;MAC Addresses
    if (RegExMatch(Clipboard, "^(([\da-fA-F]{2}[-:]){5}[\da-fA-F]{2})$", Match) > 0) 
    {
      MAC := Format("{:U}", SubStr(RegExReplace(Clipboard, "[-:]", ""), 1, 6))
      RunWait https://aruljohn.com/mac/%MAC% 
    return
    }
    ;Sites
    if RegExMatch(Clipboard, "^http(s)?:\/\/|www\.") 
    {
        RunWait %Clipboard%
    return
    }
   ;Telstra
    if (RegExMatch(Clipboard, "(WEQ)\d+", Match) > 0) 
    {
      RunWait https://hub.telstrawholesale.com.au/ticket-summary/7853836006/%MATCH%/tw-hub
    return
    }
	;Phone Numbers
	if (RegExMatch(Clipboard, "0\d{9}", Match) > 0) 
	{
    RunWait https://cms.aussiebroadband.com.au/portsq.php?csn=%MATCH%  
    return
    }
	;CSP Fault
    if (RegExMatch(Clipboard, "\d{8}", Match) > 0)
    {
      RunWait https://cms.aussiebroadband.com.au/csp/view.php?ref=%MATCH%
    return
    }
		;Phone Numbers
	if (RegExMatch(Clipboard, "0\d{9}", Match) > 0)
	{
    RunWait https://cms.aussiebroadband.com.au/portsq.php?csn=%MATCH%
    return
	search_url := format(Engine, StrReplace(Clipboard, " ", "+", All))
    RunWait %search_url%
	return
	 }

Exit
Return

;---------------Outlook---------------
::!followup::
	Run, mailto:csl2res@team.aussiebroadband.com.au?subject=Followup&body=Staff`%20Name:`%20`%0D`%0ADate`%20incident`%20Occurred:`%20`%0D`%0ALink`%20to`%20where`%20the`%20incident`%20Occurred:`%20`%0D`%0ADetails`%20of`%20the`%20incident:`%0D`%0A`%0D`%0A`%0D`%0A`%0D`%0ASIGN_HERE`%0D`%0ACustomer`%20Service`%0D`%0AAussie`%20Broadband
Exit
return

;==========================================
; ACS Settings
;==========================================
::!acsinfo::
	Gui, Add, Text, Section xm w200, Inform
	Gui, Add, Text, Section ys w100, Enabled
	Gui, Add, Text, Section xm w200, Inform Interval:
	Gui, Add, Edit, ys vInfint w100, 3600
	Gui, Add, Text, Section xm w200, ACS URL:
	Gui, Add, Edit, ys vacsurl, http://acs.aussiebroadband.com.au:7547
	Gui, Add, Text, Section xm w200, ACS Username
	Gui, Add, Edit, ys vacsunm, acs
	Gui, Add, Text, Section xm w200, ACS Password
	Gui, Add, Edit, ys vacspass, acs
	Gui, Add, Text, Section xm w200, WAN Interface used by TR-069 Client:
	Gui, Add, Text, Section ys w100, Any WAN
	Gui, Add, Text, Section xm w201, Display SOAP messages on serial console:
	Gui, Add, Text, Section ys w100, Disabled
	Gui, Add, Text, Section xm w200, Connection Request Authentication:
	Gui, Add, Text, Section ys w300, Enabled (Remove username and password below)
	Gui, Show, w500 h230, ACS information
	Gui, Add, Button, default gButtonOKacs w80, OK
Exit
return

ButtonOKacs:
	Gui, Destroy
		Gui, Submit

Exit
Return

;==================================================
; PACKET LOSS PING TEST
;==================================================
::!pingtest::
	Gui, Add, Text,section xm w130, Customers Name
	Gui, Add, Edit,ys vNameping w200,
	Gui, Add, Text, section xm w130, OS:
	Gui, Add, CheckBox, ys vPingWin, Windows
	Gui, Add, CheckBox, ys vPingMac, Mac
	Gui, Add, Text, xs, Where do you want to ping/Traceroute?
	Gui, Add, CheckBox, xs vPingGate, Gateway IP:
	Gui, Add, Edit, Section xs vpingGatewayip xs100 y100 w150 xm
	Gui, Add, Checkbox, vPingAussieGateone, AussieBB Gateway
	Gui, Add, Checkbox, vPingcloudflair, Cloudflair
	Gui, Add, Checkbox, vPinggoogle, Google
	Gui, Show,w370 h250, Packet Loss
	Gui, Add, Button, default gOKpacketloss w80, OK
return

OKpacketloss:
	global csname
	Gui, submit
		if WinExist("ahk_exe notepad++.exe")
		WinActivate
	SendInput, Dear %Nameping%, {Enter 2}We wish to perform some tests from two computers directly connected to your NBNco NTD/NCD (if you do not have an NTD/NCD please ensure you are directly connected to your modem and ignore steps to kick connection). {Enter 2}Please ensure your computers have a firewall active at the very least as well as antivirus software. To prove there is an issue with the NBN connection, we will need to do a direct connection to the NBN NTD/NCD. Please use the MyAussie app to kick your connection, then remove the Ethernet cable from the WAN/internet port on the router, and plug directly into a DHCP-enabled computer. Once completed, please kick the connection again in the app, disconnect the computer and reconnect the router. {Enter 2}Please ensure that nothing else is using any bandwidth on your devices ie Speed tests, YouTube, file sharing programs such as BitTorrent/UTorrent or any files downloading. These can affect your results and NBN may reject a ticket due to this. {enter 2}Please find below some instructions for running the tests we require. {enter 2}
	if (PingWin == 1)
		SendInput, For Windows Devices:{Enter} First, open the 'Command Prompt' by opening the 'Start' Menu, and typing 'cmd' into the search box at the bottom, and clicking on 'cmd' in the search results list. {Enter}Once you are in the command prompt, please copy and paste or type the following addresses. Please note that they must be done one at a time. {Enter 2}After each command, please copy and paste the final results by right-clicking inside the black area of the command prompt window, selecting 'mark', dragging your mouse over the text while holding the left mouse button, and pressing enter to copy. Paste into notepad or into a reply email. {Enter 2}
	if (PingGate == 1 && PingWin == 1)
		SendInput, ping %pingGatewayip% -n 100 {Enter}
	if (pingAussieGateone == 1 && PingWin == 1)
		SendInput, ping 202.142.142.142 -n 100 {Enter}
	if (pingfloudflair == 1 && PingWin == 1)
		SendInput, ping 1.1.1.1 -n 100 {Enter}
	if (pinggoogle == 1 && PingWin == 1)
		SendInput, ping www.google.com.au -n 100 {Enter}
	if (PingWin == 1)
		Sendinput, ping *The IP / Server you're having issues with* -n 100 {Enter2 }
	if (pingAussieGateone == 1 && PingWin == 1)
		SendInput, tracert 202.142.142.142 {Enter}
	if (pingfloudflair == 1 && PingWin == 1)
		SendInput, tracert 1.1.1.1 {Enter}
	if (pinggoogle == 1 && PingWin == 1)
		Sendinput, tracert www.google.com.au {Enter}
	if (PingMac == 1 && Pingwin == 1)
		Sendinput, {Enter 2}
	if (PingMac == 1)
		Sendinput, For Mac Devices: {enter}Open Terminal by navigating to /Applications/Terminal. Or by searching for Terminal in spotlight {Enter}In the Terminal window type ping / traceroute and then the <server> , where <server> is the hostname or IP address of the server that you want to ping. {Enter} Select the results, and then right-click and select Copy or press COMMAND+C to copy the text. Paste into notepad or into a reply email. {enter 2}
	if (PingGate == 1 && PingMac == 1)
		SendInput, ping %pingGatewayip%{Enter}
	if (pingAussieGateone == 1 && PingMac == 1)
		SendInput, ping 202.142.142.142{Enter}
	if (pingfloudflair == 1 && PingMac == 1)
		SendInput, ping 1.1.1.1{Enter}
	if (pinggoogle == 1 && PingMac == 1)
		SendInput, ping www.google.com.au{Enter}
	if (PingMac == 1)
		Sendinput, (Enter}For traceroutes please type the following: {enter}
	if (pingAussieGateone == 1 && PingMac == 1)
		SendInput, traceroute 202.142.142.142 {Enter}
	if (pingfloudflair == 1 && PingMac == 1)
		SendInput, traceroute 1.1.1.1 {Enter}
	if (pinggoogle == 1 && PingMac == 1)
		Sendinput, traceroute www.google.com.au {Enter}
	SendInput, tracert *The IP / Server you're having issues with* {Enter 2}Thanks for your patience and co-operation in doing these tests for us.
	Gui, Destroy

Exit
Return

;==========================
; Voip Settings
;==========================
::!voipset::
	Gui, Add, Text, Section xm w200, SIP Proxy:
	Gui, Add, Edit, Section ys w000, AussieBB.nms1.voice.wide.net.au
	Gui, Add, Text, Section xm w200, SIP Registrar:
	Gui, Add, Edit, Section ys w200, AussieBB.nms1.voice.wide.net.au
	Gui, Add, Text, Section xm w200, SIP Outbound Proxy:
	Gui, Add, Edit, Section ys w200, AussieBB.nms1.voice.wide.net.au
	Gui, Add, Text, Section xm w200, Port number (all sections)
	Gui, Add, Edit, Section ys, 5060
	Gui, Add, Text, Section xm, For Netcomm NF18ACV, NL19, and Netcomm Mesh with NC-16 or NC2 firmware
	Gui, Add, Text, Section xm, disable the outbound proxy instead, leaving it blank.
	Gui, Add, Text, Section xm w200, Primary DNS:
	Gui, Add, Edit, Section ys w200, 202.142.142.142
	Gui, Add, Text, Section xm w200, Secondary DNS: 
	Gui, Add, Edit, Section ys w200, 202.142.142.242
	Gui, Add, Text, Section xm, For all Netcomm Devices:
	Gui, Add, Edit, xm w420, 000|[*#]X[0-9*].#|**XX|*#X[0-9*].#|#*x[0-9*].#|00[1-9]xx.t|014XXXXXXX|016XXXXXX|0192X|0198XXXXXX|0[23478]XXXXXXXX|0500XXXXXX|11XX|123X|124XX|1251XX|1252XXX|1255X|1258XXX|1271X|130XXXXXXX|1802XXX|189XX|1[8-9]XXXXXXXX|[2-9]XXXXXXX|13[1-9]XXX|101|106|1225|1223
	Gui, Add, Text, Section xm, For Cisco SPA devices:
	Gui, Add, Edit, xm w420, (*xx|000S0|13[1-9]xxxS0|130xxxxxxxS0|180xxxxxxxS0|125xxxS0|#:>xx.:|0[2-9]xxxxxxxxS0|[2-9]xxxxxxxS0|106S0|101S0|001x.)
	Gui, Add, Text, Section xm, For all Grandstream HT812 devices:
	Gui, Add, Edit, xm w420, { [23456789]xxxxxxx | 0[23478]xxxxxxxx | 13[123456789]xxx | 0011x. | 1[38]00xxxxxx | 000 | 101 | 141 }
	Gui, Add, Text, Section xm, Netcomm NF10WV if alarm numbers required (1345 xxxx numbers)
	Gui, Add, Edit, xm w430, 000|[*#]X[0-9*].#|**XX|*#X[0-9*].#|#*x[0-9*].#|00[1-9]xx.t|014XXXXXXX|016XXXXXX|0192X|0198XXXXXX|0[23478]XXXXXXXX|0500XXXXXX|11XX|123X|124XX|1251XX|1252XXX|1255X|1258XXX|1271X|130XXXXXXX|1802XXX|189XX|1[8-9]XXXXXXXX|[2-9]XXXXXXX|13[12356789]xxx|134[012346789]xx|1345xxxx|101|106|1225|1223
	Gui, Show, w450 h520, ACS information
	Gui, Add, Button, default gButtonOKvoip w80, OK
Exit
return

ButtonOKvoip:
	Gui, Destroy

Exit
Return

;======================================
; ACS wan enable
;======================================
::!acswan:: 
Sendinput <cwmp:SetParameterValues xmlns:SOAP-ENC="http://schemas.xmlsoap.org/soap/encoding/" xmlns:cwmp="urn:dslforum-org:cwmp-1-0">{Enter}
<ParameterList SOAP-ENC:arrayType="cwmp:ParameterValueStruct[2]">{Enter}
<ParameterValueStruct>{Enter}
<Name>InternetGatewayDevice.X_BROADCOM_COM_SrvControlCfg.1.WanAllow</Name>{Enter}
<Value type="boolean">1</Value>{Enter}
</ParameterValueStruct>{Enter}
<ParameterValueStruct>{Enter}
<Name>InternetGatewayDevice.X_BROADCOM_COM_IPAddrAccCtrl.Enable</Name>{Enter}
<Value type="boolean">0</Value>{Enter}
</ParameterValueStruct>{Enter}
</ParameterList>{Enter}
<ParameterKey></ParameterKey>{Enter}
</cwmp:SetParameterValues>{Enter}
Exit
Return

;=======================================
; Loan / Warranty Router
;=======================================
::!loan::
	gui, add, text, Section xm w150, Whitelable Provider:
	gui, add, radio, Section ys w100 vrepOrg, Origin
	gui, add, radio, Section ys w100 vrepAus checked, AussieBB
	gui, add, text, Section xm w150, Loan or Warranty:
	gui, add, radio, Section ys w100 vrepLoan checked, Loan
	gui, add, radio, Section ys w100 vrepWar, Warranty
	gui, add, text, Section xm w150, Customer Name:
	gui, add, edit, Section ys w200 vrepName,
	gui, add, text, Section xm w150, Device:
	gui, add, dropdownlist, Section ys w200 vretdev, Netcomm NF18Mesh = $149 | Netcomm NS-02 Mesh Point Satellite = $149 | Netcomm NF20MESH = $179 | Netcomm NF20MESH + NS-02 = $299 | Netcomm NF20MESH + 2x NS-02 = $429 | Google Nest Router 1pk = $249 | Google Nest Router 2pk = $349 | Google Nest Router 3pk = $469 | Google Nest Mesh Point = $199 | Grandstream HT812 = $69 | Fetch Mini = $135 | Fetch Mighty = $300
	gui, add, text, Section xm w150, Postage cost:
	gui, add, radio, Section ys w50 vrepfr, Free
	gui, add, radio, Section ys w50 vrepfif, $15
	gui, add, radio, Section ys w50 vreptwe, $20
	Gui, Add, Button, w150 xm section default grepla, Submit
	Gui, Add, Button, w150 ys, Close
	Gui, Show,, New Call
return
Exit

repla:
	Gui, Submit
	replacost := ""
	if (repfr == 1) {
		replacost:= "$0"
		}
	if (repfif == 1) {
		replacost:= "$15"
		}
	if (reptwe == 1) {
		replacost:= "$20"
		}
	if (repOrg == 1 && repLoan == 1) {
		SendInput Hi %repName%, {enter 2}As per our discussion today, we're sending out a loan unit for the purpose of testing your service. {enter 2}The loan unit comes pre-configured for your service and should be as simple as plugging it in and giving it time to connect. {enter 2}It is available for your use for up to 14 days from when you receive it, though at our discretion we may reduce or extend the time frame of the loan. This will be based upon results of our testing. {enter2}In order to get the unit to you, we'll charge a postage fee of %replacost% which includes a tracking number and a return satchel as we are expecting the modem back. You have the option to purchase it should you wish by calling our Customer Service Team on 1300 980 711. {enter 2}If we do not hear from you after the loan period, or see movement on the return tracking, we’ll apply the full cost of the loan unit to your account, at which point the unit will be seen as being purchased by you and once paid for, will be yours. {enter} %retdev% {enter 2} Got a question? {enter 2}Call us on 1300 980 711
		}
	if (repOrg == 1 && repWar == 1) {
		Sendinput Hi %repName%, {enter 2}As our discussion today, we're sending out a warranty replacement unit. {enter 2}The replacement unit comes pre-configured for your service and should be as simple as plugging it in and giving it time to connect. If you have trouble setting up the new device please contact our Customer Support team. {enter 2}In order to get the unit to you, we'll charge a postage fee of %replacost% which includes a tracking number and a return satchel. Though we sent this unit to you as a loan, if we decide that the loan unit has fixed your problem, we may offer to warranty swap the two units. This is not automatic and does not apply to all circumstances. Please contact our Customer Service Team to discuss. {enter 2}If we agree to swap, you’ll need to send the original unit back in the return satchel that came with the loan unit. Or if you need to you can send the loan unit back in the same satchel.If we do not receive word from you after the loan period, or see movement on the return tracking, we’ll apply the full cost of the loan unit to your account, at which point the unit will be defacto purchased from us and will now be owned by you. {enter 2}he cost that you will incur should you chose to keep the replacement device or fail to return the device is as follows {enter} %retdev% {enter 2} Some reasons why we might decline your warranty include but are not limited to: {enter 2}1. Outside warranty period, No hardware fault is covered beyond the warranty period. Generally this is 2 years for most products. Age of unit is calculated from the date the unit was received ( and not the date it was shipped). {enter}2. Electrical damage, including storms, lightning strikes, power surges and blackouts. {enter}3. Wear and tear, such as frayed cabling, dents and nicks. {enter}4. Associated cabling, such as ethernet and phone cables (power adapters ARE covered, unless damaged by customer). {enter}5. Accidental damage, such as damage caused by overheating, poor ventilation and liquids (spillage). {enter}6. Intentional damage {enter 2}Got a question? {enter}Call us on 1300 980 711
		}
	if (repAus == 1 && repLoan == 1 ) {
		Sendinput Hi %repname%, {enter 2}As per our discussion today, we're sending out a loan unit for the purpose of testing your service. {enter 2} The loan unit comes pre-configured for your service and should be as simple as plugging it in and giving it time to connect. {enter 2}It is available for your use for up to 14 days from when you receive it, though at our discretion we may reduce or extend the time frame of the loan. This will be based upon results of our testing. {enter 2} In order to get the unit to you, we must charge a postage fee of %replacost% which includes a tracking number and a return satchel. Though we sent this unit to you as a loan, you have the option to purchase it should you wish. Please speak to our call centre staff to talk about pricing. {enter 2}As this is a loan, you are required to return it at the end of the loan period stated below. The Loan period is 14 days from the day you sign for the item. You are responsible for contacting Aussie Broadband for assistance in connecting the Loan Device in the event that you require technical assistance doing so. If you require an extension on your loan period, one may be granted to you under special circumstances, this must be communicated to Aussie Broadband customer service representatives prior to your loan period ending. {enter 2}If we do not receive the unit in resellable condition or otherwise see it in transit after the loan period, we reserve the right to raise the full cost of the loan unit to your account, at which point the unit will be considered purchased from us and it will become your property. The cost that you will incur should you chose to keep the loan device or fail to return the device is as follows: {enter} %retdev% {enter 2}If you have any questions, please call us on 1300 880 905.
		}
	if (repAus == 1 && repWar ==1) {
		Sendinput Hi %repName%, {enter 2}As our discussion today, we're sending out a warranty replacement unit. {enter 2}The replacement unit comes pre-configured for your service and should be as simple as plugging it in and giving it time to connect. If you have trouble setting up the new device please contact our Customer Support team. {enter 2}In order to get the unit to you, we'll charge a postage fee of %replacost% which includes a tracking number and a return satchel. Though we sent this unit to you as a loan, if we decide that the loan unit has fixed your problem, we may offer to warranty swap the two units. This is not automatic and does not apply to all circumstances. Please contact our Customer Service Team to discuss. {enter 2}If we agree to swap, you’ll need to send the original unit back in the return satchel that came with the loan unit. Or if you need to you can send the loan unit back in the same satchel.If we do not receive word from you after the loan period, or see movement on the return tracking, we’ll apply the full cost of the loan unit to your account, at which point the unit will be defacto purchased from us and will now be owned by you. {enter 2}the cost that you will incur should you chose to keep the replacement device or fail to return the device is as follows: {enter} %retdev% {enter 2}Some reasons why we might decline your warranty include but are not limited to: {enter}1. Outside warranty period, No hardware fault is covered beyond the warranty period. Generally this is 2 years for most products. Age of unit is calculated from the date the unit was received ( and not the date it was shipped). {enter}2.Electrical damage, including storms, lightning strikes, power surges and blackouts. {enter}3. Wear and tear, such as frayed cabling, dents and nicks. {enter}4. Associated cabling, such as ethernet and phone cables (power adapters ARE covered, unless damaged by customer). {enter} 5.Accidental damage, such as damage caused by overheating, poor ventilation and liquids (spillage).{enter}6. Intentional damage {enter}Got a question? {enter}Call us on 1300 980 711
		}
return
exit

; Reload Script
	:*?:morechaos::
		Reload
	Return
	!F1::
		Reload
	Return

; Lock Terminal
	^+L::
		Run, rundll32 user32.dll`,LockWorkStation
		Return

; Logout Terminal
	:*?:sweetdreams::
		Run, logoff
	Return

;**********************   Version History   **********************
;
; Pre-Release 	
;		- Reduced and optimised original script. 
;		- Renamed and organised most of the commands. 
;		- Deleted duplicates and modified text strings to be more modern.
;		- Converted functions to hot strings when applicable
;		- Removed 2053 lines of code
;
; V1.0
;		- Added commonly used strings that I did not think of until I got back on tasking
;		- updated the superlookup tool to work a little more efficiently with Opticomm lookups
;		- updated superlookup tool to work with more AusPost tracking numbers
;		- added email hotkey at the top so that logging into Calabrio is easier as it does not stay logged in
;		- added lock terminal command
;		- added logout command from Terry
;
; V1.1
;		- added template for game releases affecting CVCs
;		- added Paramount+ code escalation template
;		- added template for calling OptiNOC
;		- updated NRF Warning to be an SMS
;		- added another tracking number prefix (36BRU)
;		- added a string for coax resetting a HFC service
;		- added a string for account deletion and data laws
;		- added string for payment method on file T&Cs
;		- changed the auto logout string to "sweetdreams"
;		- added template for requesting a POD from eu
;
; V1.2
;		- added template for delay on app response times
;		- added template for SIM re-seat
;		- started a section for prov hotstrings and added template for cooling off period ending
;		- added template for booking NBN faults through MyAussie
;		- split checkin command into 2 to account for 24 hours or 48 depending on how far behind we are
;		- added template for no ID fault resolved quick calls
;		- fixed coax reset template because it was garbage
;		- added template advising not to kick connection for no reason
;		- updated superlookup to pull the startrack website (wont search for the tracking straight away due to URL differences)
;		- added formal NRF date warning
;		- added T/S T&Cs template
;		- added config guide for NF18Mesh
;		- added config guide for NF20Mesh
;		- added WAN access guide for NF18 and NF20MESH
;		- changed Opticomm OTT linking to a function for clipboard usage
;		- added email template to request return of loan router
;		- added email template to request return of faulty router after loan

; Things to add:
; Network Activity Warning
;
; V1.3
;		- added settings template for test benching VoIP using MicroSIP
;		- updated 'thanks' template to be generic rather than Aussie phone no
;		- added confirmation template for telling eu they should expect an SMS from NBN
;		- updated superlookup with another auspost RegEx lookup
;		- updated the App open and close hotkeys to not be billing company specific
;   - added template for preemptive appt bookings to keep NBN ticket open
