.class public Lcom/amazon/kedu/flashcards/events/MainThreadEventBus;
.super Lcom/amazon/kedu/flashcards/events/EventBus;
.source "MainThreadEventBus.java"


# instance fields
.field private final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/events/EventBus;-><init>()V

    .line 15
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/events/MainThreadEventBus;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$001(Lcom/amazon/kedu/flashcards/events/MainThreadEventBus;Lcom/amazon/kedu/flashcards/events/EventHandler;Lcom/amazon/kedu/flashcards/events/Event;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lcom/amazon/kedu/flashcards/events/EventBus;->handleEvent(Lcom/amazon/kedu/flashcards/events/EventHandler;Lcom/amazon/kedu/flashcards/events/Event;)V

    return-void
.end method


# virtual methods
.method protected handleEvent(Lcom/amazon/kedu/flashcards/events/EventHandler;Lcom/amazon/kedu/flashcards/events/Event;)V
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/events/MainThreadEventBus;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/amazon/kedu/flashcards/events/MainThreadEventBus$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kedu/flashcards/events/MainThreadEventBus$1;-><init>(Lcom/amazon/kedu/flashcards/events/MainThreadEventBus;Lcom/amazon/kedu/flashcards/events/EventHandler;Lcom/amazon/kedu/flashcards/events/Event;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
