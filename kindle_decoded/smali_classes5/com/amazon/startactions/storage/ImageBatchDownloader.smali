.class public Lcom/amazon/startactions/storage/ImageBatchDownloader;
.super Ljava/lang/Object;
.source "ImageBatchDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/startactions/storage/ImageBatchDownloader$ImageManagerDownloadListener;,
        Lcom/amazon/startactions/storage/ImageBatchDownloader$BatchListener;
    }
.end annotation


# static fields
.field private static final HANDLER:Landroid/os/Handler;

.field private static final TAG:Ljava/lang/String; = "com.amazon.startactions.storage.ImageBatchDownloader"


# instance fields
.field private atomicImages:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final urls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/amazon/startactions/storage/ImageBatchDownloader;->HANDLER:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object p1, p0, Lcom/amazon/startactions/storage/ImageBatchDownloader;->urls:Ljava/util/List;

    .line 171
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/startactions/storage/ImageBatchDownloader;->atomicImages:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/startactions/storage/ImageBatchDownloader;)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/amazon/startactions/storage/ImageBatchDownloader;->atomicImages:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-object p0
.end method

.method static synthetic access$300()Landroid/os/Handler;
    .locals 1

    .line 29
    sget-object v0, Lcom/amazon/startactions/storage/ImageBatchDownloader;->HANDLER:Landroid/os/Handler;

    return-object v0
.end method

.method public static forAuthorSubscriptions(Ljava/util/List;I)Lcom/amazon/startactions/storage/ImageBatchDownloader;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionData;",
            ">;I)",
            "Lcom/amazon/startactions/storage/ImageBatchDownloader;"
        }
    .end annotation

    .line 154
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 155
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 157
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionData;

    iget-object v3, v3, Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionData;->imageURL:Ljava/lang/String;

    invoke-static {v3, p1}, Lcom/amazon/ea/util/StyleCodeUtil;->addHeightParam(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 159
    :cond_0
    new-instance p0, Lcom/amazon/startactions/storage/ImageBatchDownloader;

    invoke-direct {p0, v1}, Lcom/amazon/startactions/storage/ImageBatchDownloader;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public static forAuthors(Ljava/util/List;I)Lcom/amazon/startactions/storage/ImageBatchDownloader;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/ea/sidecar/def/data/AuthorBioData;",
            ">;I)",
            "Lcom/amazon/startactions/storage/ImageBatchDownloader;"
        }
    .end annotation

    .line 136
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 137
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 139
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;

    iget-object v3, v3, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;->imageURL:Ljava/lang/String;

    invoke-static {v3, p1}, Lcom/amazon/ea/util/StyleCodeUtil;->addHeightParam(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 141
    :cond_0
    new-instance p0, Lcom/amazon/startactions/storage/ImageBatchDownloader;

    invoke-direct {p0, v1}, Lcom/amazon/startactions/storage/ImageBatchDownloader;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public static forBlurbAuthors(Ljava/util/List;I)Lcom/amazon/startactions/storage/ImageBatchDownloader;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/ea/sidecar/def/data/BlurbCardRecommendationData;",
            ">;I)",
            "Lcom/amazon/startactions/storage/ImageBatchDownloader;"
        }
    .end annotation

    .line 117
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 118
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 120
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/ea/sidecar/def/data/BlurbCardRecommendationData;

    invoke-virtual {v3}, Lcom/amazon/ea/sidecar/def/data/BlurbCardRecommendationData;->getBlurbAuthorImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/amazon/ea/util/StyleCodeUtil;->addHeightParam(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 121
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    :cond_0
    new-instance p0, Lcom/amazon/startactions/storage/ImageBatchDownloader;

    invoke-direct {p0, v1}, Lcom/amazon/startactions/storage/ImageBatchDownloader;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public static forRecs(Ljava/util/List;I)Lcom/amazon/startactions/storage/ImageBatchDownloader;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/ea/sidecar/def/data/RecommendationData;",
            ">;I)",
            "Lcom/amazon/startactions/storage/ImageBatchDownloader;"
        }
    .end annotation

    .line 51
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 52
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 54
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/ea/sidecar/def/data/RecommendationData;

    iget-object v3, v3, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->imageURL:Ljava/lang/String;

    invoke-static {v3, p1}, Lcom/amazon/ea/util/StyleCodeUtil;->addHeightParam(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 56
    :cond_0
    new-instance p0, Lcom/amazon/startactions/storage/ImageBatchDownloader;

    invoke-direct {p0, v1}, Lcom/amazon/startactions/storage/ImageBatchDownloader;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public static forRecsWithKu(Ljava/util/List;ILcom/amazon/kindle/krx/ui/ColorMode;)Lcom/amazon/startactions/storage/ImageBatchDownloader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/ea/sidecar/def/data/RecommendationData;",
            ">;I",
            "Lcom/amazon/kindle/krx/ui/ColorMode;",
            ")",
            "Lcom/amazon/startactions/storage/ImageBatchDownloader;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 72
    invoke-static {p0, p1, p2, v0}, Lcom/amazon/startactions/storage/ImageBatchDownloader;->forRecsWithKu(Ljava/util/List;ILcom/amazon/kindle/krx/ui/ColorMode;Z)Lcom/amazon/startactions/storage/ImageBatchDownloader;

    move-result-object p0

    return-object p0
.end method

.method public static forRecsWithKu(Ljava/util/List;ILcom/amazon/kindle/krx/ui/ColorMode;Z)Lcom/amazon/startactions/storage/ImageBatchDownloader;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/ea/sidecar/def/data/RecommendationData;",
            ">;I",
            "Lcom/amazon/kindle/krx/ui/ColorMode;",
            "Z)",
            "Lcom/amazon/startactions/storage/ImageBatchDownloader;"
        }
    .end annotation

    .line 90
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 91
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 93
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/ea/sidecar/def/data/RecommendationData;

    iget-object v3, v3, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->imageURL:Ljava/lang/String;

    .line 95
    invoke-static {}, Lcom/amazon/ea/purchase/PurchaseManager;->getInstance()Lcom/amazon/ea/purchase/PurchaseManager;

    move-result-object v4

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/ea/sidecar/def/data/RecommendationData;

    iget-object v5, v5, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->asin:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/amazon/ea/purchase/PurchaseManager;->getPurchaseInfo(Ljava/lang/String;)Lcom/amazon/ea/purchase/model/PurchaseInfo;

    move-result-object v4

    .line 96
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 97
    sget-object v5, Lcom/amazon/startactions/storage/ImageBatchDownloader;->TAG:Ljava/lang/String;

    const-string v6, "Getting URL for recImages in Image Batch Downloader."

    invoke-static {v5, v6}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_0
    invoke-virtual {v4, v3, p2, p3}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->getBookCoverUrl(Ljava/lang/String;Lcom/amazon/kindle/krx/ui/ColorMode;Z)Ljava/lang/String;

    move-result-object v3

    .line 101
    invoke-static {v3, p1}, Lcom/amazon/ea/util/StyleCodeUtil;->addHeightParam(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 102
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    :cond_1
    new-instance p0, Lcom/amazon/startactions/storage/ImageBatchDownloader;

    invoke-direct {p0, v1}, Lcom/amazon/startactions/storage/ImageBatchDownloader;-><init>(Ljava/util/List;)V

    return-object p0
.end method


# virtual methods
.method public apply(Lcom/amazon/startactions/storage/ImageBatchDownloader$BatchListener;)V
    .locals 3

    const/4 v0, 0x0

    .line 209
    :goto_0
    iget-object v1, p0, Lcom/amazon/startactions/storage/ImageBatchDownloader;->urls:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 210
    iget-object v1, p0, Lcom/amazon/startactions/storage/ImageBatchDownloader;->atomicImages:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 211
    invoke-interface {p1, v0, v1}, Lcom/amazon/startactions/storage/ImageBatchDownloader$BatchListener;->applyImage(ILandroid/graphics/Bitmap;)V

    if-nez v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/amazon/startactions/storage/ImageBatchDownloader;->urls:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/amazon/startactions/storage/ImageBatchDownloader$ImageManagerDownloadListener;

    invoke-direct {v2, p0, v0, p1}, Lcom/amazon/startactions/storage/ImageBatchDownloader$ImageManagerDownloadListener;-><init>(Lcom/amazon/startactions/storage/ImageBatchDownloader;ILcom/amazon/startactions/storage/ImageBatchDownloader$BatchListener;)V

    invoke-static {v1, v2}, Lcom/amazon/startactions/storage/ImageDownloadManager;->get(Ljava/lang/String;Lcom/amazon/ea/images/ImageDownloadListener;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public download()V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/amazon/startactions/storage/ImageBatchDownloader;->urls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 179
    invoke-static {v1}, Lcom/amazon/startactions/storage/ImageDownloadManager;->prepare(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public get(I)Landroid/graphics/Bitmap;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/amazon/startactions/storage/ImageBatchDownloader;->atomicImages:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public listen(Lcom/amazon/startactions/storage/ImageBatchDownloader$BatchListener;)V
    .locals 3

    const/4 v0, 0x0

    .line 228
    :goto_0
    iget-object v1, p0, Lcom/amazon/startactions/storage/ImageBatchDownloader;->urls:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 229
    iget-object v1, p0, Lcom/amazon/startactions/storage/ImageBatchDownloader;->atomicImages:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/amazon/startactions/storage/ImageBatchDownloader;->urls:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/amazon/startactions/storage/ImageBatchDownloader$ImageManagerDownloadListener;

    invoke-direct {v2, p0, v0, p1}, Lcom/amazon/startactions/storage/ImageBatchDownloader$ImageManagerDownloadListener;-><init>(Lcom/amazon/startactions/storage/ImageBatchDownloader;ILcom/amazon/startactions/storage/ImageBatchDownloader$BatchListener;)V

    invoke-static {v1, v2}, Lcom/amazon/startactions/storage/ImageDownloadManager;->get(Ljava/lang/String;Lcom/amazon/ea/images/ImageDownloadListener;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public load()V
    .locals 4

    .line 187
    iget-object v0, p0, Lcom/amazon/startactions/storage/ImageBatchDownloader;->urls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 190
    iget-object v2, p0, Lcom/amazon/startactions/storage/ImageBatchDownloader;->urls:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Lcom/amazon/startactions/storage/ImageBatchDownloader$1;

    invoke-direct {v3, p0, v1}, Lcom/amazon/startactions/storage/ImageBatchDownloader$1;-><init>(Lcom/amazon/startactions/storage/ImageBatchDownloader;I)V

    invoke-static {v2, v3}, Lcom/amazon/startactions/storage/ImageDownloadManager;->get(Ljava/lang/String;Lcom/amazon/ea/images/ImageDownloadListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
