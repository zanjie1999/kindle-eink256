.class public Lcom/amazon/messaging/odot/webservices/FailedConnection;
.super Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;
.source "FailedConnection.java"


# instance fields
.field private mFailureReason:Ljava/io/IOException;


# direct methods
.method private constructor <init>(Ljava/net/URLConnection;Ljava/io/IOException;)V
    .locals 1

    .line 21
    invoke-virtual {p1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;-><init>(Ljava/net/URL;)V

    .line 22
    invoke-virtual {p0, p1}, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->putInnerConnection(Ljava/net/URLConnection;)V

    .line 23
    iput-object p2, p0, Lcom/amazon/messaging/odot/webservices/FailedConnection;->mFailureReason:Ljava/io/IOException;

    return-void
.end method

.method public static create(Ljava/net/URLConnection;Ljava/io/IOException;Lcom/amazon/messaging/odot/webservices/ConnectionLogger;)Lcom/amazon/messaging/odot/webservices/FailedConnection;
    .locals 0

    .line 28
    invoke-virtual {p2, p1}, Lcom/amazon/messaging/odot/webservices/ConnectionLogger;->logConnectionFailed(Ljava/io/IOException;)V

    .line 30
    new-instance p2, Lcom/amazon/messaging/odot/webservices/FailedConnection;

    invoke-direct {p2, p0, p1}, Lcom/amazon/messaging/odot/webservices/FailedConnection;-><init>(Ljava/net/URLConnection;Ljava/io/IOException;)V

    return-object p2
.end method


# virtual methods
.method public connect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/FailedConnection;->mFailureReason:Ljava/io/IOException;

    throw v0
.end method

.method public disconnect()V
    .locals 0

    return-void
.end method

.method public getContent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/FailedConnection;->mFailureReason:Ljava/io/IOException;

    throw v0
.end method

.method public getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    iget-object p1, p0, Lcom/amazon/messaging/odot/webservices/FailedConnection;->mFailureReason:Ljava/io/IOException;

    throw p1
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentLength()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDate()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getHeaderFieldInt(Ljava/lang/String;I)I
    .locals 0

    return p2
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getHeaderFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/FailedConnection;->mFailureReason:Ljava/io/IOException;

    throw v0
.end method

.method public getLastModified()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/FailedConnection;->mFailureReason:Ljava/io/IOException;

    throw v0
.end method

.method public getPermission()Ljava/security/Permission;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/FailedConnection;->mFailureReason:Ljava/io/IOException;

    throw v0
.end method

.method public getResponseCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/FailedConnection;->mFailureReason:Ljava/io/IOException;

    throw v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/FailedConnection;->mFailureReason:Ljava/io/IOException;

    throw v0
.end method

.method protected onExecutionRequested()V
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This method should not be called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onExecutionResultsRequested()V
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This method should not be called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 75
    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "Connection attempt has been already performed"

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
