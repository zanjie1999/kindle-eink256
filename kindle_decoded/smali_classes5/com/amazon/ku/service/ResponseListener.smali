.class public interface abstract Lcom/amazon/ku/service/ResponseListener;
.super Ljava/lang/Object;
.source "ResponseListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onResponse(Ljava/lang/Object;Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResponseType;",
            "Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;",
            ")V"
        }
    .end annotation
.end method
