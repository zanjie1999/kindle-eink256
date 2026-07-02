.class public final Lcom/amazon/whispersync/dcp/framework/HttpHelper;
.super Ljava/lang/Object;
.source "HttpHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/dcp/framework/HttpHelper$ServerErrorException;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static check(Lorg/apache/http/HttpResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dcp/framework/HttpHelper$ServerErrorException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 49
    div-int/lit8 v1, v0, 0x64

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    return-void

    .line 51
    :cond_0
    invoke-static {p0}, Lcom/amazon/whispersync/dcp/framework/HttpHelper;->extractResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object p0

    .line 52
    new-instance v1, Lcom/amazon/whispersync/dcp/framework/HttpHelper$ServerErrorException;

    invoke-direct {v1, v0, p0}, Lcom/amazon/whispersync/dcp/framework/HttpHelper$ServerErrorException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public static extractResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 65
    :cond_0
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 74
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/amazon/whispersync/org/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    invoke-static {p0}, Lcom/amazon/whispersync/dcp/framework/StreamHelpers;->closeStream(Ljava/io/InputStream;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {p0}, Lcom/amazon/whispersync/dcp/framework/StreamHelpers;->closeStream(Ljava/io/InputStream;)V

    throw v0
.end method
