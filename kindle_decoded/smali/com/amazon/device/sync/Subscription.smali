.class public interface abstract Lcom/amazon/device/sync/Subscription;
.super Ljava/lang/Object;
.source "Subscription.java"


# virtual methods
.method public abstract getSubscriptionStatus()Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract terminate()V
.end method
