.class public final Lcom/amazon/kindle/metrics/ContentOpenMetricsUtil;
.super Ljava/lang/Object;
.source "ContentOpenMetricsUtil.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nContentOpenMetricsUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContentOpenMetricsUtil.kt\ncom/amazon/kindle/metrics/ContentOpenMetricsUtil\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,36:1\n181#2,2:37\n*E\n*S KotlinDebug\n*F\n+ 1 ContentOpenMetricsUtil.kt\ncom/amazon/kindle/metrics/ContentOpenMetricsUtil\n*L\n24#1,2:37\n*E\n"
.end annotation


# instance fields
.field private final metricsManager:Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;)V
    .locals 1

    const-string v0, "metricsManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/metrics/ContentOpenMetricsUtil;->metricsManager:Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;

    return-void
.end method


# virtual methods
.method public final getBookOpenableMetricsKeysWithServiceWeblabValue(Lcom/amazon/kindle/model/content/IBookID;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/model/content/IBookID;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "bookDownloadOpenable"

    .line 15
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/amazon/kindle/metrics/ContentOpenMetricsUtil;->metricsManager:Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    .line 19
    sget-object v3, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->TAP_TO_OPENABLE:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 20
    sget-object v3, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->TAP_TO_DOWNLOAD:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "X-Amzn-KCDX-Metrics-Attributes"

    .line 17
    invoke-virtual {v1, v3, p1, v2}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->retrieveAttribute(Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 37
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 25
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openableDownloadWithServiceWeblab."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 28
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method
