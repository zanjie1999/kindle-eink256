.class public Lcom/amazon/kindle/cover/CoverProviderManager;
.super Ljava/lang/Object;
.source "CoverProviderManager.java"


# instance fields
.field private final providers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/cover/ICoverProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/cover/ICoverProvider;",
            ">;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/amazon/kindle/cover/CoverProviderManager;->providers:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method getCoverFromLocalProviders(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kindle/cover/ICoverImageService$CoverType;Lcom/amazon/kindle/cover/ICoverFilenamer;)Lcom/amazon/kindle/cover/ICoverBuilder;
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 31
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kindle/cover/CoverProviderManager;->getCoverFromProviders(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kindle/cover/ICoverImageService$CoverType;Lcom/amazon/kindle/cover/ICoverFilenamer;Z)Lcom/amazon/kindle/cover/ICoverBuilder;

    move-result-object p1

    return-object p1
.end method

.method getCoverFromProviders(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kindle/cover/ICoverImageService$CoverType;Lcom/amazon/kindle/cover/ICoverFilenamer;)Lcom/amazon/kindle/cover/ICoverBuilder;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 22
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kindle/cover/CoverProviderManager;->getCoverFromProviders(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kindle/cover/ICoverImageService$CoverType;Lcom/amazon/kindle/cover/ICoverFilenamer;Z)Lcom/amazon/kindle/cover/ICoverBuilder;

    move-result-object p1

    return-object p1
.end method

.method getCoverFromProviders(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kindle/cover/ICoverImageService$CoverType;Lcom/amazon/kindle/cover/ICoverFilenamer;Z)Lcom/amazon/kindle/cover/ICoverBuilder;
    .locals 5

    .line 44
    iget-object v0, p0, Lcom/amazon/kindle/cover/CoverProviderManager;->providers:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/cover/ICoverProvider;

    if-eqz p5, :cond_1

    .line 45
    invoke-interface {v2}, Lcom/amazon/kindle/cover/ICoverProvider;->isRemoteProvider()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 48
    :cond_1
    invoke-interface {v2}, Lcom/amazon/kindle/cover/ICoverProvider;->getCoverType()Lcom/amazon/kindle/cover/ICoverImageService$CoverType;

    move-result-object v3

    .line 49
    invoke-virtual {v3}, Lcom/amazon/kindle/cover/ICoverImageService$CoverType;->getPriority()I

    move-result v3

    invoke-virtual {p3}, Lcom/amazon/kindle/cover/ICoverImageService$CoverType;->getPriority()I

    move-result v4

    if-gt v3, v4, :cond_2

    goto :goto_1

    .line 54
    :cond_2
    invoke-interface {v2, p1, p2, p4}, Lcom/amazon/kindle/cover/ICoverProvider;->getCover(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kindle/cover/ICoverFilenamer;)Lcom/amazon/kindle/cover/ICoverBuilder;

    move-result-object v1

    if-eqz v1, :cond_0

    :cond_3
    :goto_1
    return-object v1
.end method
