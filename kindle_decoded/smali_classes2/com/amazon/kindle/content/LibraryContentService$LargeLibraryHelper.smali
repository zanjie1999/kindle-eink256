.class Lcom/amazon/kindle/content/LibraryContentService$LargeLibraryHelper;
.super Ljava/lang/Object;
.source "LibraryContentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/content/LibraryContentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LargeLibraryHelper"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 3308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kindle/content/LibraryContentService$1;)V
    .locals 0

    .line 3308
    invoke-direct {p0}, Lcom/amazon/kindle/content/LibraryContentService$LargeLibraryHelper;-><init>()V

    return-void
.end method

.method static synthetic access$1200(Lcom/amazon/kindle/content/LibraryContentService$LargeLibraryHelper;Lcom/amazon/kindle/model/content/IBookID;)V
    .locals 0

    .line 3308
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/LibraryContentService$LargeLibraryHelper;->removeBooksFromDownload(Lcom/amazon/kindle/model/content/IBookID;)V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/kindle/content/LibraryContentService$LargeLibraryHelper;Ljava/util/Collection;)V
    .locals 0

    .line 3308
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/LibraryContentService$LargeLibraryHelper;->onContentUpdate(Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/kindle/content/LibraryContentService$LargeLibraryHelper;Ljava/util/Collection;)V
    .locals 0

    .line 3308
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/LibraryContentService$LargeLibraryHelper;->removeBooksByStringId(Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/kindle/content/LibraryContentService$LargeLibraryHelper;Ljava/util/Collection;)V
    .locals 0

    .line 3308
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/LibraryContentService$LargeLibraryHelper;->removeBooksByBookId(Ljava/util/Collection;)V

    return-void
.end method

.method private onContentUpdate(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;)V"
        }
    .end annotation

    .line 3311
    const-class v0, Lcom/amazon/kcp/integrator/LargeLibraryRepository;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/integrator/LargeLibraryRepository;

    .line 3312
    invoke-static {}, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->isLargeLibraryEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 3313
    :cond_0
    invoke-interface {v0, p1}, Lcom/amazon/kcp/integrator/LargeLibraryRepository;->handleContentUpdates(Ljava/util/Collection;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private removeBooksByBookId(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/model/content/IBookID;",
            ">;)V"
        }
    .end annotation

    .line 3327
    const-class v0, Lcom/amazon/kcp/integrator/LargeLibraryRepository;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/integrator/LargeLibraryRepository;

    .line 3328
    invoke-static {}, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->isLargeLibraryEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 3329
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Lcom/amazon/kcp/integrator/LargeLibraryRepository;->handleBooksRemoved(Ljava/util/Set;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private removeBooksByStringId(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3317
    const-class v0, Lcom/amazon/kcp/integrator/LargeLibraryRepository;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/integrator/LargeLibraryRepository;

    .line 3318
    invoke-static {}, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->isLargeLibraryEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_1

    .line 3319
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 3320
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3321
    invoke-static {v2}, Lcom/amazon/kindle/util/BookIdUtils;->parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3323
    :cond_1
    invoke-interface {v0, v1}, Lcom/amazon/kcp/integrator/LargeLibraryRepository;->handleBooksRemoved(Ljava/util/Set;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private removeBooksFromDownload(Lcom/amazon/kindle/model/content/IBookID;)V
    .locals 2

    .line 3333
    const-class v0, Lcom/amazon/kcp/integrator/LargeLibraryRepository;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/integrator/LargeLibraryRepository;

    .line 3334
    invoke-static {}, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->isLargeLibraryEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 3335
    :cond_0
    invoke-interface {v0, p1}, Lcom/amazon/kcp/integrator/LargeLibraryRepository;->handleBookRemovedFromDownloaded(Lcom/amazon/kindle/model/content/IBookID;)V

    :cond_1
    :goto_0
    return-void
.end method
