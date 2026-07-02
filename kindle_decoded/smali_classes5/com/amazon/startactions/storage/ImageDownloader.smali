.class public Lcom/amazon/startactions/storage/ImageDownloader;
.super Ljava/lang/Object;
.source "ImageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/startactions/storage/ImageDownloader$ImageManagerDownloadListener;,
        Lcom/amazon/startactions/storage/ImageDownloader$Listener;
    }
.end annotation


# static fields
.field private static final HANDLER:Landroid/os/Handler;


# instance fields
.field private final atomicImage:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/amazon/startactions/storage/ImageDownloader;->HANDLER:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/amazon/startactions/storage/ImageDownloader;->atomicImage:Ljava/util/concurrent/atomic/AtomicReference;

    .line 62
    iput-object p1, p0, Lcom/amazon/startactions/storage/ImageDownloader;->url:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/startactions/storage/ImageDownloader;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/amazon/startactions/storage/ImageDownloader;->atomicImage:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static synthetic access$200()Landroid/os/Handler;
    .locals 1

    .line 19
    sget-object v0, Lcom/amazon/startactions/storage/ImageDownloader;->HANDLER:Landroid/os/Handler;

    return-object v0
.end method

.method public static forFeaturedRec(Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;I)Lcom/amazon/startactions/storage/ImageDownloader;
    .locals 1

    .line 52
    new-instance v0, Lcom/amazon/startactions/storage/ImageDownloader;

    iget-object p0, p0, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->imageURL:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/amazon/ea/util/StyleCodeUtil;->addHeightParam(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amazon/startactions/storage/ImageDownloader;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/amazon/startactions/storage/ImageDownloader$Listener;)V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/amazon/startactions/storage/ImageDownloader;->atomicImage:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 95
    invoke-interface {p1, v0}, Lcom/amazon/startactions/storage/ImageDownloader$Listener;->applyImage(Landroid/graphics/Bitmap;)V

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/amazon/startactions/storage/ImageDownloader;->url:Ljava/lang/String;

    new-instance v1, Lcom/amazon/startactions/storage/ImageDownloader$ImageManagerDownloadListener;

    invoke-direct {v1, p0, p1}, Lcom/amazon/startactions/storage/ImageDownloader$ImageManagerDownloadListener;-><init>(Lcom/amazon/startactions/storage/ImageDownloader;Lcom/amazon/startactions/storage/ImageDownloader$Listener;)V

    invoke-static {v0, v1}, Lcom/amazon/startactions/storage/ImageDownloadManager;->get(Ljava/lang/String;Lcom/amazon/ea/images/ImageDownloadListener;)V

    :cond_0
    return-void
.end method

.method public download()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/amazon/startactions/storage/ImageDownloader;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/startactions/storage/ImageDownloadManager;->prepare(Ljava/lang/String;)V

    return-void
.end method

.method public load()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/amazon/startactions/storage/ImageDownloader;->url:Ljava/lang/String;

    new-instance v1, Lcom/amazon/startactions/storage/ImageDownloader$1;

    invoke-direct {v1, p0}, Lcom/amazon/startactions/storage/ImageDownloader$1;-><init>(Lcom/amazon/startactions/storage/ImageDownloader;)V

    invoke-static {v0, v1}, Lcom/amazon/startactions/storage/ImageDownloadManager;->get(Ljava/lang/String;Lcom/amazon/ea/images/ImageDownloadListener;)V

    return-void
.end method
