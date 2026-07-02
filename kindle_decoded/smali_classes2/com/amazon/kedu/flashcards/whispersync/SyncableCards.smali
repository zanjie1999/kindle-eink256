.class Lcom/amazon/kedu/flashcards/whispersync/SyncableCards;
.super Ljava/lang/Object;
.source "SyncableCards.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.kedu.flashcards.whispersync.SyncableCards"


# instance fields
.field private final cardsDataMap:Lcom/amazon/device/sync/SyncableStringMap;

.field private final cardsOrderingDataMap:Lcom/amazon/device/sync/SyncableStringMap;

.field private final cardsQuizDataMap:Lcom/amazon/device/sync/SyncableStringMap;

.field private final deckId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    :try_start_0
    invoke-static {}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->getInstance()Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->getCardsDataStore()Ljava/util/concurrent/Future;

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
    sget-object v2, Lcom/amazon/kedu/flashcards/whispersync/SyncableCards;->TAG:Ljava/lang/String;

    const-string v3, "Failed getting cards data store, "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v0

    .line 41
    :goto_1
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/whispersync/SyncableCards;->deckId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cards4_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/device/sync/SyncableDataStore;->openOrCreateStringMap(Ljava/lang/String;)Lcom/amazon/device/sync/SyncableStringMap;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/SyncableCards;->cardsDataMap:Lcom/amazon/device/sync/SyncableStringMap;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CardQuizData4_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/device/sync/SyncableDataStore;->openOrCreateStringMap(Ljava/lang/String;)Lcom/amazon/device/sync/SyncableStringMap;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/SyncableCards;->cardsQuizDataMap:Lcom/amazon/device/sync/SyncableStringMap;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CardOrdering4_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazon/device/sync/SyncableDataStore;->openOrCreateStringMap(Ljava/lang/String;)Lcom/amazon/device/sync/SyncableStringMap;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kedu/flashcards/whispersync/SyncableCards;->cardsOrderingDataMap:Lcom/amazon/device/sync/SyncableStringMap;

    goto :goto_2

    .line 50
    :cond_0
    iput-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/SyncableCards;->cardsDataMap:Lcom/amazon/device/sync/SyncableStringMap;

    .line 51
    iput-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/SyncableCards;->cardsQuizDataMap:Lcom/amazon/device/sync/SyncableStringMap;

    .line 52
    iput-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/SyncableCards;->cardsOrderingDataMap:Lcom/amazon/device/sync/SyncableStringMap;

    :goto_2
    return-void
.end method

.method public static deleteDeck(Ljava/lang/String;)V
    .locals 3

    .line 59
    :try_start_0
    invoke-static {}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->getInstance()Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->getCardsDataStore()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/sync/SyncableDataStore;

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cards4_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/sync/SyncableDataStore;->deleteMap(Ljava/lang/String;)V

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CardQuizData4_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/sync/SyncableDataStore;->deleteMap(Ljava/lang/String;)V

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CardOrdering4_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/amazon/device/sync/SyncableDataStore;->deleteMap(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 66
    :goto_0
    sget-object v0, Lcom/amazon/kedu/flashcards/whispersync/SyncableCards;->TAG:Ljava/lang/String;

    const-string v1, "Failed getting cards data store, "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method


# virtual methods
.method public fetch()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/device/sync/SyncableDeletedException;
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/SyncableCards;->cardsDataMap:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-virtual {v0}, Lcom/amazon/device/sync/SyncableStringMap;->fetch()V

    .line 204
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/SyncableCards;->cardsQuizDataMap:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-virtual {v0}, Lcom/amazon/device/sync/SyncableStringMap;->fetch()V

    .line 205
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/SyncableCards;->cardsOrderingDataMap:Lcom/amazon/device/sync/SyncableStringMap;

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

    .line 72
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/SyncableCards;->cardsDataMap:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-virtual {v0}, Lcom/amazon/device/sync/SyncableStringMap;->flush()V

    .line 73
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/SyncableCards;->cardsQuizDataMap:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-virtual {v0}, Lcom/amazon/device/sync/SyncableStringMap;->flush()V

    .line 74
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/SyncableCards;->cardsOrderingDataMap:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-virtual {v0}, Lcom/amazon/device/sync/SyncableStringMap;->flush()V

    return-void
.end method

.method public getFlashCards()Ljava/util/LinkedList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;",
            ">;"
        }
    .end annotation

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 146
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/whispersync/SyncableCards;->cardsDataMap:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-virtual {v1}, Lcom/amazon/device/sync/SyncableStringMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 148
    iget-object v3, p0, Lcom/amazon/kedu/flashcards/whispersync/SyncableCards;->cardsDataMap:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-virtual {v3, v2}, Lcom/amazon/device/sync/SyncableStringMap;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 152
    :try_start_0
    new-instance v4, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    invoke-direct {v4, v2}, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;-><init>(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v4, v3}, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;->setBaseDataJSON(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/amazon/kedu/flashcards/data/PositionConversionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 158
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsPlugin;->getSdkRef()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v3

    sget-object v4, Lcom/amazon/kedu/flashcards/whispersync/SyncableCards;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/amazon/kedu/flashcards/data/PositionConversionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/whispersync/SyncableCards;->cardsQuizDataMap:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-virtual {v1}, Lcom/amazon/device/sync/SyncableStringMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 164
    iget-object v3, p0, Lcom/amazon/kedu/flashcards/whispersync/SyncableCards;->cardsQuizDataMap:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-virtual {v3, v2}, Lcom/amazon/device/sync/SyncableStringMap;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 167
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 169
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    goto :goto_2

    .line 173
    :cond_1
    new-instance v4, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    invoke-direct {v4, v2}, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v4

    .line 177
    :goto_2
    invoke-virtual {v2, v3}, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;->setQuizDataJSON(Ljava/lang/String;)V

    goto :goto_1

    .line 180
    :cond_2
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/whispersync/SyncableCards;->cardsOrderingDataMap:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-virtual {v1}, Lcom/amazon/device/sync/SyncableStringMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 182
    iget-object v3, p0, Lcom/amazon/kedu/flashcards/whispersync/SyncableCards;->cardsOrderingDataMap:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-virtual {v3, v2}, Lcom/amazon/device/sync/SyncableStringMap;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 185
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 187
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    goto :goto_4

    .line 191
    :cond_3
    new-instance v4, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    invoke-direct {v4, v2}, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;-><init>(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v4

    .line 195
    :goto_4
    invoke-virtual {v2, v3}, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;->setOrderingDataJSON(Ljava/lang/String;)V

    goto :goto_3

    .line 198
    :cond_4
    new-instance v1, Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public removeCard(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;)V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/SyncableCards;->cardsDataMap:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/models/CardModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/sync/SyncableStringMap;->remove(Ljava/lang/Object;)Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/SyncableCards;->cardsQuizDataMap:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/models/CardModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/sync/SyncableStringMap;->remove(Ljava/lang/Object;)Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/SyncableCards;->cardsOrderingDataMap:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/models/CardModel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/device/sync/SyncableStringMap;->remove(Ljava/lang/Object;)Ljava/lang/String;

    return-void
.end method

.method public saveCard(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel$IncompleteCardJSONException;,
            Lcom/amazon/kedu/flashcards/data/PositionConversionException;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/SyncableCards;->cardsDataMap:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/models/CardModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;->getBaseDataJSON()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/sync/SyncableStringMap;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/SyncableCards;->cardsQuizDataMap:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/models/CardModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;->getQuizDataJSON()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/sync/SyncableStringMap;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/SyncableCards;->cardsOrderingDataMap:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/models/CardModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;->getOrderingDataJSON()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/amazon/device/sync/SyncableStringMap;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public startDownload()V
    .locals 3

    .line 94
    invoke-static {}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->getInstance()Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kedu/flashcards/whispersync/SyncableCards;->cardsDataMap:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-virtual {v1}, Lcom/amazon/device/sync/SyncableStringMap;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kedu/flashcards/whispersync/SyncableCards;->cardsDataMap:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-virtual {v2}, Lcom/amazon/device/sync/SyncableStringMap;->download()Ljava/util/concurrent/Future;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->putSyncingDatasetFuture(Ljava/lang/String;Ljava/util/concurrent/Future;)V

    .line 95
    invoke-static {}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->getInstance()Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kedu/flashcards/whispersync/SyncableCards;->cardsQuizDataMap:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-virtual {v1}, Lcom/amazon/device/sync/SyncableStringMap;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kedu/flashcards/whispersync/SyncableCards;->cardsQuizDataMap:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-virtual {v2}, Lcom/amazon/device/sync/SyncableStringMap;->download()Ljava/util/concurrent/Future;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->putSyncingDatasetFuture(Ljava/lang/String;Ljava/util/concurrent/Future;)V

    .line 96
    invoke-static {}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->getInstance()Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kedu/flashcards/whispersync/SyncableCards;->cardsOrderingDataMap:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-virtual {v1}, Lcom/amazon/device/sync/SyncableStringMap;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kedu/flashcards/whispersync/SyncableCards;->cardsOrderingDataMap:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-virtual {v2}, Lcom/amazon/device/sync/SyncableStringMap;->download()Ljava/util/concurrent/Future;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->putSyncingDatasetFuture(Ljava/lang/String;Ljava/util/concurrent/Future;)V

    return-void
.end method

.method public waitForDownload()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Lcom/amazon/device/sync/SyncableDeletedException;
        }
    .end annotation

    .line 108
    invoke-static {}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->getInstance()Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kedu/flashcards/whispersync/SyncableCards;->cardsDataMap:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-virtual {v1}, Lcom/amazon/device/sync/SyncableStringMap;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->getSyncingDatasetFuture(Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 109
    invoke-static {}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->getInstance()Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kedu/flashcards/whispersync/SyncableCards;->cardsQuizDataMap:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-virtual {v2}, Lcom/amazon/device/sync/SyncableStringMap;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->getSyncingDatasetFuture(Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 110
    invoke-static {}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->getInstance()Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kedu/flashcards/whispersync/SyncableCards;->cardsOrderingDataMap:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-virtual {v3}, Lcom/amazon/device/sync/SyncableStringMap;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->getSyncingDatasetFuture(Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v2

    if-eqz v0, :cond_1

    .line 114
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    sget-object v0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;->CARDS_FOR_DECK_MAIN:Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

    invoke-static {v0}, Lcom/amazon/kedu/flashcards/metrics/MetricManager;->reportMetricEvent(Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;)V

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/SyncableCards;->cardsDataMap:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-virtual {v0}, Lcom/amazon/device/sync/SyncableStringMap;->fetch()V

    :cond_1
    if-eqz v1, :cond_3

    .line 123
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 126
    sget-object v0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;->CARDS_FOR_DECK_QUIZ:Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

    invoke-static {v0}, Lcom/amazon/kedu/flashcards/metrics/MetricManager;->reportMetricEvent(Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;)V

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/SyncableCards;->cardsQuizDataMap:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-virtual {v0}, Lcom/amazon/device/sync/SyncableStringMap;->fetch()V

    :cond_3
    if-eqz v2, :cond_5

    .line 132
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    .line 135
    sget-object v0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;->CARDS_FOR_DECK_ORDERING:Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

    invoke-static {v0}, Lcom/amazon/kedu/flashcards/metrics/MetricManager;->reportMetricEvent(Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;)V

    .line 137
    :cond_4
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/SyncableCards;->cardsOrderingDataMap:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-virtual {v0}, Lcom/amazon/device/sync/SyncableStringMap;->fetch()V

    .line 139
    :cond_5
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/SyncableCards;->deckId:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kedu/flashcards/metrics/MetricManager;->deckDownloadFinished(Ljava/lang/String;)V

    return-void
.end method

.method public waitForUpload()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/SyncableCards;->cardsDataMap:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-virtual {v0}, Lcom/amazon/device/sync/SyncableStringMap;->upload()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/SyncableCards;->cardsQuizDataMap:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-virtual {v0}, Lcom/amazon/device/sync/SyncableStringMap;->upload()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/SyncableCards;->cardsOrderingDataMap:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-virtual {v0}, Lcom/amazon/device/sync/SyncableStringMap;->upload()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    return-void
.end method
