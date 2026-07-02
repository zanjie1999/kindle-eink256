.class public interface abstract Lcom/amazon/kedu/ftue/assets/IFileProvider;
.super Ljava/lang/Object;
.source "IFileProvider.java"


# virtual methods
.method public abstract deleteDirectory(Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getAssetDirectory()Ljava/io/File;
.end method

.method public abstract getFile(Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract getInputStream(Ljava/io/File;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getSeparator()Ljava/lang/String;
.end method

.method public abstract getVersionDirectory(I)Ljava/io/File;
.end method

.method public abstract getVersionFile(ILjava/lang/String;)Ljava/io/File;
.end method

.method public abstract readTextFile(Ljava/io/File;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readTextStream(Ljava/io/InputStream;)Ljava/lang/String;
.end method

.method public abstract writeTextFile(Ljava/io/File;Ljava/lang/String;)Z
.end method
