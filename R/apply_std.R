apply_std <- function(x) {

    modify_at(x, .at = vars(
        #cd4_first_stage3_dt,
        cd4_first_hiv_dt, cd4_low_cnt_dt, cd4_low_pct_dt, cd4_recent_cnt_dt,
        cd4_recent_cnt_pct_dt, cd4_recent_pct_dt, cd4_vl_first_hiv_dt,
        vl_first_det_dt, vl_last_non_det_dt, vl_recent_dt, test_recent_dt,
        antigen_first_pos_dt, dob, enter_dt, hiv_dx_dt, hiv_rep_dt, hiv_aids_dx_dt,
        hiv_aids_rep_dt, aids_dx_dt, aids_rep_dt, dod),
        string_to_date)

}
