.class Lcom/audible/application/stats/StatsManager$8;
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
        "Ljava/util/List<",
        "Ljava/io/File;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/application/stats/StatsManager;


# direct methods
.method constructor <init>(Lcom/audible/application/stats/StatsManager;)V
    .locals 0

    .line 419
    iput-object p1, p0, Lcom/audible/application/stats/StatsManager$8;->this$0:Lcom/audible/application/stats/StatsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 419
    invoke-virtual {p0}, Lcom/audible/application/stats/StatsManager$8;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 423
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 424
    iget-object v1, p0, Lcom/audible/application/stats/StatsManager$8;->this$0:Lcom/audible/application/stats/StatsManager;

    iget-object v1, v1, Lcom/audible/application/stats/StatsManager;->mBadgeMetadataRepository:Lcom/audible/application/stats/storage/IBadgeMetadataRepository;

    invoke-interface {v1}, Lcom/audible/application/stats/storage/IBadgeMetadataRepository;->getBadgeMetadata()Ljava/util/List;

    move-result-object v1

    .line 428
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/audible/mobile/stats/domain/BadgeMetadata;

    .line 429
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/audible/application/stats/StatsManager$8;->this$0:Lcom/audible/application/stats/StatsManager;

    invoke-static {v5}, Lcom/audible/application/stats/StatsManager;->access$900(Lcom/audible/application/stats/StatsManager;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/audible/mobile/stats/domain/BadgeMetadata;->getBadgeImageId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 430
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    const-string v5, "StatsManager error during mBadgeImageCallback.downloadFinished, "

    const-wide/16 v6, 0x0

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v8, v3, v6

    if-nez v8, :cond_2

    .line 431
    :cond_1
    iget-object v3, p0, Lcom/audible/application/stats/StatsManager$8;->this$0:Lcom/audible/application/stats/StatsManager;

    invoke-virtual {v3, v2}, Lcom/audible/application/stats/StatsManager;->fetchBadgeIconSynchronous(Lcom/audible/mobile/stats/domain/BadgeIcon;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 433
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    iget-object v4, p0, Lcom/audible/application/stats/StatsManager$8;->this$0:Lcom/audible/application/stats/StatsManager;

    invoke-virtual {v4}, Lcom/audible/application/stats/StatsManager;->resetCachedBadges()V

    .line 435
    iget-object v4, p0, Lcom/audible/application/stats/StatsManager$8;->this$0:Lcom/audible/application/stats/StatsManager;

    invoke-static {v4}, Lcom/audible/application/stats/StatsManager;->access$1000(Lcom/audible/application/stats/StatsManager;)V

    .line 437
    :try_start_0
    iget-object v4, p0, Lcom/audible/application/stats/StatsManager$8;->this$0:Lcom/audible/application/stats/StatsManager;

    invoke-static {v4}, Lcom/audible/application/stats/StatsManager;->access$1100(Lcom/audible/application/stats/StatsManager;)Lcom/audible/application/stats/util/IStatsBadgeImageCallback;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/audible/application/stats/util/IStatsBadgeImageCallback;->downloadFinished(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 439
    invoke-static {v5, v3}, Lcom/audible/application/stats/util/LogController;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 443
    :cond_2
    :goto_0
    invoke-virtual {v2}, Lcom/audible/mobile/stats/domain/BadgeMetadata;->getLevelMetadata()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/audible/mobile/stats/domain/LevelMetadata;

    .line 444
    new-instance v4, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/audible/application/stats/StatsManager$8;->this$0:Lcom/audible/application/stats/StatsManager;

    invoke-static {v9}, Lcom/audible/application/stats/StatsManager;->access$900(Lcom/audible/application/stats/StatsManager;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/audible/mobile/stats/domain/LevelMetadata;->getBadgeImageId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 445
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v4, v8, v6

    if-nez v4, :cond_3

    .line 446
    :cond_4
    iget-object v4, p0, Lcom/audible/application/stats/StatsManager$8;->this$0:Lcom/audible/application/stats/StatsManager;

    invoke-virtual {v4, v3}, Lcom/audible/application/stats/StatsManager;->fetchBadgeIconSynchronous(Lcom/audible/mobile/stats/domain/BadgeIcon;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 448
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    iget-object v4, p0, Lcom/audible/application/stats/StatsManager$8;->this$0:Lcom/audible/application/stats/StatsManager;

    invoke-virtual {v4}, Lcom/audible/application/stats/StatsManager;->resetCachedBadges()V

    .line 450
    iget-object v4, p0, Lcom/audible/application/stats/StatsManager$8;->this$0:Lcom/audible/application/stats/StatsManager;

    invoke-static {v4}, Lcom/audible/application/stats/StatsManager;->access$1200(Lcom/audible/application/stats/StatsManager;)V

    .line 452
    :try_start_1
    iget-object v4, p0, Lcom/audible/application/stats/StatsManager$8;->this$0:Lcom/audible/application/stats/StatsManager;

    invoke-static {v4}, Lcom/audible/application/stats/StatsManager;->access$1100(Lcom/audible/application/stats/StatsManager;)Lcom/audible/application/stats/util/IStatsBadgeImageCallback;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/audible/application/stats/util/IStatsBadgeImageCallback;->downloadFinished(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    .line 454
    invoke-static {v5, v3}, Lcom/audible/application/stats/util/LogController;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 460
    :cond_5
    iget-object v1, p0, Lcom/audible/application/stats/StatsManager$8;->this$0:Lcom/audible/application/stats/StatsManager;

    invoke-virtual {v1}, Ljava/util/Observable;->notifyObservers()V

    return-object v0
.end method
