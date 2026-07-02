.class public Lcom/amazon/kedu/flashcards/events/CardDeletedEvent;
.super Lcom/amazon/kedu/flashcards/events/CardUpdatedEvent;
.source "CardDeletedEvent.java"

# interfaces
.implements Lcom/amazon/kedu/flashcards/events/IDeckDataChangedEvent;


# direct methods
.method public constructor <init>(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/amazon/kedu/flashcards/events/CardUpdatedEvent;-><init>(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;)V

    return-void
.end method
