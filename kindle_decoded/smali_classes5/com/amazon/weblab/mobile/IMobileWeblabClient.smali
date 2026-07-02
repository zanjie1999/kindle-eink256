.class public interface abstract Lcom/amazon/weblab/mobile/IMobileWeblabClient;
.super Ljava/lang/Object;
.source "IMobileWeblabClient.java"


# virtual methods
.method public abstract addWeblab(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/amazon/weblab/mobile/TooManyRegisteredWeblabsException;
        }
    .end annotation
.end method

.method public abstract getIMobileWeblabClientAttributes()Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;
.end method

.method public abstract getMarketplace()Ljava/lang/String;
.end method

.method public abstract getWeblab(Ljava/lang/String;)Lcom/amazon/weblab/mobile/IMobileWeblab;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract setDirectedId(Ljava/lang/String;)V
.end method

.method public abstract setMarketplaceId(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract setSessionId(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract updateAsync()Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/RejectedExecutionException;
        }
    .end annotation
.end method
