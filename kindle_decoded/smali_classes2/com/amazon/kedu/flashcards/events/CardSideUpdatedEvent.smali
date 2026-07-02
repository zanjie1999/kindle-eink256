.class public Lcom/amazon/kedu/flashcards/events/CardSideUpdatedEvent;
.super Lcom/amazon/kedu/flashcards/events/CardUpdatedEvent;
.source "CardSideUpdatedEvent.java"


# instance fields
.field private side:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;


# direct methods
.method public constructor <init>(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/amazon/kedu/flashcards/events/CardUpdatedEvent;-><init>(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;)V

    .line 18
    iput-object p3, p0, Lcom/amazon/kedu/flashcards/events/CardSideUpdatedEvent;->side:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;

    return-void
.end method
