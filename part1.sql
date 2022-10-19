



select sub.id_report, sub.id_sentence,sub2.sentence
from
(select d.id_report, d.id_sentence,d.sentence, r.id_row 
from DocumentSentencesRules d
join
RulesWithNoFinding r
on d.id_rule = r.id_rule) sub
join
(select d.id_report, d.id_sentence,d.sentence, r.id_row 
from DocumentSentencesRules d
join
RulesWithNoFinding r
on d.id_rule_no_finding = r.id_rule) sub2

on sub.id_report = sub2.id_report and sub.id_row = sub2.id_row

where sub.id_sentence - sub2.id_sentence = 1






