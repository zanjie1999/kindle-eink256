.class public Lcom/amazon/device/sync/rpc/SyncRPC;
.super Lcom/amazon/whispersync/dcp/framework/webrpc/RPC;
.source "SyncRPC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/sync/rpc/SyncRPC$Factory;
    }
.end annotation


# static fields
.field private static final MAX_RETRIES_ON_REDIRECT:Lcom/amazon/whispersync/dcp/settings/SettingInteger;

.field private static final NUMBER:Ljava/util/regex/Pattern;


# instance fields
.field private mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 31
    new-instance v0, Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    sget-object v1, Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;->DeviceGlobal:Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;

    const-string v2, "com.amazon.device.sync.DEFAULT_MAX_RETRIES_ON_REDIRECT"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/whispersync/dcp/settings/SettingInteger;-><init>(Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/sync/rpc/SyncRPC;->MAX_RETRIES_ON_REDIRECT:Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    const-string v0, "\\d+"

    .line 35
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/sync/rpc/SyncRPC;->NUMBER:Ljava/util/regex/Pattern;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/webrpc/RPC;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static getHeader(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 166
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 170
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static headerToMs(Ljava/util/List;)J
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

    if-eqz p0, :cond_2

    .line 175
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 180
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_2

    .line 181
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 185
    :cond_1
    sget-object v2, Lcom/amazon/device/sync/rpc/SyncRPC;->NUMBER:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 187
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    :cond_2
    :goto_0
    return-wide v0
.end method


# virtual methods
.method protected generateException(Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResponseType:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult<",
            "TResponseType;>;)V"
        }
    .end annotation

    .line 106
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;->getResponseCode()I

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 107
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Request Failure: Response Code %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 109
    iget-object v1, p0, Lcom/amazon/device/sync/rpc/SyncRPC;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v5, v2}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 110
    iget-object v1, p0, Lcom/amazon/device/sync/rpc/SyncRPC;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error Response: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->v(Ljava/lang/String;[Ljava/lang/Object;)I

    const/16 v1, 0x194

    if-eq v0, v1, :cond_7

    const/16 v1, 0x133

    if-eq v0, v1, :cond_6

    const-string/jumbo v1, "x-amzn-RequestId"

    const-string v2, "Date"

    const/16 v3, 0x190

    if-ne v0, v3, :cond_1

    .line 125
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;->getHeaders()Ljava/util/Map;

    move-result-object v4

    const-string v6, "Retry-After"

    invoke-interface {v4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/amazon/device/sync/rpc/SyncRPC;->getHeader(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 128
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/amazon/device/sync/rpc/SyncRPC;->getHeader(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 129
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;->getHeaders()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcom/amazon/device/sync/rpc/SyncRPC;->headerToMs(Ljava/util/List;)J

    move-result-wide v10

    .line 130
    new-instance p1, Lcom/amazon/device/sync/failures/ThrottlingException;

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v4, p1

    invoke-direct/range {v4 .. v11}, Lcom/amazon/device/sync/failures/ThrottlingException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;J)V

    throw p1

    :cond_1
    :goto_0
    if-eq v0, v3, :cond_5

    const/16 v4, 0x193

    if-eq v0, v4, :cond_4

    const/16 v4, 0x191

    if-eq v0, v4, :cond_3

    if-lt v0, v3, :cond_2

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_2

    .line 158
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 161
    :cond_2
    new-instance v1, Lcom/amazon/device/sync/rpc/RPCException;

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;->getHeaders()Ljava/util/Map;

    move-result-object p1

    invoke-direct {v1, v5, v0, p1}, Lcom/amazon/device/sync/rpc/RPCException;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    throw v1

    .line 147
    :cond_3
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/amazon/device/sync/rpc/SyncRPC;->getHeader(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 148
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;->getHeaders()Ljava/util/Map;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/amazon/device/sync/rpc/SyncRPC;->getHeader(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 149
    new-instance p1, Lcom/amazon/device/sync/failures/AuthenticationFailedException;

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lcom/amazon/device/sync/failures/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;)V

    throw p1

    .line 140
    :cond_4
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/amazon/device/sync/rpc/SyncRPC;->getHeader(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 141
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;->getHeaders()Ljava/util/Map;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/amazon/device/sync/rpc/SyncRPC;->getHeader(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 142
    new-instance p1, Lcom/amazon/device/sync/failures/AccessDeniedException;

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lcom/amazon/device/sync/failures/AccessDeniedException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;)V

    throw p1

    .line 135
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 122
    :cond_6
    new-instance v0, Lcom/amazon/device/sync/rpc/TemporaryRedirectException;

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;->getHeaders()Ljava/util/Map;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/amazon/device/sync/rpc/TemporaryRedirectException;-><init>(Ljava/util/Map;)V

    throw v0

    .line 115
    :cond_7
    new-instance p1, Lcom/amazon/whispersync/ResourceNotAvailableException;

    invoke-direct {p1}, Lcom/amazon/whispersync/ResourceNotAvailableException;-><init>()V

    .line 116
    invoke-virtual {p1, v5}, Lcom/amazon/whispersync/ResourceNotAvailableException;->setReason(Ljava/lang/String;)V

    .line 117
    throw p1
.end method

.method public makeRedirectSafeRequest(Ljava/lang/String;Ljava/lang/Object;Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallMetadata;Ljava/lang/String;I)Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;
    .locals 9
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
            "I)",
            "Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult<",
            "TResponseType;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    sget-object v0, Lcom/amazon/device/sync/rpc/SyncRPC;->MAX_RETRIES_ON_REDIRECT:Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/settings/SettingInteger;->getValue()I

    move-result v0

    if-gt p5, v0, :cond_0

    .line 92
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/amazon/whispersync/dcp/framework/webrpc/RPC;->makeRequest(Ljava/lang/String;Ljava/lang/Object;Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallMetadata;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;

    move-result-object p1
    :try_end_0
    .catch Lcom/amazon/device/sync/rpc/TemporaryRedirectException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 96
    iget-object v0, p0, Lcom/amazon/device/sync/rpc/SyncRPC;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request temporarily redirected with response code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/device/sync/rpc/RPCException;->getHttpStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Making attempt number:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, p5, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p5, v1}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    const-string p5, "location"

    .line 98
    invoke-virtual {p1, p5}, Lcom/amazon/device/sync/rpc/RPCException;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .line 99
    invoke-virtual/range {v3 .. v8}, Lcom/amazon/device/sync/rpc/SyncRPC;->makeRedirectSafeRequest(Ljava/lang/String;Ljava/lang/Object;Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallMetadata;Ljava/lang/String;I)Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;

    move-result-object p1

    return-object p1

    .line 87
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Maximum number of retries attempted:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lcom/amazon/device/sync/rpc/SyncRPC;->MAX_RETRIES_ON_REDIRECT:Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

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

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 64
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/device/sync/rpc/SyncRPC;->makeRedirectSafeRequest(Ljava/lang/String;Ljava/lang/Object;Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallMetadata;Ljava/lang/String;I)Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;

    move-result-object p1

    return-object p1
.end method

.method public makeRequestNoRedirect(Ljava/lang/String;Ljava/lang/Object;Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallMetadata;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;
    .locals 0
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

    .line 72
    invoke-super {p0, p1, p2, p3, p4}, Lcom/amazon/whispersync/dcp/framework/webrpc/RPC;->makeRequest(Ljava/lang/String;Ljava/lang/Object;Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallMetadata;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;

    move-result-object p1

    return-object p1
.end method
