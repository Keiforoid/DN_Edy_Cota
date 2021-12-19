var memberId;

var inputMemberId = document.getElementById('inputMemberId')
var btnMemberIn = document.getElementById('registerMemberIn')
var btnMemberOut = document.getElementById('registerMemberOut')
var modal = document.getElementById('memberIdModal')
var myModal = new bootstrap.Modal(document.getElementById("memberIdModal"), {});


if (btnMemberIn != null) {
    btnMemberIn.onclick = function () {
        memberId = inputMemberId.value;
        openModal();
    }
}

if (btnMemberOut != null) {
    btnMemberOut.onclick = function () {
        memberId = inputMemberId.value;
        openModal();
    }
}

inputMemberId.onkeypress = function (e) {
    if (e.keyCode == 13) {
        memberId = inputMemberId.value;
        openModal();
        return false;
    }
}

function openModal() {
    var today = new Date();
    var time = today.getHours() + ":" + today.getMinutes() + ":" + today.getSeconds();

    if (btnMemberIn != null) {
        document.getElementById("myModalContent").innerHTML = "Member registered entry " + memberId + " at " + time;
    }
    if (btnMemberOut != null) {
        document.getElementById("myModalContent").innerHTML = "Check out for member " + memberId + " at " + time;
    }

    myModal.show();

    setTimeout(function () {
        myModal.hide();
    }, 3000);
}


