.class public Lcom/amazon/whispersync/dcp/framework/webrpc/RPC;
.super Ljava/lang/Object;
.source "RPC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/dcp/framework/webrpc/RPC$Factory;
    }
.end annotation


# static fields
.field private static final NUMBER:Ljava/util/regex/Pattern;


# instance fields
.field private final mAccountId:Ljava/lang/String;

.field private mCallExecutorFactory:Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor$Factory;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field

.field private mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\\d+"

    .line 23
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/webrpc/RPC;->NUMBER:Ljava/util/regex/Pattern;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/RPC;->mAccountId:Ljava/lang/String;

    return-void
.end method

.method private getTimeoutFromDate(Ljava/lang/String;)J
    .locals 9

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 132
    :try_start_0
    invoke-static {p1}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    .line 133
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    .line 134
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sub-long/2addr v3, v5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    cmp-long v5, v3, v0

    if-gez v5, :cond_0

    .line 137
    iget-object v6, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/RPC;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    const-string v7, "Looks like the device and server clocks are not synchronized."

    new-array v8, v2, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->w(Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    if-lez v5, :cond_1

    move-wide v0, v3

    :cond_1
    return-wide v0

    :catch_0
    move-exception v3

    .line 144
    iget-object v4, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/RPC;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v2

    const-string p1, "Cannot parse HTTP-date value \'%s\'."

    invoke-static {p1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v3, p1, v2}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    return-wide v0
.end method

.method private headerToMillis(Ljava/util/List;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_3

    .line 108
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 113
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 114
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "never"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 118
    :cond_1
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/webrpc/RPC;->NUMBER:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0

    .line 124
    :cond_2
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/webrpc/RPC;->getTimeoutFromDate(Ljava/lang/String;)J

    move-result-wide v0

    :cond_3
    :goto_0
    return-wide v0
.end method

.method private logResponseInformation(Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResponseType:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult<",
            "TResponseType;>;)V"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/RPC;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x2

    const-string v4, "Response Headers:"

    invoke-virtual {v0, v3, v4, v2}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->e(ILjava/lang/String;[Ljava/lang/Object;)I

    .line 153
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 155
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 156
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    const-string v6, ","

    invoke-static {v6, v2}, Lcom/amazon/whispersync/dcp/framework/StringUtils;->join(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    if-nez v5, :cond_0

    .line 160
    iget-object v4, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/RPC;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v2, v5}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->e(ILjava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 164
    :cond_0
    iget-object v6, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/RPC;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v5, v7, v1

    aput-object v2, v7, v4

    const-string v2, "%s: %s"

    invoke-virtual {v6, v3, v2, v7}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->e(ILjava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/RPC;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "Response Body: %s"

    invoke-virtual {v0, v3, p1, v2}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->e(ILjava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method private validateResponseSuccessful(Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResponseType:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult<",
            "TResponseType;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;->isSucceeded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/webrpc/RPC;->logResponseInformation(Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;)V

    .line 72
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/dcp/framework/webrpc/RPC;->generateException(Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected generateException(Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResponseType:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult<",
            "TResponseType;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dcp/framework/webrpc/ServiceErrorException;
        }
    .end annotation

    .line 79
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;->getResponseCode()I

    move-result v0

    .line 80
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;->getRawResponse()[B

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "<null response>"

    goto :goto_0

    .line 81
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    move-object v1, v2

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 82
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const-string v1, "Request Failure: Response Code %d\n%s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x190

    if-lt v0, v2, :cond_2

    const/16 v2, 0x1f4

    if-lt v0, v2, :cond_1

    goto :goto_1

    .line 89
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 92
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;->getHeaders()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 94
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v2, "Retry-After"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/dcp/framework/webrpc/RPC;->headerToMillis(Ljava/util/List;)J

    move-result-wide v2

    .line 95
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;->getHeaders()Ljava/util/Map;

    move-result-object p1

    const-string v0, "X-ADP-Call-After"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/webrpc/RPC;->headerToMillis(Ljava/util/List;)J

    move-result-wide v4

    .line 96
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_3

    .line 99
    new-instance p1, Lcom/amazon/whispersync/dcp/framework/webrpc/ServiceThrottlingException;

    invoke-direct {p1, v1, v2, v3}, Lcom/amazon/whispersync/dcp/framework/webrpc/ServiceThrottlingException;-><init>(Ljava/lang/String;J)V

    throw p1

    .line 103
    :cond_3
    new-instance p1, Lcom/amazon/whispersync/dcp/framework/webrpc/ServiceErrorException;

    invoke-direct {p1, v1}, Lcom/amazon/whispersync/dcp/framework/webrpc/ServiceErrorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public makeRequest(Ljava/lang/String;Ljava/lang/Object;Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallMetadata;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RequestType:",
            "Ljava/lang/Object;",
            "ResponseType:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TRequestType;",
            "Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallMetadata<",
            "TResponseType;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult<",
            "TResponseType;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/RPC;->mCallExecutorFactory:Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor$Factory;

    iget-object v3, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/RPC;->mAccountId:Ljava/lang/String;

    move-object v1, p3

    move-object v2, p1

    move-object v4, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor$Factory;->create(Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallMetadata;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;->execute()Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;

    move-result-object p1

    .line 61
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/webrpc/RPC;->validateResponseSuccessful(Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;)V

    return-object p1
.end method
