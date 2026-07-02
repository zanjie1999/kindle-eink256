.class public Lcom/amazon/kedu/flashcards/whispersync/WhispersyncCardController;
.super Ljava/lang/Object;
.source "WhispersyncCardController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.kedu.flashcards.whispersync.WhispersyncCardController"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static declared-synchronized flush(Lcom/amazon/kedu/flashcards/whispersync/SyncableCards;)V
    .locals 1

    const-class v0, Lcom/amazon/kedu/flashcards/whispersync/WhispersyncCardController;

    monitor-enter v0

    .line 46
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/whispersync/SyncableCards;->flush()V
    :try_end_0
    .catch Lcom/amazon/device/sync/SyncableDeletedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 52
    :catch_0
    :goto_0
    monitor-exit v0

    return-void
.end method

.method protected static declared-synchronized saveCardNoFlush(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;Lcom/amazon/kedu/flashcards/whispersync/SyncableCards;)V
    .locals 3

    const-class v0, Lcom/amazon/kedu/flashcards/whispersync/WhispersyncCardController;

    monitor-enter v0

    .line 22
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not save card "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/models/CardModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :try_start_1
    invoke-virtual {p1, p0}, Lcom/amazon/kedu/flashcards/whispersync/SyncableCards;->saveCard(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;)V
    :try_end_1
    .catch Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel$IncompleteCardJSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/amazon/kedu/flashcards/data/PositionConversionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    :catch_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public declared-synchronized deleteCard(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 56
    :try_start_0
    new-instance v0, Lcom/amazon/kedu/flashcards/whispersync/SyncableCards;

    invoke-direct {v0, p2}, Lcom/amazon/kedu/flashcards/whispersync/SyncableCards;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0, p1}, Lcom/amazon/kedu/flashcards/whispersync/SyncableCards;->removeCard(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;)V

    .line 58
    invoke-static {v0}, Lcom/amazon/kedu/flashcards/whispersync/WhispersyncCardController;->flush(Lcom/amazon/kedu/flashcards/whispersync/SyncableCards;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getFlashcardsForDeckAsync(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;",
            ">;"
        }
    .end annotation

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not download cards for deck "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    new-instance v0, Lcom/amazon/kedu/flashcards/whispersync/SyncableCards;

    invoke-direct {v0, p1}, Lcom/amazon/kedu/flashcards/whispersync/SyncableCards;-><init>(Ljava/lang/String;)V

    .line 86
    :try_start_0
    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/whispersync/SyncableCards;->waitForDownload()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/amazon/device/sync/SyncableDeletedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :catch_0
    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/whispersync/SyncableCards;->getFlashCards()Ljava/util/LinkedList;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized saveCardsAsync(Ljava/util/Collection;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 70
    :try_start_0
    new-instance v0, Lcom/amazon/kedu/flashcards/whispersync/SyncableCards;

    invoke-direct {v0, p2}, Lcom/amazon/kedu/flashcards/whispersync/SyncableCards;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    .line 74
    invoke-static {p2, v0}, Lcom/amazon/kedu/flashcards/whispersync/WhispersyncCardController;->saveCardNoFlush(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;Lcom/amazon/kedu/flashcards/whispersync/SyncableCards;)V

    goto :goto_0

    .line 76
    :cond_0
    invoke-static {v0}, Lcom/amazon/kedu/flashcards/whispersync/WhispersyncCardController;->flush(Lcom/amazon/kedu/flashcards/whispersync/SyncableCards;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
