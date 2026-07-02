.class public Lcom/amazon/kedu/flashcards/metrics/FlashcardsClickstreamEventHandler;
.super Ljava/lang/Object;
.source "FlashcardsClickstreamEventHandler.java"

# interfaces
.implements Lcom/amazon/kedu/flashcards/events/EventHandler;


# direct methods
.method public constructor <init>(Lcom/amazon/kedu/flashcards/FlashcardsApp;)V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getEventBus()Lcom/amazon/kedu/flashcards/events/EventBus;

    move-result-object v0

    const-class v1, Lcom/amazon/kedu/flashcards/events/CardDeletedEvent;

    invoke-virtual {v0, v1, p0}, Lcom/amazon/kedu/flashcards/events/EventBus;->subscribe(Ljava/lang/Class;Lcom/amazon/kedu/flashcards/events/EventHandler;)V

    .line 20
    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getEventBus()Lcom/amazon/kedu/flashcards/events/EventBus;

    move-result-object v0

    const-class v1, Lcom/amazon/kedu/flashcards/events/DeckDeletedEvent;

    invoke-virtual {v0, v1, p0}, Lcom/amazon/kedu/flashcards/events/EventBus;->subscribe(Ljava/lang/Class;Lcom/amazon/kedu/flashcards/events/EventHandler;)V

    .line 21
    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getEventBus()Lcom/amazon/kedu/flashcards/events/EventBus;

    move-result-object v0

    const-class v1, Lcom/amazon/kedu/flashcards/events/DeckNameChangedEvent;

    invoke-virtual {v0, v1, p0}, Lcom/amazon/kedu/flashcards/events/EventBus;->subscribe(Ljava/lang/Class;Lcom/amazon/kedu/flashcards/events/EventHandler;)V

    .line 22
    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getEventBus()Lcom/amazon/kedu/flashcards/events/EventBus;

    move-result-object p1

    const-class v0, Lcom/amazon/kedu/flashcards/events/QuizCompletedEvent;

    invoke-virtual {p1, v0, p0}, Lcom/amazon/kedu/flashcards/events/EventBus;->subscribe(Ljava/lang/Class;Lcom/amazon/kedu/flashcards/events/EventHandler;)V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/amazon/kedu/flashcards/events/Event;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazon/kedu/flashcards/events/Event;",
            ">(TT;)V"
        }
    .end annotation

    .line 28
    instance-of v0, p1, Lcom/amazon/kedu/flashcards/events/CardDeletedEvent;

    const-string v1, "KindleFlashcards"

    if-eqz v0, :cond_0

    const-string p1, "DeleteCard"

    .line 30
    invoke-static {v1, p1}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 32
    :cond_0
    instance-of v0, p1, Lcom/amazon/kedu/flashcards/events/DeckDeletedEvent;

    if-eqz v0, :cond_1

    const-string p1, "DeleteDeck"

    .line 34
    invoke-static {v1, p1}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 36
    :cond_1
    instance-of v0, p1, Lcom/amazon/kedu/flashcards/events/DeckNameChangedEvent;

    if-eqz v0, :cond_2

    const-string p1, "RenameDeck"

    .line 38
    invoke-static {v1, p1}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :cond_2
    instance-of p1, p1, Lcom/amazon/kedu/flashcards/events/QuizCompletedEvent;

    if-eqz p1, :cond_3

    const-string p1, "QuizComplete"

    .line 42
    invoke-static {v1, p1}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
