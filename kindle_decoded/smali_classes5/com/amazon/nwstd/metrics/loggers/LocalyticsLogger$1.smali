.class synthetic Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$1;
.super Ljava/lang/Object;
.source "LocalyticsLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$nwstd$metrics$IMetricsHelper$EMetricsScreens:[I

.field static final synthetic $SwitchMap$com$amazon$nwstd$metrics$IMetricsHelper$EMetricsStopZoomSessionOrigin:[I

.field static final synthetic $SwitchMap$com$amazon$nwstd$metrics$MetricsAttributes:[I

.field static final synthetic $SwitchMap$com$amazon$nwstd$metrics$MetricsTags:[I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 704
    invoke-static {}, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;->values()[Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$IMetricsHelper$EMetricsScreens:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;->MAGAZINE_VIEWER:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$IMetricsHelper$EMetricsScreens:[I

    sget-object v3, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;->TOC:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$IMetricsHelper$EMetricsScreens:[I

    sget-object v4, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;->BROWSE:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$IMetricsHelper$EMetricsScreens:[I

    sget-object v5, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;->BOOKMARK_POPUP:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 684
    :catch_3
    invoke-static {}, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsStopZoomSessionOrigin;->values()[Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsStopZoomSessionOrigin;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$IMetricsHelper$EMetricsStopZoomSessionOrigin:[I

    :try_start_4
    sget-object v5, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsStopZoomSessionOrigin;->PINCH_OUT:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsStopZoomSessionOrigin;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v4, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$IMetricsHelper$EMetricsStopZoomSessionOrigin:[I

    sget-object v5, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsStopZoomSessionOrigin;->RESET_BUTTON:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsStopZoomSessionOrigin;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v4, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$IMetricsHelper$EMetricsStopZoomSessionOrigin:[I

    sget-object v5, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsStopZoomSessionOrigin;->MOVE_TO_OTHER_ARTICLE:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsStopZoomSessionOrigin;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    .line 561
    :catch_6
    invoke-static {}, Lcom/amazon/nwstd/metrics/MetricsAttributes;->values()[Lcom/amazon/nwstd/metrics/MetricsAttributes;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$MetricsAttributes:[I

    :try_start_7
    sget-object v5, Lcom/amazon/nwstd/metrics/MetricsAttributes;->ARTICLE_ID:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v4, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$MetricsAttributes:[I

    sget-object v5, Lcom/amazon/nwstd/metrics/MetricsAttributes;->ARTICLE_NAME:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v4, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$MetricsAttributes:[I

    sget-object v5, Lcom/amazon/nwstd/metrics/MetricsAttributes;->PERCENT:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v4, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$MetricsAttributes:[I

    sget-object v5, Lcom/amazon/nwstd/metrics/MetricsAttributes;->PAGEID:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    const/4 v4, 0x5

    :try_start_b
    sget-object v5, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$MetricsAttributes:[I

    sget-object v6, Lcom/amazon/nwstd/metrics/MetricsAttributes;->ARTICLE_TYPE:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    const/4 v5, 0x6

    :try_start_c
    sget-object v6, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$MetricsAttributes:[I

    sget-object v7, Lcom/amazon/nwstd/metrics/MetricsAttributes;->TIME:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    const/4 v6, 0x7

    :try_start_d
    sget-object v7, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$MetricsAttributes:[I

    sget-object v8, Lcom/amazon/nwstd/metrics/MetricsAttributes;->ORIENTATION:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    const/16 v7, 0x8

    :try_start_e
    sget-object v8, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$MetricsAttributes:[I

    sget-object v9, Lcom/amazon/nwstd/metrics/MetricsAttributes;->ORIENTATION_CHANGES:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    const/16 v8, 0x9

    :try_start_f
    sget-object v9, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$MetricsAttributes:[I

    sget-object v10, Lcom/amazon/nwstd/metrics/MetricsAttributes;->PUBLICATION_DATE:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v8, v9, v10
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    const/16 v9, 0xa

    :try_start_10
    sget-object v10, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$MetricsAttributes:[I

    sget-object v11, Lcom/amazon/nwstd/metrics/MetricsAttributes;->ARTICLES_READ:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aput v9, v10, v11
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    const/16 v10, 0xb

    :try_start_11
    sget-object v11, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$MetricsAttributes:[I

    sget-object v12, Lcom/amazon/nwstd/metrics/MetricsAttributes;->AGE:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v10, v11, v12
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    const/16 v11, 0xc

    :try_start_12
    sget-object v12, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$MetricsAttributes:[I

    sget-object v13, Lcom/amazon/nwstd/metrics/MetricsAttributes;->ADS_VIEWED:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aput v11, v12, v13
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    const/16 v12, 0xd

    :try_start_13
    sget-object v13, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$MetricsAttributes:[I

    sget-object v14, Lcom/amazon/nwstd/metrics/MetricsAttributes;->TARGET_URL:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aput v12, v13, v14
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v13, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$MetricsAttributes:[I

    sget-object v14, Lcom/amazon/nwstd/metrics/MetricsAttributes;->MEDIA_PERCENTAGE_VIEWED:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    const/16 v15, 0xe

    aput v15, v13, v14
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v13, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$MetricsAttributes:[I

    sget-object v14, Lcom/amazon/nwstd/metrics/MetricsAttributes;->INTERACTIVITY_ENGAGED:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    const/16 v15, 0xf

    aput v15, v13, v14
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v13, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$MetricsAttributes:[I

    sget-object v14, Lcom/amazon/nwstd/metrics/MetricsAttributes;->OVERLAYID:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    const/16 v15, 0x10

    aput v15, v13, v14
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v13, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$MetricsAttributes:[I

    sget-object v14, Lcom/amazon/nwstd/metrics/MetricsAttributes;->CLOSE_ZOOM_SESSION_ORIGIN:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    const/16 v15, 0x11

    aput v15, v13, v14
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    .line 365
    :catch_17
    invoke-static {}, Lcom/amazon/nwstd/metrics/MetricsTags;->values()[Lcom/amazon/nwstd/metrics/MetricsTags;

    move-result-object v13

    array-length v13, v13

    new-array v13, v13, [I

    sput-object v13, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$MetricsTags:[I

    :try_start_18
    sget-object v14, Lcom/amazon/nwstd/metrics/MetricsTags;->ISSUE_OPENED:Lcom/amazon/nwstd/metrics/MetricsTags;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aput v1, v13, v14
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$MetricsTags:[I

    sget-object v13, Lcom/amazon/nwstd/metrics/MetricsTags;->ARTICLE_VIEWED:Lcom/amazon/nwstd/metrics/MetricsTags;

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aput v0, v1, v13
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$MetricsTags:[I

    sget-object v1, Lcom/amazon/nwstd/metrics/MetricsTags;->AD_VIEWED:Lcom/amazon/nwstd/metrics/MetricsTags;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$MetricsTags:[I

    sget-object v1, Lcom/amazon/nwstd/metrics/MetricsTags;->PAGE_VIEWED:Lcom/amazon/nwstd/metrics/MetricsTags;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    :try_start_1c
    sget-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$MetricsTags:[I

    sget-object v1, Lcom/amazon/nwstd/metrics/MetricsTags;->ARTICLE_BOOKMARK_ADDED:Lcom/amazon/nwstd/metrics/MetricsTags;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    :try_start_1d
    sget-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$MetricsTags:[I

    sget-object v1, Lcom/amazon/nwstd/metrics/MetricsTags;->ARTICLE_BOOKMARK_REMOVED:Lcom/amazon/nwstd/metrics/MetricsTags;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1e
    sget-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$MetricsTags:[I

    sget-object v1, Lcom/amazon/nwstd/metrics/MetricsTags;->ISSUE_VIEWED:Lcom/amazon/nwstd/metrics/MetricsTags;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    :try_start_1f
    sget-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$MetricsTags:[I

    sget-object v1, Lcom/amazon/nwstd/metrics/MetricsTags;->INTERACTIVITY_AUDIO_READ:Lcom/amazon/nwstd/metrics/MetricsTags;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v7, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_20
    sget-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$MetricsTags:[I

    sget-object v1, Lcom/amazon/nwstd/metrics/MetricsTags;->INTERACTIVITY_VIDEO_READ:Lcom/amazon/nwstd/metrics/MetricsTags;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v8, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    :catch_20
    :try_start_21
    sget-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$MetricsTags:[I

    sget-object v1, Lcom/amazon/nwstd/metrics/MetricsTags;->INTERACTIVITY_SLIDESHOW_READ:Lcom/amazon/nwstd/metrics/MetricsTags;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v9, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    :catch_21
    :try_start_22
    sget-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$MetricsTags:[I

    sget-object v1, Lcom/amazon/nwstd/metrics/MetricsTags;->INTERACTIVITY_HOT_SPOT_CLICK:Lcom/amazon/nwstd/metrics/MetricsTags;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v10, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    :catch_22
    :try_start_23
    sget-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$MetricsTags:[I

    sget-object v1, Lcom/amazon/nwstd/metrics/MetricsTags;->INTERACTIVITY_TEXT_LINK_CLICK:Lcom/amazon/nwstd/metrics/MetricsTags;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v11, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    :catch_23
    :try_start_24
    sget-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$MetricsTags:[I

    sget-object v1, Lcom/amazon/nwstd/metrics/MetricsTags;->ZOOM_SESSION_STOPPED:Lcom/amazon/nwstd/metrics/MetricsTags;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v12, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_24

    :catch_24
    return-void
.end method
