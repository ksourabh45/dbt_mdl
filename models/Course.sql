--new values
SELECT id, fullname,shortname, category, format, to_timestamp(startdate) as startdate, to_timestamp(enddate) as enddate, to_timestamp(timecreated) as timecreated , to_timestamp(timemodified) as timemodified
FROM learninganalytics.mdl_course
