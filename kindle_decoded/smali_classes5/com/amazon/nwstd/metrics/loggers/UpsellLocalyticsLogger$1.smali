.class synthetic Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$1;
.super Ljava/lang/Object;
.source "UpsellLocalyticsLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$nwstd$metrics$IMetricsHelper$EMetricsReadingMode:[I

.field static final synthetic $SwitchMap$com$amazon$nwstd$metrics$IMetricsHelper$EMetricsScreens:[I

.field static final synthetic $SwitchMap$com$amazon$nwstd$metrics$IMetricsHelper$EMetricsUpsellClickOrigin:[I

.field static final synthetic $SwitchMap$com$amazon$nwstd$metrics$MetricsAttributes:[I

.field static final synthetic $SwitchMap$com$amazon$nwstd$metrics$MetricsTags:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 774
    invoke-static {}, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;->values()[Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$IMetricsHelper$EMetricsScreens:[I

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
    sget-object v2, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$IMetricsHelper$EMetricsScreens:[I

    sget-object v3, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;->UPSELL_SHOP_PAGE:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$IMetricsHelper$EMetricsScreens:[I

    sget-object v4, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;->UPSELL_FULL_PAGE:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 709
    :catch_2
    invoke-static {}, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsReadingMode;->values()[Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsReadingMode;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$IMetricsHelper$EMetricsReadingMode:[I

    :try_start_3
    sget-object v4, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsReadingMode;->YJ:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsReadingMode;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v3, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$IMetricsHelper$EMetricsReadingMode:[I

    sget-object v4, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsReadingMode;->REPLICA:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsReadingMode;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v3, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$IMetricsHelper$EMetricsReadingMode:[I

    sget-object v4, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsReadingMode;->TEXTVIEW:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsReadingMode;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    .line 683
    :catch_5
    invoke-static {}, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsUpsellClickOrigin;->values()[Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsUpsellClickOrigin;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$IMetricsHelper$EMetricsUpsellClickOrigin:[I

    :try_start_6
    sget-object v4, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsUpsellClickOrigin;->UPSELL_FULL_PAGE:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsUpsellClickOrigin;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v3, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$IMetricsHelper$EMetricsUpsellClickOrigin:[I

    sget-object v4, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsUpsellClickOrigin;->UPSELL_BANNER:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsUpsellClickOrigin;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    .line 613
    :catch_7
    invoke-static {}, Lcom/amazon/nwstd/metrics/MetricsAttributes;->values()[Lcom/amazon/nwstd/metrics/MetricsAttributes;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$MetricsAttributes:[I

    :try_start_8
    sget-object v4, Lcom/amazon/nwstd/metrics/MetricsAttributes;->ARTICLE_ID:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v3, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$MetricsAttributes:[I

    sget-object v4, Lcom/amazon/nwstd/metrics/MetricsAttributes;->PERCENT:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v3, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$MetricsAttributes:[I

    sget-object v4, Lcom/amazon/nwstd/metrics/MetricsAttributes;->TIME:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v3, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$MetricsAttributes:[I

    sget-object v4, Lcom/amazon/nwstd/metrics/MetricsAttributes;->ORIENTATION:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v3, v4
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v3, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$MetricsAttributes:[I

    sget-object v4, Lcom/amazon/nwstd/metrics/MetricsAttributes;->ORIENTATION_CHANGES:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x5

    aput v5, v3, v4
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v3, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$MetricsAttributes:[I

    sget-object v4, Lcom/amazon/nwstd/metrics/MetricsAttributes;->UPSELL_BUTTON_CLICKED:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x6

    aput v5, v3, v4
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v3, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$MetricsAttributes:[I

    sget-object v4, Lcom/amazon/nwstd/metrics/MetricsAttributes;->UPSELL_CLICK_ORIGIN:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x7

    aput v5, v3, v4
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v3, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$MetricsAttributes:[I

    sget-object v4, Lcom/amazon/nwstd/metrics/MetricsAttributes;->READING_MODE:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/16 v5, 0x8

    aput v5, v3, v4
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    .line 560
    :catch_f
    invoke-static {}, Lcom/amazon/nwstd/metrics/MetricsTags;->values()[Lcom/amazon/nwstd/metrics/MetricsTags;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$MetricsTags:[I

    :try_start_10
    sget-object v4, Lcom/amazon/nwstd/metrics/MetricsTags;->UPSELL_FULL_PAGE_VIEWED:Lcom/amazon/nwstd/metrics/MetricsTags;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$MetricsTags:[I

    sget-object v3, Lcom/amazon/nwstd/metrics/MetricsTags;->UPSELL_LINK_CLICKED:Lcom/amazon/nwstd/metrics/MetricsTags;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$MetricsTags:[I

    sget-object v1, Lcom/amazon/nwstd/metrics/MetricsTags;->UPSELL_BANNER_VIEWED:Lcom/amazon/nwstd/metrics/MetricsTags;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    return-void
.end method
