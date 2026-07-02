.class public Lcom/amazon/kedu/flashcards/whispersync/WhispersyncBookController;
.super Ljava/lang/Object;
.source "WhispersyncBookController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.kedu.flashcards.whispersync.WhispersyncBookController"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized downloadForBook(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 21
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not download data for book "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :try_start_1
    new-instance v0, Lcom/amazon/kedu/flashcards/whispersync/SyncableDecks;

    invoke-direct {v0, p1}, Lcom/amazon/kedu/flashcards/whispersync/SyncableDecks;-><init>(Ljava/lang/String;)V

    .line 26
    sget-object p1, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;->SYNCHRONIZE_ASIN:Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/metrics/MetricManager;->startMetricTimer(Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;)V

    .line 27
    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/whispersync/SyncableDecks;->waitForDownload()Z

    move-result p1

    .line 28
    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/whispersync/SyncableDecks;->fetch()V

    if-eqz p1, :cond_0

    .line 32
    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/whispersync/SyncableDecks;->getDeckIds()Ljava/util/HashSet;

    move-result-object p1

    .line 34
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 36
    invoke-static {v0}, Lcom/amazon/kedu/flashcards/metrics/MetricManager;->deckDownloadStarted(Ljava/lang/String;)V

    .line 37
    new-instance v1, Lcom/amazon/kedu/flashcards/whispersync/SyncableCards;

    invoke-direct {v1, v0}, Lcom/amazon/kedu/flashcards/whispersync/SyncableCards;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v1}, Lcom/amazon/kedu/flashcards/whispersync/SyncableCards;->startDownload()V

    goto :goto_0

    .line 41
    :cond_0
    sget-object p1, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;->SYNCHRONIZE_ASIN:Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/metrics/MetricManager;->stopMetricTimer(Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/amazon/device/sync/SyncableDeletedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    :catch_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized uploadForBook(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 67
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not upload data for book "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :try_start_1
    new-instance v0, Lcom/amazon/kedu/flashcards/whispersync/SyncableDecks;

    invoke-direct {v0, p1}, Lcom/amazon/kedu/flashcards/whispersync/SyncableDecks;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/whispersync/SyncableDecks;->getDeckIds()Ljava/util/HashSet;

    move-result-object p1

    .line 73
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catch_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 75
    new-instance v2, Lcom/amazon/kedu/flashcards/whispersync/SyncableCards;

    invoke-direct {v2, v1}, Lcom/amazon/kedu/flashcards/whispersync/SyncableCards;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    :try_start_2
    invoke-virtual {v2}, Lcom/amazon/kedu/flashcards/whispersync/SyncableCards;->waitForUpload()V

    .line 79
    invoke-virtual {v2}, Lcom/amazon/kedu/flashcards/whispersync/SyncableCards;->fetch()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/amazon/device/sync/SyncableDeletedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 103
    :cond_0
    :try_start_3
    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/whispersync/SyncableDecks;->upload()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 113
    :catch_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
