.class interface abstract Lcom/audible/hushpuppy/sync/IFile;
.super Ljava/lang/Object;
.source "IFile.java"


# virtual methods
.method public abstract getPath()Ljava/lang/String;
.end method

.method public abstract open()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
