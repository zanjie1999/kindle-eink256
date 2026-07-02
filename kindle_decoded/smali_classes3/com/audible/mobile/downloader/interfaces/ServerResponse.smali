.class public interface abstract Lcom/audible/mobile/downloader/interfaces/ServerResponse;
.super Ljava/lang/Object;
.source "ServerResponse.java"


# virtual methods
.method public abstract contentLength()Ljava/lang/Long;
.end method

.method public abstract isError()Z
.end method

.method public abstract isFatalError()Z
.end method

.method public abstract isResponseReadable()Z
.end method

.method public abstract isSuccess()Z
.end method

.method public abstract parseServerErrorMessage(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract redirectTo()Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation
.end method
