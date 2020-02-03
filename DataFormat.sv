// EVT_HDR_W1 word description
parameter EVT_HDR_W1_FLAG_bits           = 8;
parameter EVT_HDR_W1_FLAG_firstbit       = 63;
parameter EVT_HDR_W1_FLAG_lastbit        = 56;
parameter EVT_HDR_W1_FLAG_FLAG           = 171;

parameter EVT_HDR_W1_TRK_TYPE_bits       = 8;
parameter EVT_HDR_W1_TRK_TYPE_firstbit   = 55;
parameter EVT_HDR_W1_TRK_TYPE_lastbit    = 48;
parameter EVT_HDR_W1_TRK_TYPE_RHTT       = 1;
parameter EVT_HDR_W1_TRK_TYPE_GHTT       = 2;

parameter EVT_HDR_W1_SPARE_bits          = 8;
parameter EVT_HDR_W1_SPARE_firstbit      = 47;
parameter EVT_HDR_W1_SPARE_lastbit       = 40;

parameter EVT_HDR_W1_L0ID_bits           = 40;
parameter EVT_HDR_W1_L0ID_firstbit       = 39;
parameter EVT_HDR_W1_L0ID_lastbit        = 0;

// EVT_HDR_W2 word description
parameter EVT_HDR_W2_BCID_bits           = 12;
parameter EVT_HDR_W2_BCID_firstbit       = 63;
parameter EVT_HDR_W2_BCID_lastbit        = 52;

parameter EVT_HDR_W2_SPARE_bits          = 20;
parameter EVT_HDR_W2_SPARE_firstbit      = 51;
parameter EVT_HDR_W2_SPARE_lastbit       = 32;

parameter EVT_HDR_W2_RUNNUMBER_bits      = 32;
parameter EVT_HDR_W2_RUNNUMBER_firstbit  = 31;
parameter EVT_HDR_W2_RUNNUMBER_lastbit   = 0;

// EVT_HDR_W3 word description
parameter EVT_HDR_W3_ROI_bits            = 64;
parameter EVT_HDR_W3_ROI_firstbit        = 63;
parameter EVT_HDR_W3_ROI_lastbit         = 0;

// EVT_HDR_W4 word description
parameter EVT_HDR_W4_EFPU_ID_bits        = 20;
parameter EVT_HDR_W4_EFPU_ID_firstbit    = 63;
parameter EVT_HDR_W4_EFPU_ID_lastbit     = 44;

parameter EVT_HDR_W4_EFPU_PID_bits       = 12;
parameter EVT_HDR_W4_EFPU_PID_firstbit   = 43;
parameter EVT_HDR_W4_EFPU_PID_lastbit    = 32;

parameter EVT_HDR_W4_TIME_bits           = 32;
parameter EVT_HDR_W4_TIME_firstbit       = 31;
parameter EVT_HDR_W4_TIME_lastbit        = 0;

// EVT_HDR_W5 word description
parameter EVT_HDR_W5_Connection_ID_bits  = 32;
parameter EVT_HDR_W5_Connection_ID_firstbit = 63;
parameter EVT_HDR_W5_Connection_ID_lastbit = 32;

parameter EVT_HDR_W5_Transaction_ID_bits = 32;
parameter EVT_HDR_W5_Transaction_ID_firstbit = 31;
parameter EVT_HDR_W5_Transaction_ID_lastbit = 0;

// EVT_HDR_W6 word description
parameter EVT_HDR_W6_STATUS_bits         = 32;
parameter EVT_HDR_W6_STATUS_firstbit     = 63;
parameter EVT_HDR_W6_STATUS_lastbit      = 32;

parameter EVT_HDR_W6_CRC_bits            = 32;
parameter EVT_HDR_W6_CRC_firstbit        = 31;
parameter EVT_HDR_W6_CRC_lastbit         = 0;

// EVT_FTR_W1 word description
parameter EVT_FTR_W1_FLAG_bits           = 8;
parameter EVT_FTR_W1_FLAG_firstbit       = 63;
parameter EVT_FTR_W1_FLAG_lastbit        = 56;

parameter EVT_FTR_W1_SPARE_bits          = 8;
parameter EVT_FTR_W1_SPARE_firstbit      = 55;
parameter EVT_FTR_W1_SPARE_lastbit       = 48;

parameter EVT_FTR_W1_META_COUNT_bits     = 16;
parameter EVT_FTR_W1_META_COUNT_firstbit = 47;
parameter EVT_FTR_W1_META_COUNT_lastbit  = 32;

parameter EVT_FTR_W1_HDR_CRC_bits        = 32;
parameter EVT_FTR_W1_HDR_CRC_firstbit    = 31;
parameter EVT_FTR_W1_HDR_CRC_lastbit     = 0;

// EVT_FTR_W2 word description
parameter EVT_FTR_W2_ERROR_FLAGS_bits    = 64;
parameter EVT_FTR_W2_ERROR_FLAGS_firstbit = 63;
parameter EVT_FTR_W2_ERROR_FLAGS_lastbit = 0;

// EVT_FTR_W3 word description
parameter EVT_FTR_W3_WORD_COUNT_bits     = 32;
parameter EVT_FTR_W3_WORD_COUNT_firstbit = 63;
parameter EVT_FTR_W3_WORD_COUNT_lastbit  = 32;

parameter EVT_FTR_W3_CRC_bits            = 32;
parameter EVT_FTR_W3_CRC_firstbit        = 31;
parameter EVT_FTR_W3_CRC_lastbit         = 0;

// M_HDR word description
parameter M_HDR_FLAG_bits                = 8;
parameter M_HDR_FLAG_firstbit            = 63;
parameter M_HDR_FLAG_lastbit             = 56;
parameter M_HDR_FLAG_FLAG                = 85;

parameter M_HDR_TYPE_bits                = 2;
parameter M_HDR_TYPE_firstbit            = 55;
parameter M_HDR_TYPE_lastbit             = 54;
parameter M_HDR_TYPE_RAW                 = 0;
parameter M_HDR_TYPE_CLUSTERED           = 1;
parameter M_HDR_TYPE_CLUSTEREDwRAW       = 2;
parameter M_HDR_TYPE_UNUSED              = 3;

parameter M_HDR_DET_bits                 = 1;
parameter M_HDR_DET_firstbit             = 53;
parameter M_HDR_DET_lastbit              = 53;
parameter M_HDR_DET_PIXEL                = 0;
parameter M_HDR_DET_STRIP                = 1;

parameter M_HDR_ROUTING_bits             = 52;
parameter M_HDR_ROUTING_firstbit         = 52;
parameter M_HDR_ROUTING_lastbit          = 1;
parameter M_HDR_ROUTING_NPRM             = 12;
parameter M_HDR_ROUTING_NAMBUS           = 4;
parameter M_HDR_ROUTING_NTFM_per_SSTP    = 2;
parameter M_HDR_ROUTING_TFM_lastbit      = 48;

// M_HDR2 word description
parameter M_HDR2_MODID_bits              = 18;
parameter M_HDR2_MODID_firstbit          = 31;
parameter M_HDR2_MODID_lastbit           = 14;

parameter M_HDR2_MODTYPE_bits            = 2;
parameter M_HDR2_MODTYPE_firstbit        = 13;
parameter M_HDR2_MODTYPE_lastbit         = 12;

parameter M_HDR2_ORIENTATION_bits        = 1;
parameter M_HDR2_ORIENTATION_firstbit    = 11;
parameter M_HDR2_ORIENTATION_lastbit     = 11;

parameter M_HDR2_SPARE_bits              = 11;
parameter M_HDR2_SPARE_firstbit          = 10;
parameter M_HDR2_SPARE_lastbit           = 0;

// HCC_HDR word description
parameter HCC_HDR_TYP_bits               = 4;
parameter HCC_HDR_TYP_firstbit           = 15;
parameter HCC_HDR_TYP_lastbit            = 12;
parameter HCC_HDR_TYP_PR                 = 1;
parameter HCC_HDR_TYP_LP                 = 2;

parameter HCC_HDR_FLAG_bits              = 1;
parameter HCC_HDR_FLAG_firstbit          = 11;
parameter HCC_HDR_FLAG_lastbit           = 11;

parameter HCC_HDR_L0ID_bits              = 7;
parameter HCC_HDR_L0ID_firstbit          = 10;
parameter HCC_HDR_L0ID_lastbit           = 4;

parameter HCC_HDR_BCID_bits              = 4;
parameter HCC_HDR_BCID_firstbit          = 3;
parameter HCC_HDR_BCID_lastbit           = 0;

// HCC_CLUSTER word description
parameter HCC_CLUSTER_UNUSED_bits        = 1;
parameter HCC_CLUSTER_UNUSED_firstbit    = 15;
parameter HCC_CLUSTER_UNUSED_lastbit     = 15;

parameter HCC_CLUSTER_ABC_bits           = 4;
parameter HCC_CLUSTER_ABC_firstbit       = 14;
parameter HCC_CLUSTER_ABC_lastbit        = 11;

parameter HCC_CLUSTER_COL_bits           = 8;
parameter HCC_CLUSTER_COL_firstbit       = 10;
parameter HCC_CLUSTER_COL_lastbit        = 3;

parameter HCC_CLUSTER_NEXT_bits          = 3;
parameter HCC_CLUSTER_NEXT_firstbit      = 2;
parameter HCC_CLUSTER_NEXT_lastbit       = 0;

parameter HCC_LAST_CLUSTER = 16'h6fed;

// PIXEL_CLUSTER word description
parameter PIXEL_CLUSTER_ETA_bits         = 13;
parameter PIXEL_CLUSTER_ETA_firstbit     = 31;
parameter PIXEL_CLUSTER_ETA_lastbit      = 19;

parameter PIXEL_CLUSTER_PHI_bits         = 13;
parameter PIXEL_CLUSTER_PHI_firstbit     = 18;
parameter PIXEL_CLUSTER_PHI_lastbit      = 6;

parameter PIXEL_CLUSTER_ETASIZ_bits      = 3;
parameter PIXEL_CLUSTER_ETASIZ_firstbit  = 5;
parameter PIXEL_CLUSTER_ETASIZ_lastbit   = 3;

parameter PIXEL_CLUSTER_PHISIZ_bits      = 2;
parameter PIXEL_CLUSTER_PHISIZ_firstbit  = 2;
parameter PIXEL_CLUSTER_PHISIZ_lastbit   = 1;

parameter PIXEL_CLUSTER_LAST_bits        = 1;
parameter PIXEL_CLUSTER_LAST_firstbit    = 0;
parameter PIXEL_CLUSTER_LAST_lastbit     = 0;

// PIXEL_CL_FTR word description
parameter PIXEL_CL_FTR_FLAG_bits         = 8;
parameter PIXEL_CL_FTR_FLAG_firstbit     = 31;
parameter PIXEL_CL_FTR_FLAG_lastbit      = 24;
parameter PIXEL_CL_FTR_FLAG_FLAG         = 119;

parameter PIXEL_CL_FTR_COUNT_bits        = 8;
parameter PIXEL_CL_FTR_COUNT_firstbit    = 23;
parameter PIXEL_CL_FTR_COUNT_lastbit     = 16;

parameter PIXEL_CL_FTR_ERROR_bits        = 2;
parameter PIXEL_CL_FTR_ERROR_firstbit    = 15;
parameter PIXEL_CL_FTR_ERROR_lastbit     = 14;
parameter PIXEL_CL_FTR_ERROR_NO_ERROR    = 0;
parameter PIXEL_CL_FTR_ERROR_FRONT_END_ERROR = 1;
parameter PIXEL_CL_FTR_ERROR_PARSE_ERROR = 2;
parameter PIXEL_CL_FTR_ERROR_UNUSED      = 3;

parameter PIXEL_CL_FTR_SPARE_bits        = 14;
parameter PIXEL_CL_FTR_SPARE_firstbit    = 13;
parameter PIXEL_CL_FTR_SPARE_lastbit     = 0;

// STRIP_CLUSTER word description
parameter STRIP_CLUSTER_ROW_bits         = 1;
parameter STRIP_CLUSTER_ROW_firstbit     = 15;
parameter STRIP_CLUSTER_ROW_lastbit      = 15;

parameter STRIP_CLUSTER_IDX_bits         = 11;
parameter STRIP_CLUSTER_IDX_firstbit     = 14;
parameter STRIP_CLUSTER_IDX_lastbit      = 4;

parameter STRIP_CLUSTER_LEN_bits         = 3;
parameter STRIP_CLUSTER_LEN_firstbit     = 3;
parameter STRIP_CLUSTER_LEN_lastbit      = 1;

parameter STRIP_CLUSTER_LAST_bits        = 1;
parameter STRIP_CLUSTER_LAST_firstbit    = 0;
parameter STRIP_CLUSTER_LAST_lastbit     = 0;

// STRIP_CL_FTR word description
parameter STRIP_CL_FTR_FLAG_bits         = 8;
parameter STRIP_CL_FTR_FLAG_firstbit     = 15;
parameter STRIP_CL_FTR_FLAG_lastbit      = 8;
parameter STRIP_CL_FTR_FLAG_FLAG         = 119;

parameter STRIP_CL_FTR_COUNT_bits        = 6;
parameter STRIP_CL_FTR_COUNT_firstbit    = 7;
parameter STRIP_CL_FTR_COUNT_lastbit     = 2;

parameter STRIP_CL_FTR_ERROR_bits        = 2;
parameter STRIP_CL_FTR_ERROR_firstbit    = 1;
parameter STRIP_CL_FTR_ERROR_lastbit     = 0;
parameter STRIP_CL_FTR_ERROR_NO_ERROR    = 0;
parameter STRIP_CL_FTR_ERROR_FRONT_END_ERROR = 1;
parameter STRIP_CL_FTR_ERROR_PARSE_ERROR = 2;
parameter STRIP_CL_FTR_ERROR_UNUSED      = 3;

