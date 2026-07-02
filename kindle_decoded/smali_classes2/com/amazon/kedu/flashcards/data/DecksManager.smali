.class public final Lcom/amazon/kedu/flashcards/data/DecksManager;
.super Ljava/lang/Object;
.source "DecksManager.java"

# interfaces
.implements Lcom/amazon/kedu/flashcards/events/EventHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kedu/flashcards/data/DecksManager$LoadableDeck;
    }
.end annotation


# static fields
.field private static manager:Lcom/amazon/kedu/flashcards/data/DecksManager;

.field private static wsController:Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;


# instance fields
.field private activeBookId:Ljava/lang/String;

.field private bookLoadHandler:Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$WhisperSyncBookLoadHandler;

.field private cardSaveCalls:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private cardUpdatedQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/amazon/kedu/flashcards/events/ICardDataChangedEvent;",
            ">;"
        }
    .end annotation
.end field

.field private currentSmallestSortIndex:Ljava/lang/Double;

.field private deckLoadHandler:Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$WhisperSyncDeckLoadHandler;

.field private deckSaveCalls:Ljava/util/concurrent/ConcurrentSkipListSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListSet<",
            "Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;",
            ">;"
        }
    .end annotation
.end field

.field private deckUpdateQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/amazon/kedu/flashcards/events/IDeckDataChangedEvent;",
            ">;"
        }
    .end annotation
.end field

.field private decksFetched:Z

.field private isWhispersyncUpdatePosted:Z

.field private loadableDecks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kedu/flashcards/data/DecksManager$LoadableDeck;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    invoke-static {}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->getInstance()Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;

    move-result-object v0

    sput-object v0, Lcom/amazon/kedu/flashcards/data/DecksManager;->wsController:Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;

    .line 46
    new-instance v0, Lcom/amazon/kedu/flashcards/data/DecksManager;

    invoke-direct {v0}, Lcom/amazon/kedu/flashcards/data/DecksManager;-><init>()V

    sput-object v0, Lcom/amazon/kedu/flashcards/data/DecksManager;->manager:Lcom/amazon/kedu/flashcards/data/DecksManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/data/DecksManager;->loadableDecks:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/data/DecksManager;->deckUpdateQueue:Ljava/util/Queue;

    .line 50
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/data/DecksManager;->cardUpdatedQueue:Ljava/util/Queue;

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/amazon/kedu/flashcards/data/DecksManager;->isWhispersyncUpdatePosted:Z

    .line 56
    new-instance v0, Lcom/amazon/kedu/flashcards/data/DecksManager$1;

    invoke-direct {v0, p0}, Lcom/amazon/kedu/flashcards/data/DecksManager$1;-><init>(Lcom/amazon/kedu/flashcards/data/DecksManager;)V

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/data/DecksManager;->deckLoadHandler:Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$WhisperSyncDeckLoadHandler;

    .line 69
    new-instance v0, Lcom/amazon/kedu/flashcards/data/DecksManager$2;

    invoke-direct {v0, p0}, Lcom/amazon/kedu/flashcards/data/DecksManager$2;-><init>(Lcom/amazon/kedu/flashcards/data/DecksManager;)V

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/data/DecksManager;->bookLoadHandler:Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$WhisperSyncBookLoadHandler;

    .line 95
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getInstance()Lcom/amazon/kedu/flashcards/FlashcardsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getEventBus()Lcom/amazon/kedu/flashcards/events/EventBus;

    move-result-object v0

    const-class v1, Lcom/amazon/kedu/flashcards/events/DeckUpdatedEvent;

    invoke-virtual {v0, v1, p0}, Lcom/amazon/kedu/flashcards/events/EventBus;->subscribe(Ljava/lang/Class;Lcom/amazon/kedu/flashcards/events/EventHandler;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kedu/flashcards/data/DecksManager;)Ljava/util/Map;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/amazon/kedu/flashcards/data/DecksManager;->loadableDecks:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/amazon/kedu/flashcards/data/DecksManager;)Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/amazon/kedu/flashcards/data/DecksManager;->activeBookId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kedu/flashcards/data/DecksManager;)Ljava/lang/Double;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/amazon/kedu/flashcards/data/DecksManager;->currentSmallestSortIndex:Ljava/lang/Double;

    return-object p0
.end method

.method static synthetic access$202(Lcom/amazon/kedu/flashcards/data/DecksManager;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/data/DecksManager;->currentSmallestSortIndex:Ljava/lang/Double;

    return-object p1
.end method

.method static synthetic access$300(Lcom/amazon/kedu/flashcards/data/DecksManager;)Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$WhisperSyncDeckLoadHandler;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/amazon/kedu/flashcards/data/DecksManager;->deckLoadHandler:Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$WhisperSyncDeckLoadHandler;

    return-object p0
.end method

.method static synthetic access$400()Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;
    .locals 1

    .line 43
    sget-object v0, Lcom/amazon/kedu/flashcards/data/DecksManager;->wsController:Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;

    return-object v0
.end method

.method static synthetic access$502(Lcom/amazon/kedu/flashcards/data/DecksManager;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/amazon/kedu/flashcards/data/DecksManager;->decksFetched:Z

    return p1
.end method

.method static synthetic access$600(Lcom/amazon/kedu/flashcards/data/DecksManager;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/data/DecksManager;->flushUpdateQueues()V

    return-void
.end method

.method static synthetic access$702(Lcom/amazon/kedu/flashcards/data/DecksManager;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/amazon/kedu/flashcards/data/DecksManager;->isWhispersyncUpdatePosted:Z

    return p1
.end method

.method static synthetic access$800(Lcom/amazon/kedu/flashcards/data/DecksManager;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/amazon/kedu/flashcards/data/DecksManager;->cardSaveCalls:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$900(Lcom/amazon/kedu/flashcards/data/DecksManager;)Ljava/util/concurrent/ConcurrentSkipListSet;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/amazon/kedu/flashcards/data/DecksManager;->deckSaveCalls:Ljava/util/concurrent/ConcurrentSkipListSet;

    return-object p0
.end method

.method private flushUpdateQueues()V
    .locals 1

    .line 233
    :goto_0
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/data/DecksManager;->cardUpdatedQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/data/DecksManager;->cardUpdatedQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kedu/flashcards/events/ICardDataChangedEvent;

    invoke-virtual {p0, v0}, Lcom/amazon/kedu/flashcards/data/DecksManager;->onCardDataChanged(Lcom/amazon/kedu/flashcards/events/ICardDataChangedEvent;)V

    goto :goto_0

    .line 238
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/data/DecksManager;->deckUpdateQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/data/DecksManager;->deckUpdateQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kedu/flashcards/events/IDeckDataChangedEvent;

    invoke-virtual {p0, v0}, Lcom/amazon/kedu/flashcards/data/DecksManager;->onDeckDataChanged(Lcom/amazon/kedu/flashcards/events/IDeckDataChangedEvent;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static getInstance()Lcom/amazon/kedu/flashcards/data/DecksManager;
    .locals 1

    .line 100
    sget-object v0, Lcom/amazon/kedu/flashcards/data/DecksManager;->manager:Lcom/amazon/kedu/flashcards/data/DecksManager;

    return-object v0
.end method

.method private reset()V
    .locals 1

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lcom/amazon/kedu/flashcards/data/DecksManager;->decksFetched:Z

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/data/DecksManager;->loadableDecks:Ljava/util/Map;

    .line 107
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/data/DecksManager;->cardSaveCalls:Ljava/util/concurrent/ConcurrentHashMap;

    .line 108
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/data/DecksManager;->deckSaveCalls:Ljava/util/concurrent/ConcurrentSkipListSet;

    return-void
.end method

.method private updateWhispersyncData()V
    .locals 2

    .line 201
    iget-boolean v0, p0, Lcom/amazon/kedu/flashcards/data/DecksManager;->isWhispersyncUpdatePosted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 203
    iput-boolean v0, p0, Lcom/amazon/kedu/flashcards/data/DecksManager;->isWhispersyncUpdatePosted:Z

    .line 205
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/amazon/kedu/flashcards/data/DecksManager$3;

    invoke-direct {v1, p0}, Lcom/amazon/kedu/flashcards/data/DecksManager$3;-><init>(Lcom/amazon/kedu/flashcards/data/DecksManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public areCardsLoaded(Ljava/lang/String;)Z
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/data/DecksManager;->loadableDecks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kedu/flashcards/data/DecksManager;->loadableDecks:Ljava/util/Map;

    .line 285
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kedu/flashcards/data/DecksManager$LoadableDeck;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/data/DecksManager$LoadableDeck;->access$100(Lcom/amazon/kedu/flashcards/data/DecksManager$LoadableDeck;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public deleteCard(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 341
    invoke-virtual {p0, p1}, Lcom/amazon/kedu/flashcards/data/DecksManager;->getDeck(Ljava/lang/String;)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    move-result-object p1

    .line 342
    invoke-virtual {p1, p2}, Lcom/amazon/kedu/flashcards/models/DeckModel;->get(Ljava/lang/String;)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    move-result-object p2

    .line 344
    invoke-virtual {p1, p2}, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->remove(Ljava/lang/Object;)Z

    .line 346
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getInstance()Lcom/amazon/kedu/flashcards/FlashcardsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getEventBus()Lcom/amazon/kedu/flashcards/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/amazon/kedu/flashcards/events/CardDeletedEvent;

    invoke-direct {v1, p1, p2}, Lcom/amazon/kedu/flashcards/events/CardDeletedEvent;-><init>(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kedu/flashcards/events/EventBus;->publish(Lcom/amazon/kedu/flashcards/events/Event;)V

    return-void
.end method

.method public deleteDeck(Ljava/lang/String;)V
    .locals 2

    .line 290
    invoke-virtual {p0, p1}, Lcom/amazon/kedu/flashcards/data/DecksManager;->getDeck(Ljava/lang/String;)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    move-result-object v0

    .line 292
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/data/DecksManager;->loadableDecks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getInstance()Lcom/amazon/kedu/flashcards/FlashcardsApp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getEventBus()Lcom/amazon/kedu/flashcards/events/EventBus;

    move-result-object p1

    new-instance v1, Lcom/amazon/kedu/flashcards/events/DeckDeletedEvent;

    invoke-direct {v1, v0}, Lcom/amazon/kedu/flashcards/events/DeckDeletedEvent;-><init>(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;)V

    invoke-virtual {p1, v1}, Lcom/amazon/kedu/flashcards/events/EventBus;->publish(Lcom/amazon/kedu/flashcards/events/Event;)V

    return-void
.end method

.method public getDeck(Ljava/lang/String;)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/data/DecksManager;->loadableDecks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kedu/flashcards/data/DecksManager$LoadableDeck;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/data/DecksManager$LoadableDeck;->access$1100(Lcom/amazon/kedu/flashcards/data/DecksManager$LoadableDeck;)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    move-result-object p1

    return-object p1
.end method

.method public getDecks()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;",
            ">;"
        }
    .end annotation

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amazon/kedu/flashcards/data/DecksManager;->loadableDecks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 267
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/data/DecksManager;->loadableDecks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 268
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 270
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kedu/flashcards/data/DecksManager$LoadableDeck;

    invoke-static {v2}, Lcom/amazon/kedu/flashcards/data/DecksManager$LoadableDeck;->access$1100(Lcom/amazon/kedu/flashcards/data/DecksManager$LoadableDeck;)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 272
    :cond_0
    new-instance v1, Lcom/amazon/kedu/flashcards/utils/MostRecentlyEditedComparator;

    invoke-direct {v1}, Lcom/amazon/kedu/flashcards/utils/MostRecentlyEditedComparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method protected newCard(Ljava/lang/String;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;
    .locals 9

    .line 327
    sget-object v0, Lcom/amazon/kedu/flashcards/data/DecksManager;->wsController:Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->uuidBase64Encoded()Ljava/lang/String;

    move-result-object v2

    .line 328
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/amazon/kedu/flashcards/data/SchemaCompatibilityUtil;->processEpochToSeconds(J)J

    move-result-wide v7

    .line 330
    new-instance v0, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    move-object v1, v0

    move-object v3, p2

    move-object v4, p3

    move-wide v5, v7

    invoke-direct/range {v1 .. v8}, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;-><init>(Ljava/lang/String;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;JJ)V

    .line 331
    invoke-virtual {p0, p1}, Lcom/amazon/kedu/flashcards/data/DecksManager;->getDeck(Ljava/lang/String;)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    move-result-object p1

    .line 333
    invoke-virtual {p1, v0}, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->add(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;)Z

    .line 335
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getInstance()Lcom/amazon/kedu/flashcards/FlashcardsApp;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getEventBus()Lcom/amazon/kedu/flashcards/events/EventBus;

    move-result-object p2

    new-instance p3, Lcom/amazon/kedu/flashcards/events/CardAddedEvent;

    invoke-direct {p3, p1, v0}, Lcom/amazon/kedu/flashcards/events/CardAddedEvent;-><init>(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;)V

    invoke-virtual {p2, p3}, Lcom/amazon/kedu/flashcards/events/EventBus;->publish(Lcom/amazon/kedu/flashcards/events/Event;)V

    return-object v0
.end method

.method public newCard(Ljava/lang/String;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;
    .locals 1

    .line 319
    new-instance v0, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;

    invoke-direct {v0, p4, p2, p3}, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;-><init>(Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V

    .line 320
    new-instance p2, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;

    invoke-direct {p2}, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;-><init>()V

    .line 322
    invoke-virtual {p0, p1, v0, p2}, Lcom/amazon/kedu/flashcards/data/DecksManager;->newCard(Ljava/lang/String;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    move-result-object p1

    return-object p1
.end method

.method public newCard(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;Ljava/lang/String;Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;
    .locals 1

    .line 311
    new-instance v0, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;

    invoke-direct {v0, p3, p2}, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;-><init>(Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;Ljava/lang/String;)V

    .line 312
    new-instance p2, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;

    invoke-direct {p2, p5, p4}, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;-><init>(Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;Ljava/lang/String;)V

    .line 314
    invoke-virtual {p0, p1, v0, p2}, Lcom/amazon/kedu/flashcards/data/DecksManager;->newCard(Ljava/lang/String;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    move-result-object p1

    return-object p1
.end method

.method public newDeck(Ljava/lang/String;)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;
    .locals 8

    .line 298
    sget-object v0, Lcom/amazon/kedu/flashcards/data/DecksManager;->wsController:Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->uuidBase64Encoded()Ljava/lang/String;

    move-result-object v2

    .line 299
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/amazon/kedu/flashcards/data/SchemaCompatibilityUtil;->processEpochToSeconds(J)J

    move-result-wide v6

    .line 300
    new-instance v0, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    move-object v1, v0

    move-object v3, p1

    move-wide v4, v6

    invoke-direct/range {v1 .. v7}, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 302
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/data/DecksManager;->loadableDecks:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/models/DeckModel;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/amazon/kedu/flashcards/data/DecksManager$LoadableDeck;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v0, v3}, Lcom/amazon/kedu/flashcards/data/DecksManager$LoadableDeck;-><init>(Lcom/amazon/kedu/flashcards/data/DecksManager;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;Z)V

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getInstance()Lcom/amazon/kedu/flashcards/FlashcardsApp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getEventBus()Lcom/amazon/kedu/flashcards/events/EventBus;

    move-result-object p1

    new-instance v1, Lcom/amazon/kedu/flashcards/events/DeckAddedEvent;

    invoke-direct {v1, v0}, Lcom/amazon/kedu/flashcards/events/DeckAddedEvent;-><init>(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;)V

    invoke-virtual {p1, v1}, Lcom/amazon/kedu/flashcards/events/EventBus;->publish(Lcom/amazon/kedu/flashcards/events/Event;)V

    return-object v0
.end method

.method protected onCardDataChanged(Lcom/amazon/kedu/flashcards/events/ICardDataChangedEvent;)V
    .locals 3

    .line 113
    instance-of v0, p1, Lcom/amazon/kedu/flashcards/events/CardDeletedEvent;

    if-eqz v0, :cond_0

    .line 115
    sget-object v0, Lcom/amazon/kedu/flashcards/data/DecksManager;->wsController:Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;

    invoke-interface {p1}, Lcom/amazon/kedu/flashcards/events/ICardDataChangedEvent;->getCard()Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/kedu/flashcards/events/ICardDataChangedEvent;->getDeck()Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/models/DeckModel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->deleteCard(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kedu/flashcards/events/ICardDataChangedEvent;->getCard()Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    move-result-object v0

    .line 120
    invoke-interface {p1}, Lcom/amazon/kedu/flashcards/events/ICardDataChangedEvent;->getDeck()Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/models/DeckModel;->getId()Ljava/lang/String;

    move-result-object p1

    .line 121
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/data/DecksManager;->cardSaveCalls:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 123
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/data/DecksManager;->cardSaveCalls:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :cond_1
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/data/DecksManager;->cardSaveCalls:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/data/DecksManager;->updateWhispersyncData()V

    :goto_0
    return-void
.end method

.method protected onDeckDataChanged(Lcom/amazon/kedu/flashcards/events/IDeckDataChangedEvent;)V
    .locals 5

    .line 133
    instance-of v0, p1, Lcom/amazon/kedu/flashcards/events/DeckDeletedEvent;

    if-eqz v0, :cond_0

    .line 135
    sget-object v0, Lcom/amazon/kedu/flashcards/data/DecksManager;->wsController:Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;

    invoke-interface {p1}, Lcom/amazon/kedu/flashcards/events/IDeckDataChangedEvent;->getDeck()Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    move-result-object p1

    iget-object v1, p0, Lcom/amazon/kedu/flashcards/data/DecksManager;->activeBookId:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->deleteDeck(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;Ljava/lang/String;)V

    goto :goto_1

    .line 139
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kedu/flashcards/events/IDeckDataChangedEvent;->getDeck()Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/models/DeckModel;->updateTimeEdited()V

    .line 142
    instance-of p1, p1, Lcom/amazon/kedu/flashcards/events/DeckAddedEvent;

    if-eqz p1, :cond_2

    .line 144
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/data/DecksManager;->currentSmallestSortIndex:Ljava/lang/Double;

    if-nez p1, :cond_1

    const-wide/16 v1, 0x0

    .line 146
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kedu/flashcards/data/DecksManager;->currentSmallestSortIndex:Ljava/lang/Double;

    goto :goto_0

    .line 150
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kedu/flashcards/data/DecksManager;->currentSmallestSortIndex:Ljava/lang/Double;

    .line 153
    :goto_0
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/data/DecksManager;->currentSmallestSortIndex:Ljava/lang/Double;

    invoke-virtual {v0, p1}, Lcom/amazon/kedu/flashcards/models/DeckModel;->setSortIndex(Ljava/lang/Double;)V

    .line 156
    :cond_2
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/data/DecksManager;->deckSaveCalls:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentSkipListSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 158
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/data/DecksManager;->deckSaveCalls:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentSkipListSet;->add(Ljava/lang/Object;)Z

    .line 159
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/data/DecksManager;->updateWhispersyncData()V

    :cond_3
    :goto_1
    return-void
.end method

.method public onEvent(Lcom/amazon/kedu/flashcards/events/Event;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazon/kedu/flashcards/events/Event;",
            ">(TT;)V"
        }
    .end annotation

    .line 167
    instance-of v0, p1, Lcom/amazon/kedu/flashcards/events/ICardDataChangedEvent;

    if-eqz v0, :cond_1

    .line 169
    move-object v0, p1

    check-cast v0, Lcom/amazon/kedu/flashcards/events/ICardDataChangedEvent;

    .line 170
    iget-boolean v1, p0, Lcom/amazon/kedu/flashcards/data/DecksManager;->decksFetched:Z

    if-eqz v1, :cond_0

    .line 172
    invoke-virtual {p0, v0}, Lcom/amazon/kedu/flashcards/data/DecksManager;->onCardDataChanged(Lcom/amazon/kedu/flashcards/events/ICardDataChangedEvent;)V

    goto :goto_0

    .line 176
    :cond_0
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/data/DecksManager;->cardUpdatedQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_1
    :goto_0
    instance-of v0, p1, Lcom/amazon/kedu/flashcards/events/IDeckDataChangedEvent;

    if-eqz v0, :cond_3

    .line 182
    check-cast p1, Lcom/amazon/kedu/flashcards/events/IDeckDataChangedEvent;

    .line 183
    iget-boolean v0, p0, Lcom/amazon/kedu/flashcards/data/DecksManager;->decksFetched:Z

    if-eqz v0, :cond_2

    .line 185
    invoke-virtual {p0, p1}, Lcom/amazon/kedu/flashcards/data/DecksManager;->onDeckDataChanged(Lcom/amazon/kedu/flashcards/events/IDeckDataChangedEvent;)V

    goto :goto_1

    .line 189
    :cond_2
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/data/DecksManager;->deckUpdateQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public resetActiveBook()V
    .locals 1

    const/4 v0, 0x0

    .line 260
    iput-object v0, p0, Lcom/amazon/kedu/flashcards/data/DecksManager;->activeBookId:Ljava/lang/String;

    return-void
.end method

.method public setActiveBook(Ljava/lang/String;)V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/data/DecksManager;->activeBookId:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 254
    :cond_0
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getInstance()Lcom/amazon/kedu/flashcards/FlashcardsApp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getEventBus()Lcom/amazon/kedu/flashcards/events/EventBus;

    move-result-object p1

    new-instance v0, Lcom/amazon/kedu/flashcards/events/DecksReadyEvent;

    invoke-direct {v0}, Lcom/amazon/kedu/flashcards/events/DecksReadyEvent;-><init>()V

    invoke-virtual {p1, v0}, Lcom/amazon/kedu/flashcards/events/EventBus;->publish(Lcom/amazon/kedu/flashcards/events/Event;)V

    goto :goto_1

    .line 248
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/data/DecksManager;->reset()V

    .line 249
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/data/DecksManager;->activeBookId:Ljava/lang/String;

    .line 250
    sget-object v0, Lcom/amazon/kedu/flashcards/data/DecksManager;->wsController:Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;

    iget-object v1, p0, Lcom/amazon/kedu/flashcards/data/DecksManager;->bookLoadHandler:Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$WhisperSyncBookLoadHandler;

    invoke-virtual {v0, p1, v1}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->getDecksForBookAsync(Ljava/lang/String;Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$WhisperSyncBookLoadHandler;)V

    :goto_1
    return-void
.end method
