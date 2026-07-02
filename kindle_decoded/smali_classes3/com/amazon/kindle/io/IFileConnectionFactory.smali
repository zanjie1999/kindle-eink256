.class public interface abstract Lcom/amazon/kindle/io/IFileConnectionFactory;
.super Ljava/lang/Object;
.source "IFileConnectionFactory.java"


# virtual methods
.method public abstract avaliableSizeForPath(Ljava/lang/String;)J
.end method

.method public abstract getFileSeparator()C
.end method

.method public abstract getPathDescriptor()Lcom/amazon/kindle/io/IPathDescriptor;
.end method

.method public abstract openFile(Ljava/lang/String;)Lcom/amazon/kindle/io/IFileConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
