message_code <- '(0.7.7154194_console:2_COMING | 0.7.7160081_COMING | 0.7.7154107_COMING) & !0.7.7154194_console:2_GOING_afterwithin:5'

messageCodes <- sapply(stringr::str_replace_all(message_code, " ",""),function(singleFilter) stringr::str_extract_all(singleFilter,
                                                                                                                                              c(paste0("(?<!!)(?<!(\\d|\\.))", "[0-9]{8}", "(?!(\\d|\\.))"),
                                                                                                                                                paste0("(?<!!)(?<!(\\d|\\.))", "\\d+\\.\\d+\\.\\d+\\.\\d+\\.\\d+\\.\\d+", "(?!(\\d|\\.))"),
                                                                                                                                                paste0("(?<!!)(?<!(\\d|\\.))", "\\d+\\.\\d+\\.\\d+\\.\\d+\\.\\d+", "(?!(\\d|\\.))"),
                                                                                                                                                paste0("(?<!!)(?<!(\\d|\\.))", "\\d+\\.\\d+\\.\\d+\\.\\d+", "(?!(\\d|\\.))"),
                                                                                                                                                paste0("(?<!!)(?<!(\\d|\\.))", "\\d+\\.\\d+\\.\\d+", "(?!(\\d|\\.))"))),simplify = F,USE.NAMES = F) %>% unlist() %>% unique() %>% suppressWarnings()
