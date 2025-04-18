class GlobalSurveyResponseMap < SurveyResponseMap
    belongs_to :questionnaire, foreign_key: 'reviewed_object_id'
    def questionnaire
        Questionnaire.find_by(id: reviewed_object_id)
    end
    
    def survey_parent
        questionnaire
    end
end