function USERDevice(Domain,IpAddr,MacAddr,Port,IpType,DevType,DevStatus,PortType,Time,HostName,IPv4Enabled,IPv6Enabled,DeviceType)
{
this.Domain = Domain;
this.IpAddr    = (IpAddr.length == 0)?"--":IpAddr;
this.MacAddr= MacAddr;

if(Port=="LAN0" || Port=="SSID0")
{
this.Port  = "--"; 
}
else
{
this.Port  = Port;
}

this.PortType= PortType;

this.DevStatus = DevStatus;
this.IpType= IpType;
if(IpType=="Static")
{
  this.DevType="--";
}
else
{
if(DevType=="")
{
this.DevType= "--";
}
else
{
this.DevType= DevType;
}
}
this.Time    = Time;

if(HostName=="")
{
this.HostName= "--";
}
else
{
   this.HostName= HostName;
}

this.IPv4Enabled = IPv4Enabled;
this.IPv6Enabled = IPv6Enabled;
this.DeviceType = DeviceType;
this.instid       = '';
this.IsClickDev   = false;
}

var UserDevinfo = new Array(new USERDevice("InternetGatewayDevice.LANDevice.1.X_HW_UserDev.1","192\x2e168\x2e100\x2e2","78\x3a8c\x3ab5\x3ae9\x3ac9\x3a43","LAN1","DHCP","MSFT\x205\x2e0","Online","ETH","3\x3a36","TL\x2dWR845N","1","1","0"),null);

var UserDevinfoTmp = new Array();
for(var i = 0; i < UserDevinfo.length - 1; i++)
{
var id = UserDevinfo[i].Domain.split(".");
UserDevinfo[i].instid = id[id.length -1];
if("1" == UserDevinfo[i].IPv4Enabled )
{
UserDevinfoTmp.push(UserDevinfo[i]);
}
}
UserDevinfoTmp.push(null);

function GetUserDevInfoList()
{
return UserDevinfoTmp;
}

GetUserDevInfoList();