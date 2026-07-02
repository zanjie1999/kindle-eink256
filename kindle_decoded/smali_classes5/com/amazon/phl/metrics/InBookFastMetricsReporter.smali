.class public final Lcom/amazon/phl/metrics/InBookFastMetricsReporter;
.super Ljava/lang/Object;
.source "InBookFastMetricsReporter.kt"

# interfaces
.implements Lcom/amazon/phl/metrics/InBookMetricsReporter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/phl/metrics/InBookFastMetricsReporter$FieldKey;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInBookFastMetricsReporter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InBookFastMetricsReporter.kt\ncom/amazon/phl/metrics/InBookFastMetricsReporter\n*L\n1#1,53:1\n*E\n"
.end annotation


# instance fields
.field private final POPULAR_HIGHLIGHTS_SWITCH:Ljava/lang/String;

.field private final SCHEMA_NAME:Ljava/lang/String;

.field private final SCHEMA_VERSION:I

.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-class v0, Lcom/amazon/phl/metrics/InBookFastMetricsReporter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/phl/metrics/InBookFastMetricsReporter;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "reader_aa_settings_v1"

    .line 15
    iput-object v0, p0, Lcom/amazon/phl/metrics/InBookFastMetricsReporter;->SCHEMA_NAME:Ljava/lang/String;

    const-string v0, "PopularHighlightsSwitch"

    .line 17
    iput-object v0, p0, Lcom/amazon/phl/metrics/InBookFastMetricsReporter;->POPULAR_HIGHLIGHTS_SWITCH:Ljava/lang/String;

    return-void
.end method

.method private final reportMetricsInternal(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/phl/metrics/Modifier;I)V
    .locals 4

    .line 39
    iget-object v0, p0, Lcom/amazon/phl/metrics/InBookFastMetricsReporter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reportMetricsInternal PopularHighlightsSwitch preValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "newValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", modifier : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/amazon/phl/metrics/Modifier;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isSnapShot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-static {v0, v1}, Lcom/amazon/phl/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-class v0, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    if-eqz v0, :cond_0

    .line 44
    iget-object v1, p0, Lcom/amazon/phl/metrics/InBookFastMetricsReporter;->SCHEMA_NAME:Ljava/lang/String;

    iget v2, p0, Lcom/amazon/phl/metrics/InBookFastMetricsReporter;->SCHEMA_VERSION:I

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->getPayloadBuilder(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v1

    .line 45
    sget-object v2, Lcom/amazon/phl/metrics/InBookFastMetricsReporter$FieldKey;->SETTING:Lcom/amazon/phl/metrics/InBookFastMetricsReporter$FieldKey;

    invoke-virtual {v2}, Lcom/amazon/phl/metrics/InBookFastMetricsReporter$FieldKey;->getValue()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/phl/metrics/InBookFastMetricsReporter;->POPULAR_HIGHLIGHTS_SWITCH:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 46
    sget-object v2, Lcom/amazon/phl/metrics/InBookFastMetricsReporter$FieldKey;->PRE_VALUE:Lcom/amazon/phl/metrics/InBookFastMetricsReporter$FieldKey;

    invoke-virtual {v2}, Lcom/amazon/phl/metrics/InBookFastMetricsReporter$FieldKey;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 47
    sget-object p1, Lcom/amazon/phl/metrics/InBookFastMetricsReporter$FieldKey;->NEW_VALUE:Lcom/amazon/phl/metrics/InBookFastMetricsReporter$FieldKey;

    invoke-virtual {p1}, Lcom/amazon/phl/metrics/InBookFastMetricsReporter$FieldKey;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, p2}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 48
    sget-object p1, Lcom/amazon/phl/metrics/InBookFastMetricsReporter$FieldKey;->MODIFIER:Lcom/amazon/phl/metrics/InBookFastMetricsReporter$FieldKey;

    invoke-virtual {p1}, Lcom/amazon/phl/metrics/InBookFastMetricsReporter$FieldKey;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lcom/amazon/phl/metrics/Modifier;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 49
    sget-object p1, Lcom/amazon/phl/metrics/InBookFastMetricsReporter$FieldKey;->IS_SNAPSHOT:Lcom/amazon/phl/metrics/InBookFastMetricsReporter$FieldKey;

    invoke-virtual {p1}, Lcom/amazon/phl/metrics/InBookFastMetricsReporter$FieldKey;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, p4}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 50
    invoke-interface {v1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->build()Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->record(Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public reportPopularHighlightsSettingsChanged(ZZLcom/amazon/phl/metrics/Modifier;)V
    .locals 2

    const-string v0, "modifier"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "On"

    const-string v1, "Off"

    if-eqz p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    const/4 p2, 0x0

    .line 35
    invoke-direct {p0, p1, v0, p3, p2}, Lcom/amazon/phl/metrics/InBookFastMetricsReporter;->reportMetricsInternal(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/phl/metrics/Modifier;I)V

    return-void
.end method
