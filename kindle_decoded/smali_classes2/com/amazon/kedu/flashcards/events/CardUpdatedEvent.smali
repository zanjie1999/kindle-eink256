.class public Lcom/amazon/kedu/flashcards/events/CardUpdatedEvent;
.super Lcom/amazon/kedu/flashcards/events/DeckDataUpdatedEvent;
.source "CardUpdatedEvent.java"

# interfaces
.implements Lcom/amazon/kedu/flashcards/events/ICardDataChangedEvent;


# instance fields
.field private final card:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;


# direct methods
.method public constructor <init>(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/events/DeckDataUpdatedEvent;-><init>(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;)V

    .line 16
    iput-object p2, p0, Lcom/amazon/kedu/flashcards/events/CardUpdatedEvent;->card:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    return-void
.end method


# virtual methods
.method public getCard()Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/events/CardUpdatedEvent;->card:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    return-object v0
.end method
