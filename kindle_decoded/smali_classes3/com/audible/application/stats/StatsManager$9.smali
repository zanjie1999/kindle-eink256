.class Lcom/audible/application/stats/StatsManager$9;
.super Ljava/lang/Object;
.source "StatsManager.java"

# interfaces
.implements Lcom/audible/application/stats/util/IStatsDemoManager;


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

    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDemoAggregatedStatsResponse()Lcom/audible/mobile/stats/domain/AggregatedStatsResponse;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDemoBadgeIcon(Lcom/audible/mobile/stats/domain/BadgeIcon;)Ljava/io/File;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDemoBadgeMetadataResponse()Lcom/audible/mobile/stats/domain/BadgeMetadataResponse;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDemoCustomerBadgeProgressResponse()Lcom/audible/mobile/stats/domain/CustomerBadgeProgressResponse;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isRetailDemo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
