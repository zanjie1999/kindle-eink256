.class public Lcom/amazon/kindle/krx/download/AbstractHttpResponseHandler;
.super Ljava/lang/Object;
.source "AbstractHttpResponseHandler.java"

# interfaces
.implements Lcom/amazon/kindle/krx/download/IHttpResponseInputStreamHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResponseHeaderNames()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 54
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onDownloadComplete(ILcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;)V
    .locals 0

    return-void
.end method

.method public onInputStream(Ljava/io/InputStream;)V
    .locals 0

    return-void
.end method

.method public onResponseHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusCode(I)V
    .locals 0

    return-void
.end method
