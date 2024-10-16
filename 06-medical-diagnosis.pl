hypothesis(Patient, measles) :- 
    symptom(Patient, fever),
    symptom(Patient, cough),
    symptom(Patient, runny_nose),
    symptom(Patient, rash).

hypothesis(Patient, flu) :- 
    symptom(Patient, fever),
    symptom(Patient, headache),
    symptom(Patient, body_ache),
    symptom(Patient, chills),
    symptom(Patient, sore_throat),
    symptom(Patient, runny_nose),
    symptom(Patient, cough).

hypothesis(Patient, common_cold) :- 
    symptom(Patient, headache),
    symptom(Patient, sneezing),
    symptom(Patient, sore_throat),
    symptom(Patient, runny_nose),
    symptom(Patient, chills).

hypothesis(Patient, chicken_pox) :- 
    symptom(Patient, fever),
    symptom(Patient, chills),
    symptom(Patient, body_ache),
    symptom(Patient, rash).

symptom(charlie, fever).
symptom(charlie, cough).
symptom(charlie, runny_nose).
symptom(charlie, rash).
symptom(charlie, headache).
symptom(charlie, body_ache).
symptom(charlie, chills).
symptom(charlie, sore_throat).
