.class public interface abstract Lcom/amazon/kindle/event/IEventHandler;
.super Ljava/lang/Object;
.source "IEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getEventTypes()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/event/EventType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract handleEvent(Lcom/amazon/kindle/event/Event;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/event/Event<",
            "TT;>;)V"
        }
    .end annotation
.end method
