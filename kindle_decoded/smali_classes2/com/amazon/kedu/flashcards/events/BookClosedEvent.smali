.class public Lcom/amazon/kedu/flashcards/events/BookClosedEvent;
.super Lcom/amazon/kedu/flashcards/events/Event;
.source "BookClosedEvent.java"


# instance fields
.field private final book:Lcom/amazon/kindle/krx/content/IBook;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/events/Event;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/events/BookClosedEvent;->book:Lcom/amazon/kindle/krx/content/IBook;

    return-void
.end method
