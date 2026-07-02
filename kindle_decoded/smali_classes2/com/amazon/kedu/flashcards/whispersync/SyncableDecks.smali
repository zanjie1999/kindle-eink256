.class Lcom/amazon/kedu/flashcards/whispersync/SyncableDecks;
.super Ljava/lang/Object;
.source "SyncableDecks.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.kedu.flashcards.whispersync.SyncableDecks"


# instance fields
.field private final bookId:Ljava/lang/String;

.field private final deckModifierDataMap:Lcom/amazon/device/sync/SyncableStringMap;

.field private final decksDataMap:Lcom/amazon/device/sync/SyncableStringMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/whispersync/SyncableDecks;->bookId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 34
    :try_start_0
    invoke-static {}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->getInstance()Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->getDecksDataStore()Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/device/sync/SyncableDataStore;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 38
    :goto_0
    sget-object v2, Lcom/amazon/kedu/flashcards/whispersync/SyncableDecks;->TAG:Ljava/lang/String;

    const-string v3, "Failed getting decks data store, "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_0

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decks4_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/device/sync/SyncableDataStore;->openOrCreateStringMap(Ljava/lang/String;)Lcom/amazon/device/sync/SyncableStringMap;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/SyncableDecks;->decksDataMap:Lcom/amazon/device/sync/SyncableStringMap;

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeckModifiers4_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazon/device/sync/SyncableDataStore;->openOrCreateStringMap(Ljava/lang/String;)Lcom/amazon/device/sync/SyncableStringMap;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kedu/flashcards/whispersync/SyncableDecks;->deckModifierDataMap:Lcom/amazon/device/sync/SyncableStringMap;

    goto :goto_2

    .line 48
    :cond_0
    iput-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/SyncableDecks;->decksDataMap:Lcom/amazon/device/sync/SyncableStringMap;

    .line 49
    iput-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/SyncableDecks;->deckModifierDataMap:Lcom/amazon/device/sync/SyncableStringMap;

    :goto_2
    return-void
.end method


# virtual methods
.method public addDeck(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel$IncompleteDeckJSONException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 55
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/whispersync/SyncableDecks;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/SyncableDecks;->decksDataMap:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/models/DeckModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;->getBaseDataJSON()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/sync/SyncableStringMap;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/SyncableDecks;->deckModifierDataMap:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/models/DeckModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;->getModifierDataJSON()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/amazon/device/sync/SyncableStringMap;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public fetch()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/device/sync/SyncableDeletedException;
        }
    .end annotation

    .line 142
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/whispersync/SyncableDecks;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/SyncableDecks;->decksDataMap:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-virtual {v0}, Lcom/amazon/device/sync/SyncableStringMap;->fetch()V

    .line 148
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/SyncableDecks;->deckModifierDataMap:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-virtual {v0}, Lcom/amazon/device/sync/SyncableStringMap;->fetch()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/device/sync/SyncableDeletedException;
        }
    .end annotation

    .line 153
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/whispersync/SyncableDecks;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/SyncableDecks;->decksDataMap:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-virtual {v0}, Lcom/amazon/device/sync/SyncableStringMap;->flush()V

    .line 159
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/SyncableDecks;->deckModifierDataMap:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-virtual {v0}, Lcom/amazon/device/sync/SyncableStringMap;->flush()V

    return-void
.end method

.method public getDeckIds()Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 95
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/whispersync/SyncableDecks;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0

    .line 100
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/amazon/kedu/flashcards/whispersync/SyncableDecks;->decksDataMap:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-virtual {v1}, Lcom/amazon/device/sync/SyncableStringMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 101
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/whispersync/SyncableDecks;->deckModifierDataMap:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-virtual {v1}, Lcom/amazon/device/sync/SyncableStringMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getDecks()Ljava/util/LinkedList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;",
            ">;"
        }
    .end annotation

    .line 118
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 120
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/whispersync/SyncableDecks;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/whispersync/SyncableDecks;->decksDataMap:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-virtual {v1}, Lcom/amazon/device/sync/SyncableStringMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 126
    iget-object v2, p0, Lcom/amazon/kedu/flashcards/whispersync/SyncableDecks;->deckModifierDataMap:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-virtual {v2}, Lcom/amazon/device/sync/SyncableStringMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 128
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 130
    iget-object v3, p0, Lcom/amazon/kedu/flashcards/whispersync/SyncableDecks;->decksDataMap:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-virtual {v3, v2}, Lcom/amazon/device/sync/SyncableStringMap;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 131
    iget-object v4, p0, Lcom/amazon/kedu/flashcards/whispersync/SyncableDecks;->deckModifierDataMap:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-virtual {v4, v2}, Lcom/amazon/device/sync/SyncableStringMap;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 132
    new-instance v5, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    invoke-direct {v5, v2}, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v5, v3, v4}, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;->setDataJSONs(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/SyncableDecks;->decksDataMap:Lcom/amazon/device/sync/SyncableStringMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/SyncableDecks;->deckModifierDataMap:Lcom/amazon/device/sync/SyncableStringMap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeDeck(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;)V
    .locals 2

    .line 66
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/whispersync/SyncableDecks;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/SyncableDecks;->decksDataMap:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/models/DeckModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/sync/SyncableStringMap;->remove(Ljava/lang/Object;)Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/SyncableDecks;->deckModifierDataMap:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/models/DeckModel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/device/sync/SyncableStringMap;->remove(Ljava/lang/Object;)Ljava/lang/String;

    return-void
.end method

.method public upload()V
    .locals 1

    .line 107
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/whispersync/SyncableDecks;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/SyncableDecks;->decksDataMap:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-virtual {v0}, Lcom/amazon/device/sync/SyncableStringMap;->upload()Ljava/util/concurrent/Future;

    .line 113
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/SyncableDecks;->deckModifierDataMap:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-virtual {v0}, Lcom/amazon/device/sync/SyncableStringMap;->upload()Ljava/util/concurrent/Future;

    return-void
.end method

.method public waitForDownload()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/SyncableDecks;->decksDataMap:Lcom/amazon/device/sync/SyncableStringMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0}, Lcom/amazon/device/sync/SyncableStringMap;->download()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 81
    iget-object v2, p0, Lcom/amazon/kedu/flashcards/whispersync/SyncableDecks;->deckModifierDataMap:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-virtual {v2}, Lcom/amazon/device/sync/SyncableStringMap;->download()Ljava/util/concurrent/Future;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x1

    :cond_0
    if-nez v1, :cond_1

    .line 87
    sget-object v0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;->DECKS_FOR_ASIN_MAIN:Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

    invoke-static {v0}, Lcom/amazon/kedu/flashcards/metrics/MetricManager;->reportMetricEvent(Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;)V

    :cond_1
    return v1
.end method
