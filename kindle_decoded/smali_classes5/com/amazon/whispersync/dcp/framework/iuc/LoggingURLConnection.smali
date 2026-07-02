.class Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;
.super Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;
.source "LoggingURLConnection.java"


# instance fields
.field private mLogDownloads:Z

.field private mLogUploads:Z

.field private final mLogger:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;

.field private mResponseCode:Ljava/lang/Integer;

.field private final mTracer:Lcom/amazon/whispersync/dcp/framework/iuc/Tracer;


# direct methods
.method public constructor <init>(Ljava/net/URLConnection;Lcom/amazon/whispersync/dcp/framework/iuc/Tracer;Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;)V
    .locals 1

    .line 25
    invoke-virtual {p1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;-><init>(Ljava/net/URL;)V

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;->mLogUploads:Z

    .line 17
    iput-boolean v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;->mLogDownloads:Z

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;->mResponseCode:Ljava/lang/Integer;

    .line 27
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->putInnerConnection(Ljava/net/URLConnection;)V

    .line 29
    iput-object p2, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;->mTracer:Lcom/amazon/whispersync/dcp/framework/iuc/Tracer;

    .line 30
    iput-object p3, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;->mLogger:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;)Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;->mLogger:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;)Lcom/amazon/whispersync/dcp/framework/iuc/Tracer;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;->mTracer:Lcom/amazon/whispersync/dcp/framework/iuc/Tracer;

    return-object p0
.end method

.method static synthetic access$201(Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->connect()V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;)Z
    .locals 0

    .line 13
    iget-boolean p0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;->mLogUploads:Z

    return p0
.end method

.method static synthetic access$400(Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;)Ljava/lang/Integer;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;->mResponseCode:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$402(Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;->mResponseCode:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$501(Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getResponseCode()I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;)Z
    .locals 0

    .line 13
    iget-boolean p0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;->mLogDownloads:Z

    return p0
.end method

.method static synthetic access$701(Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;)V
    .locals 0

    .line 13
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->disconnect()V

    return-void
.end method


# virtual methods
.method public connect()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;->mTracer:Lcom/amazon/whispersync/dcp/framework/iuc/Tracer;

    sget-object v1, Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;->CONNECT:Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;

    new-instance v2, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$2;

    invoke-direct {v2, p0}, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$2;-><init>(Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;)V

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer;->traceOnCurrentThread(Ljava/lang/Enum;Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$ThrowingCallable;)Ljava/lang/Object;

    return-void
.end method

.method public disconnect()V
    .locals 3

    .line 311
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;->mTracer:Lcom/amazon/whispersync/dcp/framework/iuc/Tracer;

    sget-object v1, Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;->DISCONNECT:Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;

    new-instance v2, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$5;

    invoke-direct {v2, p0}, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$5;-><init>(Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;)V

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer;->traceOnCurrentThread(Ljava/lang/Enum;Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$NotThrowingCallable;)Ljava/lang/Object;

    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;->getResponseCode()I

    .line 191
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 195
    new-instance v1, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$4;

    invoke-direct {v1, p0, v0}, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$4;-><init>(Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;Ljava/io/InputStream;)V

    return-object v1
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 48
    new-instance v1, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1;

    invoke-direct {v1, p0, v0}, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1;-><init>(Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;Ljava/io/OutputStream;)V

    return-object v1
.end method

.method public getResponseCode()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;->mTracer:Lcom/amazon/whispersync/dcp/framework/iuc/Tracer;

    sget-object v1, Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;->GET_RESPONSE_CODE:Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;

    new-instance v2, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$3;

    invoke-direct {v2, p0}, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$3;-><init>(Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;)V

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer;->traceOnCurrentThread(Ljava/lang/Enum;Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$ThrowingCallable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public setLogDownloads(Z)V
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;->mLogDownloads:Z

    return-void
.end method

.method public setLogUploads(Z)V
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;->mLogUploads:Z

    return-void
.end method
