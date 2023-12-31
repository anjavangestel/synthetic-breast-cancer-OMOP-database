DROP INDEX IF EXISTS omopcdm_synthetic.idx_person_id;
DROP INDEX IF EXISTS omopcdm_synthetic.idx_gender;
DROP INDEX IF EXISTS omopcdm_synthetic.idx_observation_period_id_1;
DROP INDEX IF EXISTS omopcdm_synthetic.idx_death_person_id_1;
DROP INDEX IF EXISTS omopcdm_synthetic.idx_procedure_person_id_1;
DROP INDEX IF EXISTS omopcdm_synthetic.idx_procedure_concept_id_1;
DROP INDEX IF EXISTS omopcdm_synthetic.idx_procedure_visit_id_1;
DROP INDEX IF EXISTS omopcdm_synthetic.idx_condition_person_id_1;
DROP INDEX IF EXISTS omopcdm_synthetic.idx_condition_concept_id_1;
DROP INDEX IF EXISTS omopcdm_synthetic.idx_condition_visit_id_1;
DROP INDEX IF EXISTS omopcdm_synthetic.idx_episode_person_id_1;
DROP INDEX IF EXISTS omopcdm_synthetic.idx_episode_concept_id_1;
DROP INDEX IF EXISTS omopcdm_synthetic.idx_ee_episode_id_1;
DROP INDEX IF EXISTS omopcdm_synthetic.idx_ee_field_concept_id_1;
DROP INDEX IF EXISTS omopcdm_synthetic.idx_measurement_person_id_1;
DROP INDEX IF EXISTS omopcdm_synthetic.idx_measurement_concept_id_1;
DROP INDEX IF EXISTS omopcdm_synthetic.idx_measurement_visit_id_1;
DROP INDEX IF EXISTS omopcdm_synthetic.idx_observation_person_id_1;
DROP INDEX IF EXISTS omopcdm_synthetic.idx_observation_concept_id_1;
DROP INDEX IF EXISTS omopcdm_synthetic.idx_observation_visit_id_1;
DROP INDEX IF EXISTS omopcdm_synthetic.idx_drug_person_id_1;
DROP INDEX IF EXISTS omopcdm_synthetic.idx_drug_concept_id_1;
DROP INDEX IF EXISTS omopcdm_synthetic.idx_drug_visit_id_1;
DROP INDEX IF EXISTS omopcdm_synthetic.idx_device_person_id_1;
DROP INDEX IF EXISTS omopcdm_synthetic.idx_device_concept_id_1;
DROP INDEX IF EXISTS omopcdm_synthetic.idx_device_visit_id_1;
DROP INDEX IF EXISTS omopcdm_synthetic.idx_specimen_person_id_1;
DROP INDEX IF EXISTS omopcdm_synthetic.idx_specimen_concept_id_1;
DROP INDEX IF EXISTS omopcdm_synthetic.idx_fact_relationship_id1;
DROP INDEX IF EXISTS omopcdm_synthetic.idx_fact_relationship_id2;
DROP INDEX IF EXISTS omopcdm_synthetic.idx_fact_relationship_id3;
DROP INDEX IF EXISTS omopcdm_synthetic.idx_drug_era_person_id_1;
DROP INDEX IF EXISTS omopcdm_synthetic.idx_drug_era_concept_id_1;
DROP INDEX IF EXISTS omopcdm_synthetic.idx_dose_era_person_id_1;
DROP INDEX IF EXISTS omopcdm_synthetic.idx_dose_era_concept_id_1;
DROP INDEX IF EXISTS omopcdm_synthetic.idx_condition_era_person_id_1;
DROP INDEX IF EXISTS omopcdm_synthetic.idx_condition_era_concept_id_1;
DROP INDEX IF EXISTS omopcdm_synthetic.idx_source_to_concept_map_3;
DROP INDEX IF EXISTS omopcdm_synthetic.idx_source_to_concept_map_1;
DROP INDEX IF EXISTS omopcdm_synthetic.idx_source_to_concept_map_2;
DROP INDEX IF EXISTS omopcdm_synthetic.idx_source_to_concept_map_c;
DROP INDEX IF EXISTS omopcdm_synthetic.idx_visit_person_id_1;
DROP INDEX IF EXISTS omopcdm_synthetic.idx_visit_concept_id_1;
DROP INDEX IF EXISTS omopcdm_synthetic.idx_visit_det_person_id_1;
DROP INDEX IF EXISTS omopcdm_synthetic.idx_visit_det_concept_id_1;
DROP INDEX IF EXISTS omopcdm_synthetic.idx_visit_det_occ_id;
DROP INDEX IF EXISTS omopcdm_synthetic.idx_note_person_id_1;
DROP INDEX IF EXISTS omopcdm_synthetic.idx_note_concept_id_1;
DROP INDEX IF EXISTS omopcdm_synthetic.idx_note_visit_id_1;
DROP INDEX IF EXISTS omopcdm_synthetic.idx_note_nlp_note_id_1;
DROP INDEX IF EXISTS omopcdm_synthetic.idx_note_nlp_concept_id_1;
DROP INDEX IF EXISTS omopcdm_synthetic.idx_location_id_1;
DROP INDEX IF EXISTS omopcdm_synthetic.idx_care_site_id_1;
DROP INDEX IF EXISTS omopcdm_synthetic.idx_provider_id_1;
DROP INDEX IF EXISTS omopcdm_synthetic.idx_period_person_id_1;
DROP INDEX IF EXISTS omopcdm_synthetic.idx_cost_event_id;
DROP INDEX IF EXISTS omopcdm_synthetic.idx_metadata_concept_id_1;

ALTER TABLE omopcdm_synthetic.PERSON DROP CONSTRAINT IF EXISTS fpk_PERSON_gender_concept_id;
ALTER TABLE omopcdm_synthetic.PERSON DROP CONSTRAINT IF EXISTS fpk_PERSON_race_concept_id;
ALTER TABLE omopcdm_synthetic.PERSON DROP CONSTRAINT IF EXISTS fpk_PERSON_ethnicity_concept_id;
ALTER TABLE omopcdm_synthetic.PERSON DROP CONSTRAINT IF EXISTS fpk_PERSON_location_id;
ALTER TABLE omopcdm_synthetic.PERSON DROP CONSTRAINT IF EXISTS fpk_PERSON_provider_id;
ALTER TABLE omopcdm_synthetic.PERSON DROP CONSTRAINT IF EXISTS fpk_PERSON_care_site_id;
ALTER TABLE omopcdm_synthetic.PERSON DROP CONSTRAINT IF EXISTS fpk_PERSON_gender_source_concept_id;
ALTER TABLE omopcdm_synthetic.PERSON DROP CONSTRAINT IF EXISTS fpk_PERSON_race_source_concept_id;
ALTER TABLE omopcdm_synthetic.PERSON DROP CONSTRAINT IF EXISTS fpk_PERSON_ethnicity_source_concept_id;
ALTER TABLE omopcdm_synthetic.OBSERVATION_PERIOD DROP CONSTRAINT IF EXISTS fpk_OBSERVATION_PERIOD_person_id;
ALTER TABLE omopcdm_synthetic.OBSERVATION_PERIOD DROP CONSTRAINT IF EXISTS fpk_OBSERVATION_PERIOD_period_type_concept_id;
ALTER TABLE omopcdm_synthetic.VISIT_OCCURRENCE DROP CONSTRAINT IF EXISTS fpk_VISIT_OCCURRENCE_person_id;
ALTER TABLE omopcdm_synthetic.VISIT_OCCURRENCE DROP CONSTRAINT IF EXISTS fpk_VISIT_OCCURRENCE_visit_concept_id;
ALTER TABLE omopcdm_synthetic.VISIT_OCCURRENCE DROP CONSTRAINT IF EXISTS fpk_VISIT_OCCURRENCE_visit_type_concept_id;
ALTER TABLE omopcdm_synthetic.VISIT_OCCURRENCE DROP CONSTRAINT IF EXISTS fpk_VISIT_OCCURRENCE_provider_id;
ALTER TABLE omopcdm_synthetic.VISIT_OCCURRENCE DROP CONSTRAINT IF EXISTS fpk_VISIT_OCCURRENCE_care_site_id;
ALTER TABLE omopcdm_synthetic.VISIT_OCCURRENCE DROP CONSTRAINT IF EXISTS fpk_VISIT_OCCURRENCE_visit_source_concept_id;
ALTER TABLE omopcdm_synthetic.VISIT_OCCURRENCE DROP CONSTRAINT IF EXISTS fpk_VISIT_OCCURRENCE_admitted_from_concept_id;
ALTER TABLE omopcdm_synthetic.VISIT_OCCURRENCE DROP CONSTRAINT IF EXISTS fpk_VISIT_OCCURRENCE_discharged_to_concept_id;
ALTER TABLE omopcdm_synthetic.VISIT_OCCURRENCE DROP CONSTRAINT IF EXISTS fpk_VISIT_OCCURRENCE_preceding_visit_occurrence_id;
ALTER TABLE omopcdm_synthetic.VISIT_DETAIL DROP CONSTRAINT IF EXISTS fpk_VISIT_DETAIL_person_id;
ALTER TABLE omopcdm_synthetic.VISIT_DETAIL DROP CONSTRAINT IF EXISTS fpk_VISIT_DETAIL_visit_detail_concept_id;
ALTER TABLE omopcdm_synthetic.VISIT_DETAIL DROP CONSTRAINT IF EXISTS fpk_VISIT_DETAIL_visit_detail_type_concept_id;
ALTER TABLE omopcdm_synthetic.VISIT_DETAIL DROP CONSTRAINT IF EXISTS fpk_VISIT_DETAIL_provider_id;
ALTER TABLE omopcdm_synthetic.VISIT_DETAIL DROP CONSTRAINT IF EXISTS fpk_VISIT_DETAIL_care_site_id;
ALTER TABLE omopcdm_synthetic.VISIT_DETAIL DROP CONSTRAINT IF EXISTS fpk_VISIT_DETAIL_visit_detail_source_concept_id;
ALTER TABLE omopcdm_synthetic.VISIT_DETAIL DROP CONSTRAINT IF EXISTS fpk_VISIT_DETAIL_admitted_from_concept_id;
ALTER TABLE omopcdm_synthetic.VISIT_DETAIL DROP CONSTRAINT IF EXISTS fpk_VISIT_DETAIL_discharged_to_concept_id;
ALTER TABLE omopcdm_synthetic.VISIT_DETAIL DROP CONSTRAINT IF EXISTS fpk_VISIT_DETAIL_preceding_visit_detail_id;
ALTER TABLE omopcdm_synthetic.VISIT_DETAIL DROP CONSTRAINT IF EXISTS fpk_VISIT_DETAIL_parent_visit_detail_id;
ALTER TABLE omopcdm_synthetic.VISIT_DETAIL DROP CONSTRAINT IF EXISTS fpk_VISIT_DETAIL_visit_occurrence_id;
ALTER TABLE omopcdm_synthetic.CONDITION_OCCURRENCE DROP CONSTRAINT IF EXISTS fpk_CONDITION_OCCURRENCE_person_id;
ALTER TABLE omopcdm_synthetic.CONDITION_OCCURRENCE DROP CONSTRAINT IF EXISTS fpk_CONDITION_OCCURRENCE_condition_concept_id;
ALTER TABLE omopcdm_synthetic.CONDITION_OCCURRENCE DROP CONSTRAINT IF EXISTS fpk_CONDITION_OCCURRENCE_condition_type_concept_id;
ALTER TABLE omopcdm_synthetic.CONDITION_OCCURRENCE DROP CONSTRAINT IF EXISTS fpk_CONDITION_OCCURRENCE_condition_status_concept_id;
ALTER TABLE omopcdm_synthetic.CONDITION_OCCURRENCE DROP CONSTRAINT IF EXISTS fpk_CONDITION_OCCURRENCE_provider_id;
ALTER TABLE omopcdm_synthetic.CONDITION_OCCURRENCE DROP CONSTRAINT IF EXISTS fpk_CONDITION_OCCURRENCE_visit_occurrence_id;
ALTER TABLE omopcdm_synthetic.CONDITION_OCCURRENCE DROP CONSTRAINT IF EXISTS fpk_CONDITION_OCCURRENCE_visit_detail_id;
ALTER TABLE omopcdm_synthetic.CONDITION_OCCURRENCE DROP CONSTRAINT IF EXISTS fpk_CONDITION_OCCURRENCE_condition_source_concept_id;
ALTER TABLE omopcdm_synthetic.DRUG_EXPOSURE DROP CONSTRAINT IF EXISTS fpk_DRUG_EXPOSURE_person_id;
ALTER TABLE omopcdm_synthetic.DRUG_EXPOSURE DROP CONSTRAINT IF EXISTS fpk_DRUG_EXPOSURE_drug_concept_id;
ALTER TABLE omopcdm_synthetic.DRUG_EXPOSURE DROP CONSTRAINT IF EXISTS fpk_DRUG_EXPOSURE_drug_type_concept_id;
ALTER TABLE omopcdm_synthetic.DRUG_EXPOSURE DROP CONSTRAINT IF EXISTS fpk_DRUG_EXPOSURE_route_concept_id;
ALTER TABLE omopcdm_synthetic.DRUG_EXPOSURE DROP CONSTRAINT IF EXISTS fpk_DRUG_EXPOSURE_provider_id;
ALTER TABLE omopcdm_synthetic.DRUG_EXPOSURE DROP CONSTRAINT IF EXISTS fpk_DRUG_EXPOSURE_visit_occurrence_id;
ALTER TABLE omopcdm_synthetic.DRUG_EXPOSURE DROP CONSTRAINT IF EXISTS fpk_DRUG_EXPOSURE_visit_detail_id;
ALTER TABLE omopcdm_synthetic.DRUG_EXPOSURE DROP CONSTRAINT IF EXISTS fpk_DRUG_EXPOSURE_drug_source_concept_id;
ALTER TABLE omopcdm_synthetic.PROCEDURE_OCCURRENCE DROP CONSTRAINT IF EXISTS fpk_PROCEDURE_OCCURRENCE_person_id;
ALTER TABLE omopcdm_synthetic.PROCEDURE_OCCURRENCE DROP CONSTRAINT IF EXISTS fpk_PROCEDURE_OCCURRENCE_procedure_concept_id;
ALTER TABLE omopcdm_synthetic.PROCEDURE_OCCURRENCE DROP CONSTRAINT IF EXISTS fpk_PROCEDURE_OCCURRENCE_procedure_type_concept_id;
ALTER TABLE omopcdm_synthetic.PROCEDURE_OCCURRENCE DROP CONSTRAINT IF EXISTS fpk_PROCEDURE_OCCURRENCE_modifier_concept_id;
ALTER TABLE omopcdm_synthetic.PROCEDURE_OCCURRENCE DROP CONSTRAINT IF EXISTS fpk_PROCEDURE_OCCURRENCE_provider_id;
ALTER TABLE omopcdm_synthetic.PROCEDURE_OCCURRENCE DROP CONSTRAINT IF EXISTS fpk_PROCEDURE_OCCURRENCE_visit_occurrence_id;
ALTER TABLE omopcdm_synthetic.PROCEDURE_OCCURRENCE DROP CONSTRAINT IF EXISTS fpk_PROCEDURE_OCCURRENCE_visit_detail_id;
ALTER TABLE omopcdm_synthetic.PROCEDURE_OCCURRENCE DROP CONSTRAINT IF EXISTS fpk_PROCEDURE_OCCURRENCE_procedure_source_concept_id;
ALTER TABLE omopcdm_synthetic.DEVICE_EXPOSURE DROP CONSTRAINT IF EXISTS fpk_DEVICE_EXPOSURE_person_id;
ALTER TABLE omopcdm_synthetic.DEVICE_EXPOSURE DROP CONSTRAINT IF EXISTS fpk_DEVICE_EXPOSURE_device_concept_id;
ALTER TABLE omopcdm_synthetic.DEVICE_EXPOSURE DROP CONSTRAINT IF EXISTS fpk_DEVICE_EXPOSURE_device_type_concept_id;
ALTER TABLE omopcdm_synthetic.DEVICE_EXPOSURE DROP CONSTRAINT IF EXISTS fpk_DEVICE_EXPOSURE_provider_id;
ALTER TABLE omopcdm_synthetic.DEVICE_EXPOSURE DROP CONSTRAINT IF EXISTS fpk_DEVICE_EXPOSURE_visit_occurrence_id;
ALTER TABLE omopcdm_synthetic.DEVICE_EXPOSURE DROP CONSTRAINT IF EXISTS fpk_DEVICE_EXPOSURE_visit_detail_id;
ALTER TABLE omopcdm_synthetic.DEVICE_EXPOSURE DROP CONSTRAINT IF EXISTS fpk_DEVICE_EXPOSURE_device_source_concept_id;
ALTER TABLE omopcdm_synthetic.DEVICE_EXPOSURE DROP CONSTRAINT IF EXISTS fpk_DEVICE_EXPOSURE_unit_concept_id;
ALTER TABLE omopcdm_synthetic.DEVICE_EXPOSURE DROP CONSTRAINT IF EXISTS fpk_DEVICE_EXPOSURE_unit_source_concept_id;
ALTER TABLE omopcdm_synthetic.MEASUREMENT DROP CONSTRAINT IF EXISTS fpk_MEASUREMENT_person_id;
ALTER TABLE omopcdm_synthetic.MEASUREMENT DROP CONSTRAINT IF EXISTS fpk_MEASUREMENT_measurement_concept_id;
ALTER TABLE omopcdm_synthetic.MEASUREMENT DROP CONSTRAINT IF EXISTS fpk_MEASUREMENT_measurement_type_concept_id;
ALTER TABLE omopcdm_synthetic.MEASUREMENT DROP CONSTRAINT IF EXISTS fpk_MEASUREMENT_operator_concept_id;
ALTER TABLE omopcdm_synthetic.MEASUREMENT DROP CONSTRAINT IF EXISTS fpk_MEASUREMENT_value_as_concept_id;
ALTER TABLE omopcdm_synthetic.MEASUREMENT DROP CONSTRAINT IF EXISTS fpk_MEASUREMENT_unit_concept_id;
ALTER TABLE omopcdm_synthetic.MEASUREMENT DROP CONSTRAINT IF EXISTS fpk_MEASUREMENT_provider_id;
ALTER TABLE omopcdm_synthetic.MEASUREMENT DROP CONSTRAINT IF EXISTS fpk_MEASUREMENT_visit_occurrence_id;
ALTER TABLE omopcdm_synthetic.MEASUREMENT DROP CONSTRAINT IF EXISTS fpk_MEASUREMENT_visit_detail_id;
ALTER TABLE omopcdm_synthetic.MEASUREMENT DROP CONSTRAINT IF EXISTS fpk_MEASUREMENT_measurement_source_concept_id;
ALTER TABLE omopcdm_synthetic.MEASUREMENT DROP CONSTRAINT IF EXISTS fpk_MEASUREMENT_unit_source_concept_id;
ALTER TABLE omopcdm_synthetic.MEASUREMENT DROP CONSTRAINT IF EXISTS fpk_MEASUREMENT_meas_event_field_concept_id;
ALTER TABLE omopcdm_synthetic.OBSERVATION DROP CONSTRAINT IF EXISTS fpk_OBSERVATION_person_id;
ALTER TABLE omopcdm_synthetic.OBSERVATION DROP CONSTRAINT IF EXISTS fpk_OBSERVATION_observation_concept_id;
ALTER TABLE omopcdm_synthetic.OBSERVATION DROP CONSTRAINT IF EXISTS fpk_OBSERVATION_observation_type_concept_id;
ALTER TABLE omopcdm_synthetic.OBSERVATION DROP CONSTRAINT IF EXISTS fpk_OBSERVATION_value_as_concept_id;
ALTER TABLE omopcdm_synthetic.OBSERVATION DROP CONSTRAINT IF EXISTS fpk_OBSERVATION_qualifier_concept_id;
ALTER TABLE omopcdm_synthetic.OBSERVATION DROP CONSTRAINT IF EXISTS fpk_OBSERVATION_unit_concept_id;
ALTER TABLE omopcdm_synthetic.OBSERVATION DROP CONSTRAINT IF EXISTS fpk_OBSERVATION_provider_id;
ALTER TABLE omopcdm_synthetic.OBSERVATION DROP CONSTRAINT IF EXISTS fpk_OBSERVATION_visit_occurrence_id;
ALTER TABLE omopcdm_synthetic.OBSERVATION DROP CONSTRAINT IF EXISTS fpk_OBSERVATION_visit_detail_id;
ALTER TABLE omopcdm_synthetic.OBSERVATION DROP CONSTRAINT IF EXISTS fpk_OBSERVATION_observation_source_concept_id;
ALTER TABLE omopcdm_synthetic.OBSERVATION DROP CONSTRAINT IF EXISTS fpk_OBSERVATION_obs_event_field_concept_id;
ALTER TABLE omopcdm_synthetic.DEATH DROP CONSTRAINT IF EXISTS fpk_DEATH_person_id;
ALTER TABLE omopcdm_synthetic.DEATH DROP CONSTRAINT IF EXISTS fpk_DEATH_death_type_concept_id;
ALTER TABLE omopcdm_synthetic.DEATH DROP CONSTRAINT IF EXISTS fpk_DEATH_cause_concept_id;
ALTER TABLE omopcdm_synthetic.DEATH DROP CONSTRAINT IF EXISTS fpk_DEATH_cause_source_concept_id;
ALTER TABLE omopcdm_synthetic.NOTE DROP CONSTRAINT IF EXISTS fpk_NOTE_person_id;
ALTER TABLE omopcdm_synthetic.NOTE DROP CONSTRAINT IF EXISTS fpk_NOTE_note_type_concept_id;
ALTER TABLE omopcdm_synthetic.NOTE DROP CONSTRAINT IF EXISTS fpk_NOTE_note_class_concept_id;
ALTER TABLE omopcdm_synthetic.NOTE DROP CONSTRAINT IF EXISTS fpk_NOTE_encoding_concept_id;
ALTER TABLE omopcdm_synthetic.NOTE DROP CONSTRAINT IF EXISTS fpk_NOTE_language_concept_id;
ALTER TABLE omopcdm_synthetic.NOTE DROP CONSTRAINT IF EXISTS fpk_NOTE_provider_id;
ALTER TABLE omopcdm_synthetic.NOTE DROP CONSTRAINT IF EXISTS fpk_NOTE_visit_occurrence_id;
ALTER TABLE omopcdm_synthetic.NOTE DROP CONSTRAINT IF EXISTS fpk_NOTE_visit_detail_id;
ALTER TABLE omopcdm_synthetic.NOTE DROP CONSTRAINT IF EXISTS fpk_NOTE_note_event_field_concept_id;
ALTER TABLE omopcdm_synthetic.NOTE_NLP DROP CONSTRAINT IF EXISTS fpk_NOTE_NLP_section_concept_id;
ALTER TABLE omopcdm_synthetic.NOTE_NLP DROP CONSTRAINT IF EXISTS fpk_NOTE_NLP_note_nlp_concept_id;
ALTER TABLE omopcdm_synthetic.NOTE_NLP DROP CONSTRAINT IF EXISTS fpk_NOTE_NLP_note_nlp_source_concept_id;
ALTER TABLE omopcdm_synthetic.SPECIMEN DROP CONSTRAINT IF EXISTS fpk_SPECIMEN_person_id;
ALTER TABLE omopcdm_synthetic.SPECIMEN DROP CONSTRAINT IF EXISTS fpk_SPECIMEN_specimen_concept_id;
ALTER TABLE omopcdm_synthetic.SPECIMEN DROP CONSTRAINT IF EXISTS fpk_SPECIMEN_specimen_type_concept_id;
ALTER TABLE omopcdm_synthetic.SPECIMEN DROP CONSTRAINT IF EXISTS fpk_SPECIMEN_unit_concept_id;
ALTER TABLE omopcdm_synthetic.SPECIMEN DROP CONSTRAINT IF EXISTS fpk_SPECIMEN_anatomic_site_concept_id;
ALTER TABLE omopcdm_synthetic.SPECIMEN DROP CONSTRAINT IF EXISTS fpk_SPECIMEN_disease_status_concept_id;
ALTER TABLE omopcdm_synthetic.FACT_RELATIONSHIP DROP CONSTRAINT IF EXISTS fpk_FACT_RELATIONSHIP_domain_concept_id_1;
ALTER TABLE omopcdm_synthetic.FACT_RELATIONSHIP DROP CONSTRAINT IF EXISTS fpk_FACT_RELATIONSHIP_domain_concept_id_2;
ALTER TABLE omopcdm_synthetic.FACT_RELATIONSHIP DROP CONSTRAINT IF EXISTS fpk_FACT_RELATIONSHIP_relationship_concept_id;
ALTER TABLE omopcdm_synthetic.LOCATION DROP CONSTRAINT IF EXISTS fpk_LOCATION_country_concept_id;
ALTER TABLE omopcdm_synthetic.CARE_SITE DROP CONSTRAINT IF EXISTS fpk_CARE_SITE_place_of_service_concept_id;
ALTER TABLE omopcdm_synthetic.CARE_SITE DROP CONSTRAINT IF EXISTS fpk_CARE_SITE_location_id;
ALTER TABLE omopcdm_synthetic.PROVIDER DROP CONSTRAINT IF EXISTS fpk_PROVIDER_specialty_concept_id;
ALTER TABLE omopcdm_synthetic.PROVIDER DROP CONSTRAINT IF EXISTS fpk_PROVIDER_care_site_id;
ALTER TABLE omopcdm_synthetic.PROVIDER DROP CONSTRAINT IF EXISTS fpk_PROVIDER_gender_concept_id;
ALTER TABLE omopcdm_synthetic.PROVIDER DROP CONSTRAINT IF EXISTS fpk_PROVIDER_specialty_source_concept_id;
ALTER TABLE omopcdm_synthetic.PROVIDER DROP CONSTRAINT IF EXISTS fpk_PROVIDER_gender_source_concept_id;
ALTER TABLE omopcdm_synthetic.PAYER_PLAN_PERIOD DROP CONSTRAINT IF EXISTS fpk_PAYER_PLAN_PERIOD_person_id;
ALTER TABLE omopcdm_synthetic.PAYER_PLAN_PERIOD DROP CONSTRAINT IF EXISTS fpk_PAYER_PLAN_PERIOD_payer_concept_id;
ALTER TABLE omopcdm_synthetic.PAYER_PLAN_PERIOD DROP CONSTRAINT IF EXISTS fpk_PAYER_PLAN_PERIOD_payer_source_concept_id;
ALTER TABLE omopcdm_synthetic.PAYER_PLAN_PERIOD DROP CONSTRAINT IF EXISTS fpk_PAYER_PLAN_PERIOD_plan_concept_id;
ALTER TABLE omopcdm_synthetic.PAYER_PLAN_PERIOD DROP CONSTRAINT IF EXISTS fpk_PAYER_PLAN_PERIOD_plan_source_concept_id;
ALTER TABLE omopcdm_synthetic.PAYER_PLAN_PERIOD DROP CONSTRAINT IF EXISTS fpk_PAYER_PLAN_PERIOD_sponsor_concept_id;
ALTER TABLE omopcdm_synthetic.PAYER_PLAN_PERIOD DROP CONSTRAINT IF EXISTS fpk_PAYER_PLAN_PERIOD_sponsor_source_concept_id;
ALTER TABLE omopcdm_synthetic.PAYER_PLAN_PERIOD DROP CONSTRAINT IF EXISTS fpk_PAYER_PLAN_PERIOD_stop_reason_concept_id;
ALTER TABLE omopcdm_synthetic.PAYER_PLAN_PERIOD DROP CONSTRAINT IF EXISTS fpk_PAYER_PLAN_PERIOD_stop_reason_source_concept_id;
ALTER TABLE omopcdm_synthetic.PAYER_PLAN_PERIOD DROP CONSTRAINT IF EXISTS fpk_PAYER_PLAN_PERIOD_payer_plan_period_id;
ALTER TABLE omopcdm_synthetic.COST DROP CONSTRAINT IF EXISTS fpk_COST_cost_domain_id;
ALTER TABLE omopcdm_synthetic.COST DROP CONSTRAINT IF EXISTS fpk_COST_cost_type_concept_id;
ALTER TABLE omopcdm_synthetic.COST DROP CONSTRAINT IF EXISTS fpk_COST_currency_concept_id;
ALTER TABLE omopcdm_synthetic.COST DROP CONSTRAINT IF EXISTS fpk_COST_revenue_code_concept_id;
ALTER TABLE omopcdm_synthetic.COST DROP CONSTRAINT IF EXISTS fpk_COST_drg_concept_id;
ALTER TABLE omopcdm_synthetic.DRUG_ERA DROP CONSTRAINT IF EXISTS fpk_DRUG_ERA_person_id;
ALTER TABLE omopcdm_synthetic.DRUG_ERA DROP CONSTRAINT IF EXISTS fpk_DRUG_ERA_drug_concept_id;
ALTER TABLE omopcdm_synthetic.DOSE_ERA DROP CONSTRAINT IF EXISTS fpk_DOSE_ERA_person_id;
ALTER TABLE omopcdm_synthetic.DOSE_ERA DROP CONSTRAINT IF EXISTS fpk_DOSE_ERA_drug_concept_id;
ALTER TABLE omopcdm_synthetic.DOSE_ERA DROP CONSTRAINT IF EXISTS fpk_DOSE_ERA_unit_concept_id;
ALTER TABLE omopcdm_synthetic.CONDITION_ERA DROP CONSTRAINT IF EXISTS fpk_CONDITION_ERA_person_id;
ALTER TABLE omopcdm_synthetic.CONDITION_ERA DROP CONSTRAINT IF EXISTS fpk_CONDITION_ERA_condition_concept_id;
ALTER TABLE omopcdm_synthetic.EPISODE DROP CONSTRAINT IF EXISTS fpk_EPISODE_person_id;
ALTER TABLE omopcdm_synthetic.EPISODE DROP CONSTRAINT IF EXISTS fpk_EPISODE_episode_concept_id;
ALTER TABLE omopcdm_synthetic.EPISODE DROP CONSTRAINT IF EXISTS fpk_EPISODE_episode_object_concept_id;
ALTER TABLE omopcdm_synthetic.EPISODE DROP CONSTRAINT IF EXISTS fpk_EPISODE_episode_type_concept_id;
ALTER TABLE omopcdm_synthetic.EPISODE DROP CONSTRAINT IF EXISTS fpk_EPISODE_episode_source_concept_id;
ALTER TABLE omopcdm_synthetic.EPISODE_EVENT DROP CONSTRAINT IF EXISTS fpk_EPISODE_EVENT_episode_id;
ALTER TABLE omopcdm_synthetic.EPISODE_EVENT DROP CONSTRAINT IF EXISTS fpk_EPISODE_EVENT_episode_event_field_concept_id;
ALTER TABLE omopcdm_synthetic.METADATA DROP CONSTRAINT IF EXISTS fpk_METADATA_metadata_concept_id;
ALTER TABLE omopcdm_synthetic.METADATA DROP CONSTRAINT IF EXISTS fpk_METADATA_metadata_type_concept_id;
ALTER TABLE omopcdm_synthetic.METADATA DROP CONSTRAINT IF EXISTS fpk_METADATA_value_as_concept_id;
ALTER TABLE omopcdm_synthetic.CDM_SOURCE DROP CONSTRAINT IF EXISTS fpk_CDM_SOURCE_cdm_version_concept_id;
ALTER TABLE omopcdm_synthetic.SOURCE_TO_CONCEPT_MAP DROP CONSTRAINT IF EXISTS fpk_SOURCE_TO_CONCEPT_MAP_source_concept_id;
ALTER TABLE omopcdm_synthetic.SOURCE_TO_CONCEPT_MAP DROP CONSTRAINT IF EXISTS fpk_SOURCE_TO_CONCEPT_MAP_target_concept_id;
ALTER TABLE omopcdm_synthetic.SOURCE_TO_CONCEPT_MAP DROP CONSTRAINT IF EXISTS fpk_SOURCE_TO_CONCEPT_MAP_target_vocabulary_id;

TRUNCATE omopcdm_synthetic.CDM_SOURCE;
TRUNCATE omopcdm_synthetic.CONDITION_ERA RESTART IDENTITY;
TRUNCATE omopcdm_synthetic.CONDITION_OCCURRENCE RESTART IDENTITY;
TRUNCATE omopcdm_synthetic.DEATH;
TRUNCATE omopcdm_synthetic.DEVICE_EXPOSURE RESTART IDENTITY;
TRUNCATE omopcdm_synthetic.DOSE_ERA RESTART IDENTITY;
TRUNCATE omopcdm_synthetic.DRUG_ERA RESTART IDENTITY;
TRUNCATE omopcdm_synthetic.DRUG_EXPOSURE RESTART IDENTITY;
TRUNCATE omopcdm_synthetic.EPISODE RESTART IDENTITY;
TRUNCATE omopcdm_synthetic.EPISODE_EVENT;
TRUNCATE omopcdm_synthetic.FACT_RELATIONSHIP;
TRUNCATE omopcdm_synthetic.MEASUREMENT RESTART IDENTITY;
TRUNCATE omopcdm_synthetic.OBSERVATION RESTART IDENTITY;
TRUNCATE omopcdm_synthetic.OBSERVATION_PERIOD RESTART IDENTITY;
TRUNCATE omopcdm_synthetic.PERSON RESTART IDENTITY;
TRUNCATE omopcdm_synthetic.PROCEDURE_OCCURRENCE RESTART IDENTITY;
TRUNCATE omopcdm_synthetic.SPECIMEN RESTART IDENTITY;
TRUNCATE omopcdm_synthetic.SOURCE_TO_CONCEPT_MAP;