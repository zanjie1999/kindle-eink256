.class Lcom/amazon/kedu/flashcards/events/MainThreadEventBus$1;
.super Ljava/lang/Object;
.source "MainThreadEventBus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kedu/flashcards/events/MainThreadEventBus;->handleEvent(Lcom/amazon/kedu/flashcards/events/EventHandler;Lcom/amazon/kedu/flashcards/events/Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kedu/flashcards/events/MainThreadEventBus;

.field final synthetic val$event:Lcom/amazon/kedu/flashcards/events/Event;

.field final synthetic val$eventHandler:Lcom/amazon/kedu/flashcards/events/EventHandler;


# direct methods
.method constructor <init>(Lcom/amazon/kedu/flashcards/events/MainThreadEventBus;Lcom/amazon/kedu/flashcards/events/EventHandler;Lcom/amazon/kedu/flashcards/events/Event;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/events/MainThreadEventBus$1;->this$0:Lcom/amazon/kedu/flashcards/events/MainThreadEventBus;

    iput-object p2, p0, Lcom/amazon/kedu/flashcards/events/MainThreadEventBus$1;->val$eventHandler:Lcom/amazon/kedu/flashcards/events/EventHandler;

    iput-object p3, p0, Lcom/amazon/kedu/flashcards/events/MainThreadEventBus$1;->val$event:Lcom/amazon/kedu/flashcards/events/Event;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 26
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/events/MainThreadEventBus$1;->this$0:Lcom/amazon/kedu/flashcards/events/MainThreadEventBus;

    iget-object v1, p0, Lcom/amazon/kedu/flashcards/events/MainThreadEventBus$1;->val$eventHandler:Lcom/amazon/kedu/flashcards/events/EventHandler;

    iget-object v2, p0, Lcom/amazon/kedu/flashcards/events/MainThreadEventBus$1;->val$event:Lcom/amazon/kedu/flashcards/events/Event;

    invoke-static {v0, v1, v2}, Lcom/amazon/kedu/flashcards/events/MainThreadEventBus;->access$001(Lcom/amazon/kedu/flashcards/events/MainThreadEventBus;Lcom/amazon/kedu/flashcards/events/EventHandler;Lcom/amazon/kedu/flashcards/events/Event;)V

    return-void
.end method
