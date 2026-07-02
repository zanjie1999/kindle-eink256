.class Lcom/amazon/kedu/flashcards/data/DecksManager$2;
.super Ljava/lang/Object;
.source "DecksManager.java"

# interfaces
.implements Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$WhisperSyncBookLoadHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kedu/flashcards/data/DecksManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kedu/flashcards/data/DecksManager;


# direct methods
.method constructor <init>(Lcom/amazon/kedu/flashcards/data/DecksManager;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/data/DecksManager$2;->this$0:Lcom/amazon/kedu/flashcards/data/DecksManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDecksLoaded(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;",
            ">;)V"
        }
    .end annotation

    .line 75
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    .line 77
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/data/DecksManager$2;->this$0:Lcom/amazon/kedu/flashcards/data/DecksManager;

    invoke-static {v1}, Lcom/amazon/kedu/flashcards/data/DecksManager;->access$200(Lcom/amazon/kedu/flashcards/data/DecksManager;)Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/models/DeckModel;->getSortIndex()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iget-object v3, p0, Lcom/amazon/kedu/flashcards/data/DecksManager$2;->this$0:Lcom/amazon/kedu/flashcards/data/DecksManager;

    invoke-static {v3}, Lcom/amazon/kedu/flashcards/data/DecksManager;->access$200(Lcom/amazon/kedu/flashcards/data/DecksManager;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    cmpg-double v5, v1, v3

    if-gez v5, :cond_1

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/data/DecksManager$2;->this$0:Lcom/amazon/kedu/flashcards/data/DecksManager;

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/models/DeckModel;->getSortIndex()Ljava/lang/Double;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/kedu/flashcards/data/DecksManager;->access$202(Lcom/amazon/kedu/flashcards/data/DecksManager;Ljava/lang/Double;)Ljava/lang/Double;

    .line 82
    :cond_1
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/data/DecksManager$2;->this$0:Lcom/amazon/kedu/flashcards/data/DecksManager;

    invoke-static {v1}, Lcom/amazon/kedu/flashcards/data/DecksManager;->access$000(Lcom/amazon/kedu/flashcards/data/DecksManager;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/models/DeckModel;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/amazon/kedu/flashcards/data/DecksManager$LoadableDeck;

    iget-object v4, p0, Lcom/amazon/kedu/flashcards/data/DecksManager$2;->this$0:Lcom/amazon/kedu/flashcards/data/DecksManager;

    invoke-direct {v3, v4, v0}, Lcom/amazon/kedu/flashcards/data/DecksManager$LoadableDeck;-><init>(Lcom/amazon/kedu/flashcards/data/DecksManager;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-static {}, Lcom/amazon/kedu/flashcards/data/DecksManager;->access$400()Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kedu/flashcards/data/DecksManager$2;->this$0:Lcom/amazon/kedu/flashcards/data/DecksManager;

    invoke-static {v2}, Lcom/amazon/kedu/flashcards/data/DecksManager;->access$300(Lcom/amazon/kedu/flashcards/data/DecksManager;)Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$WhisperSyncDeckLoadHandler;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->getFlashcardsForDeckAsync(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$WhisperSyncDeckLoadHandler;)V

    goto :goto_0

    .line 86
    :cond_2
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/data/DecksManager$2;->this$0:Lcom/amazon/kedu/flashcards/data/DecksManager;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/amazon/kedu/flashcards/data/DecksManager;->access$502(Lcom/amazon/kedu/flashcards/data/DecksManager;Z)Z

    .line 87
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/data/DecksManager$2;->this$0:Lcom/amazon/kedu/flashcards/data/DecksManager;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/data/DecksManager;->access$600(Lcom/amazon/kedu/flashcards/data/DecksManager;)V

    .line 89
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getInstance()Lcom/amazon/kedu/flashcards/FlashcardsApp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getEventBus()Lcom/amazon/kedu/flashcards/events/EventBus;

    move-result-object p1

    new-instance v0, Lcom/amazon/kedu/flashcards/events/DecksReadyEvent;

    invoke-direct {v0}, Lcom/amazon/kedu/flashcards/events/DecksReadyEvent;-><init>()V

    invoke-virtual {p1, v0}, Lcom/amazon/kedu/flashcards/events/EventBus;->publish(Lcom/amazon/kedu/flashcards/events/Event;)V

    return-void
.end method
