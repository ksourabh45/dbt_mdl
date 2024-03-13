SELECT DISTINCT u.id AS userid,
       c.id AS courseid,
       ct.id as contextid,
	   To_timestamp(e.timecreated) AS enrollment_time,
       ra.roleid AS role_id
FROM learninganalytics.mdl_user u
JOIN learninganalytics.mdl_user_enrolments ue ON ue.userid = u.id
JOIN learninganalytics.mdl_enrol e ON e.id = ue.enrolid
JOIN learninganalytics.mdl_role_assignments ra ON ra.userid = u.id
JOIN learninganalytics.mdl_context ct ON ct.id = ra.contextid AND ct.contextlevel = 50
JOIN learninganalytics.mdl_course c ON c.id = ct.instanceid AND e.courseid = c.id
JOIN learninganalytics.mdl_role r ON r.id = ra.roleid
WHERE e.status = 0
  AND (ue.timeend = 0 OR to_timestamp(ue.timeend) > current_timestamp) AND e.status = 0
ORDER BY c.id
