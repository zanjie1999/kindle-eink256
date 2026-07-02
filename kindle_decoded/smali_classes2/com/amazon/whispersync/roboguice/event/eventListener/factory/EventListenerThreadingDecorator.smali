.class public Lcom/amazon/whispersync/roboguice/event/eventListener/factory/EventListenerThreadingDecorator;
.super Ljava/lang/Object;
.source "EventListenerThreadingDecorator.java"


# instance fields
.field protected handlerProvider:Lcom/amazon/whispersync/com/google/inject/Provider;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decorate(Lcom/amazon/whispersync/roboguice/event/EventThread;Lcom/amazon/whispersync/roboguice/event/EventListener;)Lcom/amazon/whispersync/roboguice/event/EventListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/roboguice/event/EventThread;",
            "Lcom/amazon/whispersync/roboguice/event/EventListener<",
            "TT;>;)",
            "Lcom/amazon/whispersync/roboguice/event/EventListener<",
            "TT;>;"
        }
    .end annotation

    .line 21
    sget-object v0, Lcom/amazon/whispersync/roboguice/event/eventListener/factory/EventListenerThreadingDecorator$1;->$SwitchMap$roboguice$event$EventThread:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-object p2

    .line 25
    :cond_0
    new-instance p1, Lcom/amazon/whispersync/roboguice/event/eventListener/AsynchronousEventListenerDecorator;

    invoke-direct {p1, p2}, Lcom/amazon/whispersync/roboguice/event/eventListener/AsynchronousEventListenerDecorator;-><init>(Lcom/amazon/whispersync/roboguice/event/EventListener;)V

    return-object p1

    .line 23
    :cond_1
    new-instance p1, Lcom/amazon/whispersync/roboguice/event/eventListener/UIThreadEventListenerDecorator;

    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/event/eventListener/factory/EventListenerThreadingDecorator;->handlerProvider:Lcom/amazon/whispersync/com/google/inject/Provider;

    invoke-interface {v0}, Lcom/amazon/whispersync/com/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    invoke-direct {p1, p2, v0}, Lcom/amazon/whispersync/roboguice/event/eventListener/UIThreadEventListenerDecorator;-><init>(Lcom/amazon/whispersync/roboguice/event/EventListener;Landroid/os/Handler;)V

    return-object p1
.end method
