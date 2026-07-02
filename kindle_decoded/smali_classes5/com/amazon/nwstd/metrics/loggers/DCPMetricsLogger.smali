.class public Lcom/amazon/nwstd/metrics/loggers/DCPMetricsLogger;
.super Ljava/lang/Object;
.source "DCPMetricsLogger.java"

# interfaces
.implements Lcom/amazon/nwstd/metrics/IMetricsLogger;


# static fields
.field private static final DELAY_PAGE_READ:I = 0xfa

.field private static final TAG:Ljava/lang/String; = "LocalyticsLogger"


# instance fields
.field private mLocalBookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/model/content/ILocalBookItem;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/amazon/nwstd/metrics/loggers/DCPMetricsLogger;->mLocalBookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    return-void
.end method


# virtual methods
.method public onCloseSession()V
    .locals 0

    return-void
.end method

.method public onPauseSession()V
    .locals 0

    return-void
.end method

.method public onResumeSession()V
    .locals 0

    return-void
.end method

.method public onStartSession()V
    .locals 0

    return-void
.end method

.method public reportEvent(Lcom/amazon/nwstd/metrics/MetricsTags;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0, p1, v0}, Lcom/amazon/nwstd/metrics/loggers/DCPMetricsLogger;->reportEvent(Lcom/amazon/nwstd/metrics/MetricsTags;Ljava/util/Map;)V

    return-void
.end method

.method public reportEvent(Lcom/amazon/nwstd/metrics/MetricsTags;Ljava/util/Map;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/nwstd/metrics/MetricsTags;",
            "Ljava/util/Map<",
            "Lcom/amazon/nwstd/metrics/MetricsAttributes;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 67
    iget-object v2, v1, Lcom/amazon/nwstd/metrics/loggers/DCPMetricsLogger;->mLocalBookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getOriginType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/nwstd/resources/PeriodicalsOriginType;->value(Ljava/lang/String;)Lcom/amazon/nwstd/resources/PeriodicalsOriginType;

    move-result-object v2

    const/16 v3, 0x8

    const-string v4, "LocalyticsLogger"

    if-eqz v2, :cond_0

    .line 70
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 72
    :cond_0
    sget-object v2, Lcom/amazon/nwstd/resources/PeriodicalsOriginType;->UNDEFINED_PERIODICALTYPE:Lcom/amazon/nwstd/resources/PeriodicalsOriginType;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    .line 73
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PeriodicalOriginType is misssing in the PeriodicalOriginType List "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/amazon/nwstd/metrics/loggers/DCPMetricsLogger;->mLocalBookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v6}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getOriginType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 75
    :goto_0
    sget-object v5, Lcom/amazon/nwstd/metrics/loggers/DCPMetricsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$MetricsTags:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/16 v6, 0x10

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const-string v10, "NewsstandYJZoom"

    const-string v11, "NewsstandUpsellFullPage"

    const-string v12, " expects attribute "

    const-string v13, "DCP metric "

    const-string v14, "NewsstandUpsellBanner"

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    if-eqz v0, :cond_1

    .line 203
    sget-object v2, Lcom/amazon/nwstd/metrics/MetricsAttributes;->SIZE_PERCENTAGE:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 205
    :try_start_0
    sget-object v2, Lcom/amazon/nwstd/metrics/MetricsAttributes;->SIZE_PERCENTAGE:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 206
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v7

    const-string v8, "NewsstandYJWebcontentOverlayTimer"

    const-string v9, "YJWebcontentOverlaySizePercentage"

    sget-object v10, Lcom/amazon/kindle/services/metrics/MetricType;->INFO:Lcom/amazon/kindle/services/metrics/MetricType;

    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    mul-double v2, v2, v11

    double-to-int v0, v2

    int-to-long v11, v0

    invoke-virtual/range {v7 .. v12}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportTimerMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/services/metrics/MetricType;J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    .line 208
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v6, v0}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_3

    .line 211
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/nwstd/metrics/MetricsTags;->WEBCONTENT_OVERLAY_CREATED:Lcom/amazon/nwstd/metrics/MetricsTags;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/nwstd/metrics/MetricsAttributes;->SIZE_PERCENTAGE:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_3

    :pswitch_1
    if-eqz v0, :cond_3

    .line 183
    :try_start_1
    sget-object v2, Lcom/amazon/nwstd/metrics/MetricsAttributes;->TIME:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 185
    sget-object v2, Lcom/amazon/nwstd/metrics/MetricsAttributes;->TIME:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    .line 186
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v11

    const-string v12, "NewsstandYJZoomTimer"

    const-string v13, "YJZoomSessionDuration"

    sget-object v14, Lcom/amazon/kindle/services/metrics/MetricType;->INFO:Lcom/amazon/kindle/services/metrics/MetricType;

    invoke-virtual/range {v11 .. v16}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportTimerMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/services/metrics/MetricType;J)V

    .line 189
    :cond_2
    sget-object v2, Lcom/amazon/nwstd/metrics/MetricsAttributes;->CLOSE_ZOOM_SESSION_ORIGIN:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 190
    sget-object v2, Lcom/amazon/nwstd/metrics/MetricsAttributes;->CLOSE_ZOOM_SESSION_ORIGIN:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsStopZoomSessionOrigin;->valueOf(Ljava/lang/String;)Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsStopZoomSessionOrigin;

    move-result-object v0

    .line 191
    sget-object v2, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsStopZoomSessionOrigin;->RESET_BUTTON:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsStopZoomSessionOrigin;

    if-ne v0, v2, :cond_3

    .line 192
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v2, "YJZoomResetZoomButtonClicked"

    invoke-virtual {v0, v10, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 196
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v6, v0}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 199
    :cond_3
    :goto_1
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v2, "YJZoomSessionStopped"

    invoke-virtual {v0, v10, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 177
    :pswitch_2
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v2, "YJZoomSessionStarted"

    invoke-virtual {v0, v10, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_3
    if-eqz v0, :cond_7

    .line 152
    sget-object v5, Lcom/amazon/nwstd/metrics/MetricsAttributes;->READING_MODE:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 153
    sget-object v3, Lcom/amazon/nwstd/metrics/MetricsAttributes;->READING_MODE:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 154
    sget-object v3, Lcom/amazon/nwstd/metrics/loggers/DCPMetricsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$IMetricsHelper$EMetricsReadingMode:[I

    invoke-static {v0}, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsReadingMode;->valueOf(Ljava/lang/String;)Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsReadingMode;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v3, v0

    if-eq v0, v9, :cond_6

    if-eq v0, v8, :cond_5

    if-eq v0, v7, :cond_4

    const/4 v0, 0x0

    .line 168
    invoke-static {v0}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    goto/16 :goto_3

    .line 164
    :cond_4
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v3, "UpsellBannerImpressionInTextView"

    invoke-virtual {v0, v14, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 160
    :cond_5
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v3, "UpsellBannerImpressionInReplica"

    invoke-virtual {v0, v14, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 156
    :cond_6
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v3, "UpsellBannerImpressionInYJ"

    invoke-virtual {v0, v14, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 172
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/nwstd/metrics/MetricsTags;->UPSELL_BANNER_VIEWED:Lcom/amazon/nwstd/metrics/MetricsTags;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/nwstd/metrics/MetricsAttributes;->READING_MODE:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_3

    :pswitch_4
    if-eqz v0, :cond_f

    .line 109
    sget-object v5, Lcom/amazon/nwstd/metrics/MetricsAttributes;->UPSELL_CLICK_ORIGIN:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    sget-object v5, Lcom/amazon/nwstd/metrics/MetricsAttributes;->READING_MODE:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 110
    sget-object v5, Lcom/amazon/nwstd/metrics/MetricsAttributes;->UPSELL_CLICK_ORIGIN:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 111
    sget-object v6, Lcom/amazon/nwstd/metrics/MetricsAttributes;->READING_MODE:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 112
    sget-object v6, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsUpsellClickOrigin;->UPSELL_BANNER:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsUpsellClickOrigin;

    invoke-virtual {v6}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 113
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v3

    const-string v4, "UpsellBannerLinkClicked"

    invoke-virtual {v3, v14, v4}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v3

    invoke-virtual {v3, v4, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    sget-object v3, Lcom/amazon/nwstd/metrics/loggers/DCPMetricsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$IMetricsHelper$EMetricsReadingMode:[I

    invoke-static {v0}, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsReadingMode;->valueOf(Ljava/lang/String;)Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsReadingMode;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v3, v0

    if-eq v0, v9, :cond_a

    if-eq v0, v8, :cond_9

    if-eq v0, v7, :cond_8

    goto/16 :goto_3

    .line 125
    :cond_8
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v3, "UpsellBannerLinkClickedInTextView"

    invoke-virtual {v0, v14, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 121
    :cond_9
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v3, "UpsellBannerLinkClickedInReplica"

    invoke-virtual {v0, v14, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 117
    :cond_a
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v3, "UpsellBannerLinkClickedInYJ"

    invoke-virtual {v0, v14, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 129
    :cond_b
    sget-object v6, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsUpsellClickOrigin;->UPSELL_FULL_PAGE:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsUpsellClickOrigin;

    invoke-virtual {v6}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 130
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v3

    const-string v4, "UpsellFullPageLinkClicked"

    invoke-virtual {v3, v11, v4}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v3

    invoke-virtual {v3, v4, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    sget-object v3, Lcom/amazon/nwstd/metrics/loggers/DCPMetricsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$IMetricsHelper$EMetricsReadingMode:[I

    invoke-static {v0}, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsReadingMode;->valueOf(Ljava/lang/String;)Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsReadingMode;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v3, v0

    if-eq v0, v9, :cond_d

    if-eq v0, v8, :cond_c

    goto/16 :goto_3

    .line 138
    :cond_c
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v3, "UpsellFullPageLinkClickedInReplica"

    invoke-virtual {v0, v11, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v3, "UpsellFullPageLinkClickedInReplica"

    invoke-virtual {v0, v3, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 134
    :cond_d
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v3, "UpsellFullPageLinkClickedInYJ"

    invoke-virtual {v0, v11, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 145
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported click origin: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_3

    .line 148
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/nwstd/metrics/MetricsTags;->UPSELL_LINK_CLICKED:Lcom/amazon/nwstd/metrics/MetricsTags;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/nwstd/metrics/MetricsAttributes;->UPSELL_CLICK_ORIGIN:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_3

    .line 104
    :pswitch_5
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v3, "UpsellFullPageViewed"

    invoke-virtual {v0, v11, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_6
    if-eqz v0, :cond_10

    .line 93
    sget-object v2, Lcom/amazon/nwstd/metrics/MetricsAttributes;->COUNT:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 94
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v5

    sget-object v8, Lcom/amazon/kindle/services/metrics/MetricType;->INFO:Lcom/amazon/kindle/services/metrics/MetricType;

    sget-object v2, Lcom/amazon/nwstd/metrics/MetricsAttributes;->COUNT:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    .line 97
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v9, v0

    const-string v6, "NewsstandYJDownloadTimer"

    const-string v7, "AssetTotalVisibleDownloadError"

    .line 94
    invoke-virtual/range {v5 .. v10}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportTimerMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/services/metrics/MetricType;J)V

    goto/16 :goto_3

    .line 99
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/nwstd/metrics/MetricsTags;->UNAVAILABLE_ARTICLE_DOWNLOAD_ERROR_COUNT:Lcom/amazon/nwstd/metrics/MetricsTags;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/nwstd/metrics/MetricsAttributes;->COUNT:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_3

    :pswitch_7
    if-eqz v0, :cond_12

    .line 82
    sget-object v2, Lcom/amazon/nwstd/metrics/MetricsAttributes;->TIME:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 83
    sget-object v2, Lcom/amazon/nwstd/metrics/MetricsAttributes;->TIME:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0xfa

    cmp-long v0, v2, v4

    if-lez v0, :cond_11

    sub-long/2addr v2, v4

    goto :goto_2

    :cond_11
    const-wide/16 v2, 0x0

    :goto_2
    move-wide v8, v2

    .line 85
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v4

    sget-object v7, Lcom/amazon/kindle/services/metrics/MetricType;->INFO:Lcom/amazon/kindle/services/metrics/MetricType;

    const-string v5, "NewsstandYJViewTimer"

    const-string/jumbo v6, "unavailableArticleViewedTime"

    invoke-virtual/range {v4 .. v9}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportTimerMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/services/metrics/MetricType;J)V

    goto :goto_3

    .line 88
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/nwstd/metrics/MetricsTags;->UNAVAILABLE_ARTICLE_VIEWED_TIME:Lcom/amazon/nwstd/metrics/MetricsTags;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/nwstd/metrics/MetricsAttributes;->TIME:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_3

    .line 78
    :pswitch_8
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v2, "NewsstandYJView"

    const-string/jumbo v3, "unavailableArticleOpen"

    invoke-virtual {v0, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public tagScreen(Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;)V
    .locals 0

    return-void
.end method
