.class public interface abstract Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers$RunnableEvent;
.super Ljava/lang/Object;
.source "Observers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RunnableEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<EventType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract run(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TEventType;)V"
        }
    .end annotation
.end method
