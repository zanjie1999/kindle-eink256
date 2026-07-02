.class Lcom/amazon/whispersync/dcp/framework/tracing/TracerWrapper;
.super Ljava/lang/Object;
.source "TracerWrapper.java"


# instance fields
.field private mEnabled:Z

.field private mTraceToTraceId:[I

.field private mTracer:Lcom/amazon/whispersync/dcp/framework/tracing/ITracer;

.field private final mTraces:[Lcom/amazon/whispersync/dcp/framework/tracing/TraceInformation;


# direct methods
.method public constructor <init>([Lcom/amazon/whispersync/dcp/framework/tracing/TraceInformation;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/tracing/TracerWrapper;->mTracer:Lcom/amazon/whispersync/dcp/framework/tracing/ITracer;

    .line 9
    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/tracing/TracerWrapper;->mTraceToTraceId:[I

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/amazon/whispersync/dcp/framework/tracing/TracerWrapper;->mEnabled:Z

    .line 14
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/tracing/TracerWrapper;->mTraces:[Lcom/amazon/whispersync/dcp/framework/tracing/TraceInformation;

    return-void
.end method

.method private registerTraces([Lcom/amazon/whispersync/dcp/framework/tracing/TraceInformation;)V
    .locals 6

    .line 51
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/tracing/TracerWrapper;->mTraceToTraceId:[I

    if-nez v0, :cond_0

    .line 53
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/tracing/TracerWrapper;->mTraceToTraceId:[I

    const/4 v0, 0x0

    .line 54
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/tracing/TracerWrapper;->mTraceToTraceId:[I

    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/tracing/TracerWrapper;->mTracer:Lcom/amazon/whispersync/dcp/framework/tracing/ITracer;

    aget-object v3, p1, v0

    invoke-interface {v3}, Lcom/amazon/whispersync/dcp/framework/tracing/TraceInformation;->getTraceName()Ljava/lang/String;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-interface {v4}, Lcom/amazon/whispersync/dcp/framework/tracing/TraceInformation;->getExtra1Name()Ljava/lang/String;

    move-result-object v4

    aget-object v5, p1, v0

    invoke-interface {v5}, Lcom/amazon/whispersync/dcp/framework/tracing/TraceInformation;->getExtra2Name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lcom/amazon/whispersync/dcp/framework/tracing/ITracer;->registerTrace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 1

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/amazon/whispersync/dcp/framework/tracing/TracerWrapper;->mEnabled:Z

    return-void
.end method

.method public enable()V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/tracing/TracerWrapper;->mTracer:Lcom/amazon/whispersync/dcp/framework/tracing/ITracer;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/tracing/TracerWrapper;->mTraces:[Lcom/amazon/whispersync/dcp/framework/tracing/TraceInformation;

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/dcp/framework/tracing/TracerWrapper;->registerTraces([Lcom/amazon/whispersync/dcp/framework/tracing/TraceInformation;)V

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/amazon/whispersync/dcp/framework/tracing/TracerWrapper;->mEnabled:Z

    return-void

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tracer should be set up first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTracer(Lcom/amazon/whispersync/dcp/framework/tracing/ITracer;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 25
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/tracing/TracerWrapper;->mTracer:Lcom/amazon/whispersync/dcp/framework/tracing/ITracer;

    if-nez v0, :cond_0

    .line 29
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/tracing/TracerWrapper;->mTracer:Lcom/amazon/whispersync/dcp/framework/tracing/ITracer;

    return-void

    .line 27
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Tracer cannot be replaced"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tracer cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public trace(Ljava/lang/Enum;II)V
    .locals 2

    .line 66
    iget-boolean v0, p0, Lcom/amazon/whispersync/dcp/framework/tracing/TracerWrapper;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/tracing/TracerWrapper;->mTracer:Lcom/amazon/whispersync/dcp/framework/tracing/ITracer;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/tracing/TracerWrapper;->mTraceToTraceId:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/whispersync/dcp/framework/tracing/ITracer;->trace(III)V

    :cond_0
    return-void
.end method

.method public trace(Ljava/lang/Enum;IILjava/lang/String;)V
    .locals 2

    .line 75
    iget-boolean v0, p0, Lcom/amazon/whispersync/dcp/framework/tracing/TracerWrapper;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/tracing/TracerWrapper;->mTracer:Lcom/amazon/whispersync/dcp/framework/tracing/ITracer;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/tracing/TracerWrapper;->mTraceToTraceId:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/amazon/whispersync/dcp/framework/tracing/ITracer;->trace(IIILjava/lang/String;)V

    :cond_0
    return-void
.end method
