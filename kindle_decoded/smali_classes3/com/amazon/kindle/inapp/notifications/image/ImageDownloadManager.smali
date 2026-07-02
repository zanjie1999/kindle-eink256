.class public Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager;
.super Ljava/lang/Object;
.source "ImageDownloadManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager$Holder;,
        Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager$ImageDownloadRunnable;,
        Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImageDownloadManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageDownloadManager.kt\ncom/amazon/kindle/inapp/notifications/image/ImageDownloadManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,74:1\n1230#2:75\n1299#2,3:76\n*E\n*S KotlinDebug\n*F\n+ 1 ImageDownloadManager.kt\ncom/amazon/kindle/inapp/notifications/image/ImageDownloadManager\n*L\n64#1:75\n64#1,3:76\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager$Companion;

.field private static final MAX_CONCURRENT_DOWNLOADS:I = 0xf

.field private static final NUMBER_OF_CORES:I

.field private static final TAG:Ljava/lang/String;

.field private static final instance$delegate:Lkotlin/Lazy;


# instance fields
.field private final downloadPool:Ljava/util/concurrent/ExecutorService;

.field private final imageCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final imageDownloadUtil:Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadUtil;

.field private final networkUtil:Lcom/amazon/kindle/inapp/notifications/util/NetworkConnectionUtil;

.field private final trackingMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager;->Companion:Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager$Companion;

    .line 68
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager$Companion$instance$2;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager$Companion$instance$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager;->instance$delegate:Lkotlin/Lazy;

    .line 69
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager;->Companion:Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager;->TAG:Ljava/lang/String;

    .line 70
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager;->NUMBER_OF_CORES:I

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/inapp/notifications/util/NetworkConnectionUtil;Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadUtil;)V
    .locals 1

    const-string v0, "networkUtil"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageDownloadUtil"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager;->networkUtil:Lcom/amazon/kindle/inapp/notifications/util/NetworkConnectionUtil;

    iput-object p2, p0, Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager;->imageDownloadUtil:Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadUtil;

    .line 20
    new-instance p1, Lcom/amazon/kindle/inapp/notifications/service/PriorityThreadFactory;

    const-string p2, "INAPP-Image-Download"

    const/16 v0, 0xa

    invoke-direct {p1, p2, v0}, Lcom/amazon/kindle/inapp/notifications/service/PriorityThreadFactory;-><init>(Ljava/lang/String;I)V

    const/16 p2, 0xf

    invoke-static {p2, p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    const-string p2, "Executors.newFixedThread\u2026EAD_PRIORITY_BACKGROUND))"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager;->downloadPool:Ljava/util/concurrent/ExecutorService;

    .line 21
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager;->trackingMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 24
    new-instance p1, Landroid/util/LruCache;

    const/high16 p2, 0x500000

    invoke-direct {p1, p2}, Landroid/util/LruCache;-><init>(I)V

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager;->imageCache:Landroid/util/LruCache;

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lkotlin/Lazy;
    .locals 1

    .line 16
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager;->instance$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 16
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$imageFetched(Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager;->imageFetched(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private final declared-synchronized imageFetched(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    monitor-enter p0

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager;->imageCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager;->trackingMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 76
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 77
    check-cast v2, Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadListener;

    .line 64
    invoke-interface {v2, p1, p2}, Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadListener;->onCompletion(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 65
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized fetchImage(Ljava/lang/String;Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadListener;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    sget-object p1, Lcom/amazon/kindle/inapp/notifications/logging/Log;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/logging/Log;

    sget-object p2, Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager;->Companion:Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager$Companion;

    invoke-static {p2}, Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager$Companion;->access$getTAG$p(Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager$Companion;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "TAG"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Uri is null or blank for the fetchImage method."

    invoke-virtual {p1, p2, v0}, Lcom/amazon/kindle/inapp/notifications/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    monitor-exit p0

    return-void

    .line 38
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager;->imageCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 40
    invoke-interface {p2, p1, v0}, Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadListener;->onCompletion(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    monitor-exit p0

    return-void

    .line 44
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager;->trackingMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 46
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    monitor-exit p0

    return-void

    .line 49
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager;->trackingMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadListener;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object p2, p0, Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager;->downloadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager$ImageDownloadRunnable;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager$ImageDownloadRunnable;-><init>(Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 53
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final getImageDownloadUtil()Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadUtil;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager;->imageDownloadUtil:Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadUtil;

    return-object v0
.end method

.method public final getNetworkUtil()Lcom/amazon/kindle/inapp/notifications/util/NetworkConnectionUtil;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager;->networkUtil:Lcom/amazon/kindle/inapp/notifications/util/NetworkConnectionUtil;

    return-object v0
.end method
