$(function() {
	if (jsxc.xmpp.conn == null) {
		var username = "${member.id}";
		var password = "user1";
		var jid = username + "@localhost";
		jsxc.init({
			xmpp : {
				url : 'http://localhost:7070/http-bind/'
			},
			root : '/team2/jsxc.example/jsxc'

		});

		jsxc.start(jid, password);
	}

	$('#webTalkLogin').click(jsxc.gui.showLoginBox);
});