.class public Lcom/amazon/kindle/event/EventBroker;
.super Lcom/amazon/kindle/event/BaseEventProvider;
.source "EventBroker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/amazon/kindle/event/BaseEventProvider;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/amazon/kindle/event/BaseEventProvider;-><init>(I)V

    return-void
.end method


# virtual methods
.method public publishEvent(Lcom/amazon/kindle/event/Event;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/kindle/event/Event<",
            "TT;>;)V"
        }
    .end annotation

    .line 32
    invoke-super {p0, p1}, Lcom/amazon/kindle/event/BaseEventProvider;->publishEvent(Lcom/amazon/kindle/event/Event;)V

    return-void
.end method
