.class final Lcom/amazon/kcp/reader/ui/LocationSeekerDecorationProviderRegistry$1;
.super Lcom/amazon/kindle/krx/providers/SortableProviderRegistry;
.source "LocationSeekerDecorationProviderRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/LocationSeekerDecorationProviderRegistry;->initLocationSeekerRegistry()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kindle/krx/providers/SortableProviderRegistry<",
        "Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/amazon/kindle/krx/providers/SortableProviderRegistry;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized getAll(Lcom/amazon/kindle/krx/content/IBook;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_2

    .line 31
    :try_start_0
    invoke-static {}, Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetectorManager;->getInstance()Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetector;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetector;->isSuppressionEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 35
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    invoke-super {p0, p1}, Lcom/amazon/kindle/krx/providers/SortableProviderRegistry;->getAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;

    .line 37
    invoke-static {}, Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetectorManager;->getInstance()Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetector;

    move-result-object v3

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetector;->checkAndWrapLocationSeekerDecoration(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;Ljava/lang/String;)Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 39
    :cond_1
    monitor-exit p0

    return-object v0

    .line 32
    :cond_2
    :goto_1
    :try_start_1
    invoke-super {p0, p1}, Lcom/amazon/kindle/krx/providers/SortableProviderRegistry;->getAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic getAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 27
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/LocationSeekerDecorationProviderRegistry$1;->getAll(Lcom/amazon/kindle/krx/content/IBook;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method
