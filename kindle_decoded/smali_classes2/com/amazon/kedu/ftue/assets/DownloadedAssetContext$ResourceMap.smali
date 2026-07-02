.class Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext$ResourceMap;
.super Ljava/lang/Object;
.source "DownloadedAssetContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ResourceMap"
.end annotation


# instance fields
.field private resourceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/amazon/kedu/ftue/assets/resources/ResourceDetails;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext$ResourceMap;->resourceMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method filterToSingleCandidate(Ljava/util/Set;)Lcom/amazon/kedu/ftue/assets/resources/ResourceDetails;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/amazon/kedu/ftue/assets/resources/ResourceDetails;",
            ">;)",
            "Lcom/amazon/kedu/ftue/assets/resources/ResourceDetails;"
        }
    .end annotation

    .line 277
    invoke-static {}, Lcom/amazon/kedu/ftue/metrics/MetricManager;->getInstance()Lcom/amazon/kedu/ftue/metrics/MetricManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kedu/ftue/metrics/Metric;->ASSET_ACCESSED_FILTERED_TO:Lcom/amazon/kedu/ftue/metrics/Metric;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kedu/ftue/metrics/MetricManager;->reportMetricCounter(Lcom/amazon/kedu/ftue/metrics/Metric;I)V

    .line 279
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kedu/ftue/assets/resources/ResourceDetails;

    if-eqz v0, :cond_1

    .line 281
    invoke-virtual {v1}, Lcom/amazon/kedu/ftue/assets/resources/ResourceDetails;->getQualifiers()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v0}, Lcom/amazon/kedu/ftue/assets/resources/ResourceDetails;->getQualifiers()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-le v2, v3, :cond_0

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getResource(Ljava/lang/String;Ljava/util/Map;)Lcom/amazon/kedu/ftue/assets/resources/ResourceDetails;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/amazon/kedu/ftue/assets/resources/QualifierType;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazon/kedu/ftue/assets/resources/ResourceDetails;"
        }
    .end annotation

    .line 251
    invoke-static {}, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext;->access$000()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getting available resources for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    iget-object v0, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext$ResourceMap;->resourceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext$ResourceMap;->resourceMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 255
    invoke-static {}, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext;->access$000()Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "found "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " potential matches"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 258
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kedu/ftue/assets/resources/QualifierType;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/amazon/kedu/ftue/assets/resources/QualifierType;->filter(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 259
    invoke-static {}, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext;->access$000()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reduced to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " potential matches after filtering "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 261
    :cond_0
    invoke-virtual {p0, v0}, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext$ResourceMap;->filterToSingleCandidate(Ljava/util/Set;)Lcom/amazon/kedu/ftue/assets/resources/ResourceDetails;

    move-result-object p1

    goto :goto_1

    .line 265
    :cond_1
    invoke-static {}, Lcom/amazon/kedu/ftue/metrics/MetricManager;->getInstance()Lcom/amazon/kedu/ftue/metrics/MetricManager;

    move-result-object p1

    sget-object p2, Lcom/amazon/kedu/ftue/metrics/Metric;->ASSET_ACCESSED_NOT_FOUND:Lcom/amazon/kedu/ftue/metrics/Metric;

    invoke-virtual {p1, p2}, Lcom/amazon/kedu/ftue/metrics/MetricManager;->reportMetricEvent(Lcom/amazon/kedu/ftue/metrics/Metric;)V

    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public putResource(Lcom/amazon/kedu/ftue/assets/resources/ResourceDetails;)V
    .locals 3

    .line 233
    invoke-virtual {p1}, Lcom/amazon/kedu/ftue/assets/resources/ResourceDetails;->getName()Ljava/lang/String;

    move-result-object v0

    .line 235
    iget-object v1, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext$ResourceMap;->resourceMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext$ResourceMap;->resourceMap:Ljava/util/Map;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    :cond_0
    iget-object v1, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext$ResourceMap;->resourceMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
