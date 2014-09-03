[#import "/org/springframework/web/servlet/view/freemarker/spring.ftl" as spring /]
[#assign htmlEscape=true in spring /]
[#assign blossom=JspTaglibs["blossom-taglib"] /]
 

<div>
bit coin addresses 
<a href="btcaddress.html">[new]</a>
</div>

<table>
<tr>
<th>Action</th>

<th>ID</th>
<th>Entered</th>
<th>Status</th>
<th>Wallet</th>
<th>Address</th>
<th>Balance</th>
<th>Num Trans</th>
<th>Received</th>
</tr>

[#list btcaddresses as btcaddress]
    <tr> 
     <td>
     <a href="btcaddress.html?id=${btcaddress.btcaddress.id}">view/edit</a>
     <a href=" http://bitref.com/${btcaddress.btcaddress.publickey}">validate</a>

    </td>
    
    <td>${btcaddress.btcaddress.id}</td>
    <td>${btcaddress.btcaddress.entered?date}</td>
    <td>${btcaddress.btcaddress.status}</td>
    <td>${btcaddress.btcaddress.wallet.name}</td>
    <td>${btcaddress.btcaddress.publickey}</td>
    <td>${btcaddress.bitcoinAddress.finalBalance}</td>
    <td>${btcaddress.bitcoinAddress.numTransactions}</td>
    <td>${btcaddress.bitcoinAddress.totalReceived}</td>
    </tr>
[/#list]
</table>
          
