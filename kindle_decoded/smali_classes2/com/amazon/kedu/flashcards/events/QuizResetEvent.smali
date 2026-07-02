.class public Lcom/amazon/kedu/flashcards/events/QuizResetEvent;
.super Lcom/amazon/kedu/flashcards/events/QuizUpdatedEvent;
.source "QuizResetEvent.java"


# direct methods
.method public constructor <init>(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/events/QuizUpdatedEvent;-><init>(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;)V

    return-void
.end method
