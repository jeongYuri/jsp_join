<%@ page contentType="text/html; charset=EUC-KR" %>
<html>
<head>
	<title>ȸ������</title>
	<link href="style.css" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="script.js"></script>
	<script type="text/javascript">
		function idCheck(id) {
			frm = document.regFrm;
			if (id == "") {
				alert("���̵� �Է��� �ּ���.");
				frm.id.focus();
				return;
			}
			url = "idCheck.jsp?id=" + id;
			window.open(url, "IDCheck", "width=300,height=150");
		}

		function zipSearch() {
			url = "zipSearch.jsp?search=n";
			window.open(url, "ZipCodeSearch","width=500,height=300,scrollbars=yes");
		}
	</script>
</head>
<body bgcolor="FFFFFF" onLoad="regFrm.id.focus()">
<div align="center">
	<br /><br />
	<form name="regFrm" method="post" action="memberProc.jsp">
		<table cellpadding="5">
			<tr>
				<td bgcolor="#F0F2F2">
					<table border="1" cellspacing="0" cellpadding="2" width="600">
						<tr bgcolor="#939494">
							<td colspan="3"><font color="#FFFFFF"><b>ȸ�� ����</b></font></td>
						</tr>
						<tr>
							<td width="20%">���̵�</td>
							<td width="50%">
								<input name="id" size="15">
								<input type="button" value="ID�ߺ�Ȯ��" onClick="idCheck(this.form.id.value)">
							</td>

						</tr>
						<tr>
							<td>�н�����</td>
							<td><input type="password" name="pwd" size="15"></td>

						</tr>
						<tr>
							<td>�н����� Ȯ��</td>
							<td><input type="password" name="repwd" size="15"></td>

						</tr>
						<tr>
							<td>�̸�</td>
							<td><input name="name" size="15">
							</td>

						</tr>
						<tr>
							<td>����</td>
							<td>
								��<input type="radio" name="gender" value="1" checked>
								��<input type="radio" name="gender" value="2">
							</td>

						</tr>
						<tr>
							<td>�������</td>
							<td><input name="birthday" size="6">
								ex)990402</td>

						</tr>
						<tr>
							<td>Email</td>
							<td><input name="email" size="30">
							</td>

						</tr>
						<tr>
							<td>�����ȣ</td>
							<td><input name="zipcode" size="5" readonly>
								<input type="button" value="�����ȣã��" onClick="zipSearch()">
							</td>

						</tr>
						<tr>
							<td>�ּ�</td>
							<td><input name="address" size="45"></td>

						</tr>
						<tr>
							<td colspan="3" align="center">
								<input type="button" value="ȸ������" onclick="inputCheck()">
								&nbsp; &nbsp;
								<input type="reset" value="�ٽþ���">
								&nbsp; &nbsp;
								<input type="button" value="�α���" onClick="javascript:location.href='login.jsp'">

							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>