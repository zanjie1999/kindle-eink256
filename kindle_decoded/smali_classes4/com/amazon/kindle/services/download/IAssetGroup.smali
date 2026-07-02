.class public interface abstract Lcom/amazon/kindle/services/download/IAssetGroup;
.super Ljava/lang/Object;
.source "IAssetGroup.java"


# virtual methods
.method public abstract downloadPath()Ljava/lang/String;
.end method

.method public abstract getAssets()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/services/download/IBookAsset;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBookID()Lcom/amazon/kindle/model/content/IBookID;
.end method

.method public abstract getCorrelationId()Ljava/lang/String;
.end method

.method public abstract getDownloadCompleteEventWasSent()Z
.end method

.method public abstract getExcludedTransportMethod()Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;
.end method

.method public abstract getGroupContext()Ljava/lang/String;
.end method

.method public abstract getMainAsset()Lcom/amazon/kindle/services/download/IBookAsset;
.end method

.method public abstract getMaincontentFileName()Ljava/lang/String;
.end method

.method public abstract getRevision()Ljava/lang/String;
.end method

.method public abstract getSource()Ljava/lang/String;
.end method

.method public abstract setCorrelationId(Ljava/lang/String;)V
.end method

.method public abstract setGroupContext(Ljava/lang/String;)V
.end method

.method public abstract setRevision(Ljava/lang/String;)V
.end method
