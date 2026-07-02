.class Lcom/audible/application/stats/StatsManager$2;
.super Ljava/lang/Object;
.source "StatsManager.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/application/stats/StatsManager;-><init>(Landroid/content/Context;Lcom/audible/application/stats/util/IHttpClientManager;Lcom/audible/application/stats/util/IConnectivityManager;Lcom/audible/application/stats/util/IStatsDemoManager;Ljava/net/URI;Ljava/io/File;Lcom/audible/application/stats/storage/IStatsCachedUploadRepository;Lcom/audible/application/stats/storage/IBadgeMetadataRepository;Lcom/audible/application/stats/storage/ICustomerStatsRepository;Lcom/audible/application/stats/util/IStatsNotificationManager;Lcom/audible/application/stats/util/IStatsBadgeImageCallback;Lcom/audible/application/stats/util/IStatsCalendarManager;Ljava/util/concurrent/ExecutorService;Ljava/lang/Integer;Lcom/audible/application/stats/integration/StoreType;Ljava/lang/Boolean;Lcom/audible/application/stats/util/IStatsPositionTracker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/audible/application/stats/StatsManager;)V
    .locals 0

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 301
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "audible-android-stats-thread-dispatch-monitor"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method
