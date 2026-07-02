.class public Lcom/amazon/whispersync/roboguice/event/eventListener/UIThreadEventListenerDecorator;
.super Ljava/lang/Object;
.source "UIThreadEventListenerDecorator.java"

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
.method public constructor <init>(Lcom/amazon/whispersync/roboguice/event/EventListener;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/roboguice/event/EventListener<",
            "TT;>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/amazon/whispersync/roboguice/event/eventListener/UIThreadEventListenerDecorator;->eventListener:Lcom/amazon/whispersync/roboguice/event/EventListener;

    .line 19
    iput-object p2, p0, Lcom/amazon/whispersync/roboguice/event/eventListener/UIThreadEventListenerDecorator;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onEvent(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/event/eventListener/UIThreadEventListenerDecorator;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/amazon/whispersync/roboguice/event/eventListener/EventListenerRunnable;

    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/event/eventListener/UIThreadEventListenerDecorator;->eventListener:Lcom/amazon/whispersync/roboguice/event/EventListener;

    invoke-direct {v1, p1, v2}, Lcom/amazon/whispersync/roboguice/event/eventListener/EventListenerRunnable;-><init>(Ljava/lang/Object;Lcom/amazon/whispersync/roboguice/event/EventListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
