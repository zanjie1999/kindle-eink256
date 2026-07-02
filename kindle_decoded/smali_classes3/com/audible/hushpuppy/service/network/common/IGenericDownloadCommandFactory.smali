.class public interface abstract Lcom/audible/hushpuppy/service/network/common/IGenericDownloadCommandFactory;
.super Ljava/lang/Object;
.source "IGenericDownloadCommandFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/audible/mobile/downloader/interfaces/DownloadCommand;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract newGetDownloadCommand(Ljava/lang/String;)Lcom/audible/mobile/downloader/interfaces/DownloadCommand;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract newPostDownloadCommand(Ljava/lang/String;Ljava/lang/String;)Lcom/audible/mobile/downloader/interfaces/DownloadCommand;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract newPutDownloadCommand(Ljava/lang/String;Ljava/lang/String;)Lcom/audible/mobile/downloader/interfaces/DownloadCommand;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method
