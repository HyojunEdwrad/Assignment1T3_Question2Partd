# save as question2partd.sql
USE compbiol;
SELECT m.LastName, m.FirstName, m.MemberID FROM Member m
WHERE NOT EXISTS
	(
	SELECT * FROM Entry e
	WHERE NOT EXISTS
		(
		SELECT * FROM Entry a
		WHERE a.MemberID=m.MemberID AND a.Year=e.Year
		)
	);
