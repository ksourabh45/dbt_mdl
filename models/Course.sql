--new values
SELECT to_timestamp(enddate) as enddate, to_timestamp(timecreated) as timecreated , to_timestamp(timemodified) as timemodified, format, id, fullname, category, startdate, shortname
FROM learninganalytics.mdl_course
-- add unique id
ALTER TABLE learninganalytics.mdl_course ADD CONSTRAINT mdl_course_unique UNIQUE (id);
