<?php
function hasRole($user_id, $role) {
	global $conn;
	$sql = "SELECT permissions.perm_desc
	FROM user_role
	JOIN roles
		ON user_role.role_id = roles.role_id
	JOIN role_perm
		ON roles.role_id = role_perm.role_id
	JOIN permissions
		ON role_perm.perm_id = permissions.perm_id
	WHERE user_role.user_id = :userId";

	$stmt = $conn->prepare($sql);
	$stmt->bindParam(':userId', $user_id, PDO::PARAM_INT);
	$stmt->execute();

	foreach($stmt->fetchAll() as $row) {
		if (in_array($role, $row)) {
			return true;
		}
	}
	return false;
}
?>