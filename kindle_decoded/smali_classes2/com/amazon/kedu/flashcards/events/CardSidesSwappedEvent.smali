.class public Lcom/amazon/kedu/flashcards/events/CardSidesSwappedEvent;
.super Lcom/amazon/kedu/flashcards/events/CardUpdatedEvent;
.source "CardSidesSwappedEvent.java"


# direct methods
.method public constructor <init>(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/amazon/kedu/flashcards/events/CardUpdatedEvent;-><init>(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;)V

    return-void
.end method
