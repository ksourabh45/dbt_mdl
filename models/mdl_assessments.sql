SELECT mdl_adaptiveassessment.timecreated,
    mdl_adaptiveassessment.timemodified,
    mdl_adaptiveassessment.name,
    mdl_adaptiveassessment.course,
    mdl_adaptiveassessment.id
   FROM learninganalytics.mdl_adaptiveassessment
UNION
 SELECT mdl_quiz.timecreated,
    mdl_quiz.timemodified,
    mdl_quiz.name,
    mdl_quiz.course,
    mdl_quiz.id
   FROM learninganalytics.mdl_quiz;
