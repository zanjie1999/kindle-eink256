.class public interface abstract Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/EventHandler;
.super Ljava/lang/Object;
.source "EventHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<EventType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract handleEvent(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent<",
            "TEventType;>;)Z"
        }
    .end annotation
.end method
