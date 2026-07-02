.class public Lcom/amazon/whispersync/roboguice/event/eventListener/AsynchronousEventListenerDecorator;
.super Ljava/lang/Object;
.source "AsynchronousEventListenerDecorator.java"

# interfaces
.implements Lcom/amazon/whispersync/roboguice/event/EventListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/roboguice/event/EventListener<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected eventListener:Lcom/amazon/whispersync/roboguice/event/EventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/roboguice/event/EventListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/amazon/whispersync/roboguice/event/EventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Lcom/amazon/whispersync/roboguice/event/EventListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/amazon/whispersync/roboguice/event/eventListener/AsynchronousEventListenerDecorator;->handler:Landroid/os/Handler;

    .line 23
    iput-object p2, p0, Lcom/amazon/whispersync/roboguice/event/eventListener/AsynchronousEventListenerDecorator;->eventListener:Lcom/amazon/whispersync/roboguice/event/EventListener;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/roboguice/event/EventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/roboguice/event/EventListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/amazon/whispersync/roboguice/event/eventListener/AsynchronousEventListenerDecorator;->eventListener:Lcom/amazon/whispersync/roboguice/event/EventListener;

    return-void
.end method


# virtual methods
.method public onEvent(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 27
    new-instance v0, Lcom/amazon/whispersync/roboguice/event/eventListener/RunnableAsyncTaskAdaptor;

    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/event/eventListener/AsynchronousEventListenerDecorator;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/amazon/whispersync/roboguice/event/eventListener/EventListenerRunnable;

    iget-object v3, p0, Lcom/amazon/whispersync/roboguice/event/eventListener/AsynchronousEventListenerDecorator;->eventListener:Lcom/amazon/whispersync/roboguice/event/EventListener;

    invoke-direct {v2, p1, v3}, Lcom/amazon/whispersync/roboguice/event/eventListener/EventListenerRunnable;-><init>(Ljava/lang/Object;Lcom/amazon/whispersync/roboguice/event/EventListener;)V

    invoke-direct {v0, v1, v2}, Lcom/amazon/whispersync/roboguice/event/eventListener/RunnableAsyncTaskAdaptor;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask;->execute()V

    return-void
.end method
