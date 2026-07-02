.class public Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;
.super Ljava/lang/Object;
.source "JsonCallExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RequestType:",
        "Ljava/lang/Object;",
        "ResponseType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "JsonCallExecutor"


# instance fields
.field private final mAccountId:Ljava/lang/String;

.field private final mCallMetadata:Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallMetadata<",
            "TResponseType;>;"
        }
    .end annotation
.end field

.field private mExecutorFactory:Lcom/amazon/whispersync/dcp/framework/webrpc/CallExecutor$Factory;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field

.field private mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field

.field private final mObjectMapper:Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;

.field private final mRequest:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRequestType;"
        }
    .end annotation
.end field

.field private mTracer:Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field

.field private final mUrl:Ljava/net/URL;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallMetadata;Ljava/net/URL;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallMetadata<",
            "TResponseType;>;",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            "TRequestType;)V"
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;->mCallMetadata:Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallMetadata;

    .line 107
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallMetadata;->createObjectMapper()Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;->mObjectMapper:Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;

    .line 108
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->getDeserializationConfig()Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object p1

    new-instance v0, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor$1;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor$1;-><init>(Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;)V

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;->addHandler(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationProblemHandler;)V

    .line 124
    iput-object p2, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;->mUrl:Ljava/net/URL;

    .line 125
    iput-object p3, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;->mAccountId:Ljava/lang/String;

    .line 126
    iput-object p4, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;->mRequest:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;)Lcom/amazon/whispersync/dcp/framework/DCPLog;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;)Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;->doExecute()Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;)Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;->parseResponse(Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;)Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;)Ljava/lang/Object;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;->mRequest:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;->mObjectMapper:Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;

    return-object p0
.end method

.method private createResultBasedOnRawResult(Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;)Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult<",
            "[B>;)",
            "Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult<",
            "TResponseType;>;"
        }
    .end annotation

    .line 211
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;-><init>(Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;)V

    return-object v0
.end method

.method private doExecute()Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult<",
            "TResponseType;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;->serializeBody()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;->executeRequest([B)Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;

    move-result-object v0

    .line 170
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;->mTracer:Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer;

    sget-object v2, Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer$Traces;->JSON_PARSING_RESPONSE:Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer$Traces;

    invoke-virtual {v1}, Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer;->currentThreadIdToExtra()I

    move-result v3

    new-instance v4, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor$4;

    invoke-direct {v4, p0, v0}, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor$4;-><init>(Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer;->trace(Ljava/lang/Enum;ILcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$NotThrowingCallable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;

    return-object v0
.end method

.method private executeRequest([B)Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;->mExecutorFactory:Lcom/amazon/whispersync/dcp/framework/webrpc/CallExecutor$Factory;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;->mCallMetadata:Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallMetadata;

    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;->mUrl:Ljava/net/URL;

    iget-object v3, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;->mAccountId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/amazon/whispersync/dcp/framework/webrpc/CallExecutor$Factory;->create(Lcom/amazon/whispersync/dcp/framework/webrpc/CallMetadata;Ljava/net/URL;Ljava/lang/String;[B)Lcom/amazon/whispersync/dcp/framework/webrpc/CallExecutor;

    move-result-object p1

    .line 235
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/webrpc/CallExecutor;->execute()Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;

    move-result-object p1

    return-object p1
.end method

.method private parseResponse(Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;)Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult<",
            "[B>;)",
            "Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult<",
            "TResponseType;>;"
        }
    .end annotation

    .line 183
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;->createResultBasedOnRawResult(Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;)Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;->isSucceeded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;->getResponse()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    if-eqz p1, :cond_0

    .line 189
    array-length v1, p1

    if-lez v1, :cond_0

    .line 193
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;->parseResponse([B)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;->setResponse(Ljava/lang/Object;)V

    .line 194
    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;->setRawResponse([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 198
    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;->mCallMetadata:Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallMetadata;

    invoke-virtual {v4}, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallMetadata;->getResponseClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    const-string v1, "Failed to parse server response into expected type %s: %s"

    invoke-virtual {v2, v1, v3}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 201
    invoke-virtual {v0, v5}, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;->setSucceeded(Z)V

    .line 202
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;->setErrorMessage(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method private parseResponse([B)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TResponseType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;->mObjectMapper:Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;->mCallMetadata:Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallMetadata;

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallMetadata;->getResponseClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private serializeBody()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;->mTracer:Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer;

    sget-object v1, Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer$Traces;->JSON_PARSING_REQUEST:Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer$Traces;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer;->currentThreadIdToExtra()I

    move-result v2

    new-instance v3, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor$5;

    invoke-direct {v3, p0}, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor$5;-><init>(Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer;->trace(Ljava/lang/Enum;ILcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$ThrowingCallable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method


# virtual methods
.method public execute()Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult<",
            "TResponseType;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;->mTracer:Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer;

    sget-object v1, Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer$Traces;->JSON_EXECUTION:Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer$Traces;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer;->currentThreadIdToExtra()I

    move-result v2

    new-instance v3, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor$3;

    invoke-direct {v3, p0}, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor$3;-><init>(Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer;->trace(Ljava/lang/Enum;ILcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$ThrowingCallable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;

    return-object v0
.end method

.method public submit(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ExecutorService;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult<",
            "TResponseType;>;>;"
        }
    .end annotation

    .line 131
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor$2;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor$2;-><init>(Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method
