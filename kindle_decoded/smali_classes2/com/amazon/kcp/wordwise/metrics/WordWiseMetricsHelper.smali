.class public Lcom/amazon/kcp/wordwise/metrics/WordWiseMetricsHelper;
.super Ljava/lang/Object;
.source "WordWiseMetricsHelper.java"


# direct methods
.method public static reportActionByDictionaryType(Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;Ljava/lang/String;)V
    .locals 1

    .line 35
    sget-object v0, Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;->ZH_PN:Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;

    if-ne p0, v0, :cond_0

    .line 36
    invoke-static {p1}, Lcom/amazon/kcp/wordwise/metrics/WordWiseMetricsHelper;->reportPinyinAction(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    .line 38
    invoke-static {p1}, Lcom/amazon/kcp/wordwise/metrics/WordWiseMetricsHelper;->reportWordWiseAction(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static reportEventToPmet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 107
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    .line 108
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v1

    const-string v2, "."

    if-eqz v1, :cond_0

    .line 109
    invoke-interface {v1}, Lcom/amazon/kindle/krx/application/IUserAccount;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 110
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/application/IUserAccount;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 112
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const-string v8, ""

    move-object v5, p2

    move-object v6, p3

    invoke-interface/range {v3 .. v8}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetrics(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public static reportEventToPmetByDictionaryType(Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 89
    sget-object v0, Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;->ZH_PN:Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;

    if-ne p0, v0, :cond_0

    .line 90
    invoke-static {p1, p2, p3}, Lcom/amazon/kcp/wordwise/metrics/WordWiseMetricsHelper;->reportPinyinEventToPmet(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    .line 92
    invoke-static {p1, p2, p3}, Lcom/amazon/kcp/wordwise/metrics/WordWiseMetricsHelper;->reportWordWiseEventToPmet(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static reportPinyinAction(Ljava/lang/String;)V
    .locals 1

    const-string v0, "LanguageLayerPinyin"

    .line 27
    invoke-static {v0, p0}, Lcom/amazon/kcp/wordwise/metrics/WordWiseMetricsHelper;->reportToPmetAndPerformReadingStreamsAction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static reportPinyinEventToPmet(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "LanguageLayerPinyin"

    .line 79
    invoke-static {v0, p0, p1, p2}, Lcom/amazon/kcp/wordwise/metrics/WordWiseMetricsHelper;->reportEventToPmet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method private static reportToPmetAndPerformReadingStreamsAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 50
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    .line 51
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 55
    invoke-interface {v1}, Lcom/amazon/kindle/krx/application/IUserAccount;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-static {v1}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p1

    .line 62
    :goto_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v2

    invoke-interface {v2, p0, v1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static reportWordWiseAction(Ljava/lang/String;)V
    .locals 1

    const-string v0, "LanguageLayer"

    .line 20
    invoke-static {v0, p0}, Lcom/amazon/kcp/wordwise/metrics/WordWiseMetricsHelper;->reportToPmetAndPerformReadingStreamsAction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static reportWordWiseEventToPmet(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "LanguageLayer"

    .line 71
    invoke-static {v0, p0, p1, p2}, Lcom/amazon/kcp/wordwise/metrics/WordWiseMetricsHelper;->reportEventToPmet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method
