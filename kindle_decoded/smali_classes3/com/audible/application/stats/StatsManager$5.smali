.class Lcom/audible/application/stats/StatsManager$5;
.super Ljava/lang/Object;
.source "StatsManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/application/stats/StatsManager;-><init>(Landroid/content/Context;Lcom/audible/application/stats/util/IHttpClientManager;Lcom/audible/application/stats/util/IConnectivityManager;Lcom/audible/application/stats/util/IStatsDemoManager;Ljava/net/URI;Ljava/io/File;Lcom/audible/application/stats/storage/IStatsCachedUploadRepository;Lcom/audible/application/stats/storage/IBadgeMetadataRepository;Lcom/audible/application/stats/storage/ICustomerStatsRepository;Lcom/audible/application/stats/util/IStatsNotificationManager;Lcom/audible/application/stats/util/IStatsBadgeImageCallback;Lcom/audible/application/stats/util/IStatsCalendarManager;Ljava/util/concurrent/ExecutorService;Ljava/lang/Integer;Lcom/audible/application/stats/integration/StoreType;Ljava/lang/Boolean;Lcom/audible/application/stats/util/IStatsPositionTracker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/application/stats/StatsManager;


# direct methods
.method constructor <init>(Lcom/audible/application/stats/StatsManager;)V
    .locals 0

    .line 388
    iput-object p1, p0, Lcom/audible/application/stats/StatsManager$5;->this$0:Lcom/audible/application/stats/StatsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 392
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager$5;->this$0:Lcom/audible/application/stats/StatsManager;

    invoke-virtual {v0}, Lcom/audible/application/stats/StatsManager;->fetchBadgeMetadataSynchronous()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "StatsManager mDownloadBadgeMetadataTask BadgeMetadata loaded from REMOTE SERVICE"

    .line 394
    invoke-static {v1}, Lcom/audible/application/stats/util/LogController;->d(Ljava/lang/String;)V

    .line 395
    iget-object v1, p0, Lcom/audible/application/stats/StatsManager$5;->this$0:Lcom/audible/application/stats/StatsManager;

    invoke-virtual {v1}, Lcom/audible/application/stats/StatsManager;->resetCachedBadges()V

    .line 396
    iget-object v1, p0, Lcom/audible/application/stats/StatsManager$5;->this$0:Lcom/audible/application/stats/StatsManager;

    invoke-virtual {v1}, Lcom/audible/application/stats/StatsManager;->getBadges()Ljava/util/List;

    .line 397
    iget-object v1, p0, Lcom/audible/application/stats/StatsManager$5;->this$0:Lcom/audible/application/stats/StatsManager;

    invoke-virtual {v1}, Lcom/audible/application/stats/StatsManager;->fetchBadgeIcons()Ljava/util/concurrent/FutureTask;

    .line 399
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 388
    invoke-virtual {p0}, Lcom/audible/application/stats/StatsManager$5;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
