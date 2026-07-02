.class public abstract Lcom/amazon/falkor/download/EpisodeInfoDownloadManager;
.super Lcom/amazon/falkor/download/FalkorDownloadManager;
.source "FalkorDownloadManagers.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/falkor/download/FalkorDownloadManager<",
        "Lcom/amazon/falkor/models/FalkorAsinEpisodeMap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 2

    const-string/jumbo v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 26
    invoke-direct {p0, p1, v0, v1, v0}, Lcom/amazon/falkor/download/FalkorDownloadManager;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public getDataClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/amazon/falkor/models/FalkorAsinEpisodeMap;",
            ">;"
        }
    .end annotation

    .line 29
    const-class v0, Lcom/amazon/falkor/models/FalkorAsinEpisodeMap;

    return-object v0
.end method

.method public getEpisode()Lcom/amazon/falkor/models/FalkorEpisode;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/amazon/falkor/download/FalkorDownloadManager;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/falkor/models/FalkorAsinEpisodeMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/falkor/models/FalkorAsinEpisodeMap;->values()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/falkor/models/FalkorEpisode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getUrl(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;
    .locals 1

    const-string v0, "book"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sget-object v0, Lcom/amazon/falkor/utils/FalkorUrlUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorUrlUtils;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/falkor/utils/FalkorUrlUtils;->getProductUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
