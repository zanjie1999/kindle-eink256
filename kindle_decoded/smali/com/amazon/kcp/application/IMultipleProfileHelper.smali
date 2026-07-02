.class public interface abstract Lcom/amazon/kcp/application/IMultipleProfileHelper;
.super Ljava/lang/Object;
.source "IMultipleProfileHelper.java"


# virtual methods
.method public abstract addOwnership(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getOwnershipCount(Ljava/lang/String;)I
.end method

.method public abstract getSecuredStorageDirectory()Ljava/io/File;
.end method

.method public abstract getSharedBookPath(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;
.end method

.method public abstract isSharedDownloadsEnabled()Z
.end method

.method public abstract revokeOwnership(Ljava/lang/String;)Z
.end method

.method public abstract setSharedDownloadsEnabled(Z)V
.end method

.method public abstract shareFileOrDirectory(Ljava/lang/String;ZZZ)Z
.end method
