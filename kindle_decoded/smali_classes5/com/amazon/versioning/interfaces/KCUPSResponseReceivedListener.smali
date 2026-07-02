.class public interface abstract Lcom/amazon/versioning/interfaces/KCUPSResponseReceivedListener;
.super Ljava/lang/Object;
.source "KCUPSResponseReceivedListener.java"


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
.method public abstract onErrorCode(Lcom/amazon/versioning/data/enums/KCUPSResponseCode;)V
.end method

.method public abstract onException(Ljava/lang/Exception;)V
.end method

.method public abstract onResponse(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
