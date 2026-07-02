.class public Lcom/amazon/kedu/flashcards/whispersync/WhispersyncDeckController;
.super Ljava/lang/Object;
.source "WhispersyncDeckController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.kedu.flashcards.whispersync.WhispersyncDeckController"


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
.method public declared-synchronized deleteDeck(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 21
    :try_start_0
    new-instance v0, Lcom/amazon/kedu/flashcards/whispersync/SyncableDecks;

    invoke-direct {v0, p2}, Lcom/amazon/kedu/flashcards/whispersync/SyncableDecks;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/amazon/kedu/flashcards/whispersync/SyncableDecks;->removeDeck(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;)V

    .line 26
    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/whispersync/SyncableDecks;->flush()V

    .line 28
    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/models/DeckModel;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/amazon/kedu/flashcards/whispersync/SyncableCards;->deleteDeck(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/amazon/device/sync/SyncableDeletedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 32
    :catch_0
    :try_start_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not delete deck "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/models/DeckModel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 34
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getDecksForBook(Ljava/lang/String;Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$WhisperSyncBookLoadHandler;)V
    .locals 2

    monitor-enter p0

    .line 38
    :try_start_0
    new-instance v0, Lcom/amazon/kedu/flashcards/whispersync/SyncableDecks;

    invoke-direct {v0, p1}, Lcom/amazon/kedu/flashcards/whispersync/SyncableDecks;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/whispersync/SyncableDecks;->getDecks()Ljava/util/LinkedList;

    move-result-object p1

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/amazon/kedu/flashcards/whispersync/WhispersyncDeckController$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/amazon/kedu/flashcards/whispersync/WhispersyncDeckController$1;-><init>(Lcom/amazon/kedu/flashcards/whispersync/WhispersyncDeckController;Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$WhisperSyncBookLoadHandler;Ljava/util/LinkedList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized saveDeckAsync(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;Ljava/lang/String;Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$WhisperSyncDeckSaveHandler;Ljava/lang/Runnable;)V
    .locals 2

    monitor-enter p0

    .line 55
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not save deck "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/models/DeckModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    new-instance v0, Lcom/amazon/kedu/flashcards/whispersync/SyncableDecks;

    invoke-direct {v0, p2}, Lcom/amazon/kedu/flashcards/whispersync/SyncableDecks;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/amazon/kedu/flashcards/whispersync/SyncableDecks;->addDeck(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;)V

    .line 61
    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/whispersync/SyncableDecks;->flush()V

    if-eqz p3, :cond_0

    .line 65
    invoke-interface {p3, p1}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$WhisperSyncDeckSaveHandler;->onDeckSaved(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;)V

    :cond_0
    if-eqz p4, :cond_1

    .line 70
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p1, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel$IncompleteDeckJSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/amazon/device/sync/SyncableDeletedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    :catch_0
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
