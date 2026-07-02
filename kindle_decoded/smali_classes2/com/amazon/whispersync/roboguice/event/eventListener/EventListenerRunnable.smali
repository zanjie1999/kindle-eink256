.class public Lcom/amazon/whispersync/roboguice/event/eventListener/EventListenerRunnable;
.super Ljava/lang/Object;
.source "EventListenerRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field protected event:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected eventListener:Lcom/amazon/whispersync/roboguice/event/EventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/roboguice/event/EventListener<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/amazon/whispersync/roboguice/event/EventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/amazon/whispersync/roboguice/event/EventListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/amazon/whispersync/roboguice/event/eventListener/EventListenerRunnable;->event:Ljava/lang/Object;

    .line 17
    iput-object p2, p0, Lcom/amazon/whispersync/roboguice/event/eventListener/EventListenerRunnable;->eventListener:Lcom/amazon/whispersync/roboguice/event/EventListener;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/event/eventListener/EventListenerRunnable;->eventListener:Lcom/amazon/whispersync/roboguice/event/EventListener;

    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/event/eventListener/EventListenerRunnable;->event:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/roboguice/event/EventListener;->onEvent(Ljava/lang/Object;)V

    return-void
.end method
