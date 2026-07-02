.class public final Lcom/amazon/falkor/FalkorFullSync;
.super Ljava/lang/Object;
.source "FalkorFullSync.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/falkor/FalkorFullSync;

.field private static falkorFullSyncManager:Lcom/amazon/falkor/FalkorFullSyncManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/amazon/falkor/FalkorFullSync;

    invoke-direct {v0}, Lcom/amazon/falkor/FalkorFullSync;-><init>()V

    sput-object v0, Lcom/amazon/falkor/FalkorFullSync;->INSTANCE:Lcom/amazon/falkor/FalkorFullSync;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getFalkorFullSyncManager$p(Lcom/amazon/falkor/FalkorFullSync;)Lcom/amazon/falkor/FalkorFullSyncManager;
    .locals 0

    .line 21
    sget-object p0, Lcom/amazon/falkor/FalkorFullSync;->falkorFullSyncManager:Lcom/amazon/falkor/FalkorFullSyncManager;

    return-object p0
.end method


# virtual methods
.method public final initialize(Lcom/amazon/falkor/download/NewCustomerStatusDownloadManager;Lcom/amazon/falkor/download/FollowedStoriesDownloadManager;Lcom/amazon/falkor/FalkorPluginPrefs;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 2

    const-string/jumbo v0, "newCustomerDownloadManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "followedStoriesStoriesDownloadManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "falkorPrefs"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sdk"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance v0, Lcom/amazon/falkor/FalkorFullSyncManager;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/amazon/falkor/FalkorFullSyncManager;-><init>(Lcom/amazon/falkor/download/NewCustomerStatusDownloadManager;Lcom/amazon/falkor/download/FollowedStoriesDownloadManager;Lcom/amazon/falkor/FalkorPluginPrefs;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    sput-object v0, Lcom/amazon/falkor/FalkorFullSync;->falkorFullSyncManager:Lcom/amazon/falkor/FalkorFullSyncManager;

    .line 35
    invoke-interface {p4}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThreadPoolManager()Lcom/amazon/kindle/krx/thread/IThreadPoolManager;

    move-result-object p1

    sget-object p2, Lcom/amazon/falkor/FalkorFullSync$initialize$1;->INSTANCE:Lcom/amazon/falkor/FalkorFullSync$initialize$1;

    .line 37
    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x1388

    .line 35
    invoke-interface {p1, p2, v0, v1, p3}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public final onFollowedStoriesDownloadFinished(Lcom/amazon/falkor/event/FollowedStoriesDownloadFinishedEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    sget-object v0, Lcom/amazon/falkor/FalkorFullSync;->falkorFullSyncManager:Lcom/amazon/falkor/FalkorFullSyncManager;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/falkor/event/FalkorDownloadFinishedEvent;->isSuccessful()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amazon/falkor/FalkorFullSyncManager;->onFollowedStoriesDownloadFinished(Z)V

    :cond_0
    return-void
.end method

.method public final onNewCustomerStatusDownloadFinished(Lcom/amazon/falkor/event/NewCustomerStatusDownloadFinishedEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    sget-object v0, Lcom/amazon/falkor/FalkorFullSync;->falkorFullSyncManager:Lcom/amazon/falkor/FalkorFullSyncManager;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/falkor/event/FalkorDownloadFinishedEvent;->isSuccessful()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amazon/falkor/FalkorFullSyncManager;->onNewCustomerStatusDownloadFinished(Z)V

    :cond_0
    return-void
.end method
