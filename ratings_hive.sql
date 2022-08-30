use dataweblast;
SELECT  distinct  ref_secteurs.secteur FROM bridge_studylevel_data
INNER JOIN ref_niveauetude ON ref_niveauetude.id = bridge_studylevel_data.study_level
INNER JOIN bridge_sectors_data ON bridge_sectors_data.id = bridge_studylevel_data.id
INNER JOIN ref_secteurs ON ref_secteurs.idSecteur = bridge_sectors_data.sector
INNER JOIN bridge_exp_data ON bridge_studylevel_data.id = bridge_exp_data.id
INNER JOIN ref_experience ON ref_experience.id = bridge_exp_data.exp_text
and bridge_exp_data.exp_text = 3
and bridge_studylevel_data.study_level= 11
