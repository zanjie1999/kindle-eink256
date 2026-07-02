.class Lcom/amazon/kedu/flashcards/data/DecksManager$1;
.super Ljava/lang/Object;
.source "DecksManager.java"

# interfaces
.implements Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$WhisperSyncDeckLoadHandler;


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

    .line 58
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/data/DecksManager$1;->this$0:Lcom/amazon/kedu/flashcards/data/DecksManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCardsLoaded(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/data/DecksManager$1;->this$0:Lcom/amazon/kedu/flashcards/data/DecksManager;

    invoke-virtual {v0, p2}, Lcom/amazon/kedu/flashcards/data/DecksManager;->getDeck(Ljava/lang/String;)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    move-result-object v0

    .line 63
    invoke-virtual {v0, p1}, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->setInitialCards(Ljava/util/List;)V

    .line 64
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/data/DecksManager$1;->this$0:Lcom/amazon/kedu/flashcards/data/DecksManager;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/data/DecksManager;->access$000(Lcom/amazon/kedu/flashcards/data/DecksManager;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kedu/flashcards/data/DecksManager$LoadableDeck;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/amazon/kedu/flashcards/data/DecksManager$LoadableDeck;->access$102(Lcom/amazon/kedu/flashcards/data/DecksManager$LoadableDeck;Z)Z

    .line 66
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getInstance()Lcom/amazon/kedu/flashcards/FlashcardsApp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getEventBus()Lcom/amazon/kedu/flashcards/events/EventBus;

    move-result-object p1

    new-instance p2, Lcom/amazon/kedu/flashcards/events/DeckFinishedLoadingEvent;

    invoke-direct {p2, v0}, Lcom/amazon/kedu/flashcards/events/DeckFinishedLoadingEvent;-><init>(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;)V

    invoke-virtual {p1, p2}, Lcom/amazon/kedu/flashcards/events/EventBus;->publish(Lcom/amazon/kedu/flashcards/events/Event;)V

    return-void
.end method
