.class public Lcom/amazon/kedu/flashcards/events/DeckFinishedLoadingEvent;
.super Lcom/amazon/kedu/flashcards/events/DeckUpdatedEvent;
.source "DeckFinishedLoadingEvent.java"


# direct methods
.method public constructor <init>(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/events/DeckUpdatedEvent;-><init>(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;)V

    return-void
.end method
