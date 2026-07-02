.class public Lcom/amazon/kedu/flashcards/events/DeckDataUpdatedEvent;
.super Lcom/amazon/kedu/flashcards/events/DeckUpdatedEvent;
.source "DeckDataUpdatedEvent.java"

# interfaces
.implements Lcom/amazon/kedu/flashcards/events/IDeckDataChangedEvent;


# direct methods
.method public constructor <init>(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/events/DeckUpdatedEvent;-><init>(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;)V

    return-void
.end method
