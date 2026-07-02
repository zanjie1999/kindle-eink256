.class public Lcom/amazon/messaging/odot/webservices/ConnectionWithBufferedOutput;
.super Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;
.source "ConnectionWithBufferedOutput.java"


# instance fields
.field private mBodyProcessed:Z

.field final mBodyStream:Ljava/io/ByteArrayOutputStream;

.field private final mReceiver:Lcom/amazon/messaging/odot/webservices/BodyReceiver;


# direct methods
.method public constructor <init>(Ljava/net/URLConnection;Lcom/amazon/messaging/odot/webservices/BodyReceiver;)V
    .locals 1

    .line 27
    invoke-virtual {p1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;-><init>(Ljava/net/URL;)V

    .line 15
    new-instance v0, Lcom/amazon/messaging/odot/webservices/ConnectionWithBufferedOutput$1;

    invoke-direct {v0, p0}, Lcom/amazon/messaging/odot/webservices/ConnectionWithBufferedOutput$1;-><init>(Lcom/amazon/messaging/odot/webservices/ConnectionWithBufferedOutput;)V

    iput-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWithBufferedOutput;->mBodyStream:Ljava/io/ByteArrayOutputStream;

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWithBufferedOutput;->mBodyProcessed:Z

    .line 28
    invoke-virtual {p0, p1}, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->putInnerConnection(Ljava/net/URLConnection;)V

    .line 29
    iput-object p2, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWithBufferedOutput;->mReceiver:Lcom/amazon/messaging/odot/webservices/BodyReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/messaging/odot/webservices/ConnectionWithBufferedOutput;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/amazon/messaging/odot/webservices/ConnectionWithBufferedOutput;->processBody()V

    return-void
.end method

.method private processBody()V
    .locals 2

    .line 33
    iget-boolean v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWithBufferedOutput;->mBodyProcessed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWithBufferedOutput;->mBodyProcessed:Z

    .line 39
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWithBufferedOutput;->mReceiver:Lcom/amazon/messaging/odot/webservices/BodyReceiver;

    iget-object v1, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWithBufferedOutput;->mBodyStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/messaging/odot/webservices/BodyReceiver;->onBodyAvailable([B)Ljava/net/URLConnection;

    move-result-object v0

    .line 40
    invoke-virtual {p0, v0}, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->putInnerConnection(Ljava/net/URLConnection;)V

    return-void
.end method


# virtual methods
.method public connect()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWithBufferedOutput;->mBodyStream:Ljava/io/ByteArrayOutputStream;

    return-object v0
.end method

.method protected onExecutionResultsRequested()V
    .locals 0

    .line 45
    invoke-super {p0}, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->onExecutionResultsRequested()V

    .line 46
    invoke-direct {p0}, Lcom/amazon/messaging/odot/webservices/ConnectionWithBufferedOutput;->processBody()V

    return-void
.end method
