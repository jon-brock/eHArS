#' Convert eHARS dates (as character variables) into formatted dates (as character variables)
#'
#' @param x A tibble with data imports from an eHARS .sasb7dat file
#' @return All date variables in the dataset from (yyyymmdd) to (mm/dd/yyyy) accounting for missing values ('..' or '....')
#'
#' @export
string_to_date <- function(x) {

        embed_01 <- function(x) {

                std_year <- if_else(str_sub(x, start = 1, end = 4) == "", "....", str_sub(x, start = 1, end = 4))
                std_month <- if_else(str_sub(x, start = 5, end = 6) == "", "..", str_sub(x, start = 5, end = 6))
                std_day <- if_else(str_sub(x, start = 7, end = 8) == "", "..", str_sub(x, start = 7, end = 8))

                std_date <- paste0(std_month, '/', std_day, '/', std_year)
    }

    modify_at(x, .at = vars(
        #cd4_first_stage3_dt,
        cd4_first_hiv_dt, cd4_low_cnt_dt, cd4_low_pct_dt, cd4_recent_cnt_dt,
        cd4_recent_cnt_pct_dt, cd4_recent_pct_dt, cd4_vl_first_hiv_dt, vl_first_det_dt, vl_last_non_det_dt,
        vl_recent_dt, test_recent_dt, antigen_first_pos_dt, dob, enter_dt, hiv_dx_dt, hiv_rep_dt, hiv_aids_dx_dt,
        hiv_aids_rep_dt, aids_dx_dt, aids_rep_dt, dod), .f = embed_01)

}
