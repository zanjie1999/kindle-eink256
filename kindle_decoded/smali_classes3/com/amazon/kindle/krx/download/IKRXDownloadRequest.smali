.class public interface abstract Lcom/amazon/kindle/krx/download/IKRXDownloadRequest;
.super Ljava/lang/Object;
.source "IKRXDownloadRequest.java"


# static fields
.field public static final DEFAULT_RETRIES:I = 0x3

.field public static final DEFAULT_TIMEOUT:I = 0x3a98

.field public static final HTTP_GET:Ljava/lang/String; = "GET"

.field public static final HTTP_POST:Ljava/lang/String; = "POST"


# virtual methods
.method public abstract getAction()Ljava/lang/String;
.end method

.method public abstract getAuthType()Lcom/amazon/kindle/krx/download/IKRXDownloadManager$AuthenticationType;
.end method

.method public abstract getBody()[B
.end method

.method public abstract getBookId()Ljava/lang/String;
.end method

.method public abstract getFilePath()Ljava/lang/String;
.end method

.method public abstract getHeaders()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getResponseHandler()Lcom/amazon/kindle/krx/download/IKRXResponseHandler;
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public abstract isCancelled()Z
.end method
