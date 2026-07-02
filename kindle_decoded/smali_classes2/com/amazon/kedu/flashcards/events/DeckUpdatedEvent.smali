.class public Lcom/amazon/kedu/flashcards/events/DeckUpdatedEvent;
.super Lcom/amazon/kedu/flashcards/events/Event;
.source "DeckUpdatedEvent.java"


# instance fields
.field private final deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;


# direct methods
.method public constructor <init>(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/events/Event;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/events/DeckUpdatedEvent;->deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    return-void
.end method


# virtual methods
.method public getDeck()Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/events/DeckUpdatedEvent;->deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    return-object v0
.end method
