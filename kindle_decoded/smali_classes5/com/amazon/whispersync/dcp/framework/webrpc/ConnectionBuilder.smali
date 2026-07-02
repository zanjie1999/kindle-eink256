.class Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;
.super Ljava/lang/Object;
.source "ConnectionBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder$Factory;
    }
.end annotation


# static fields
.field private static final ALLOW_ANONYMOUS_CALL:Ljava/lang/String; = "allow_anonymous"

.field private static final AUTHENTICATION_TYPE:Ljava/lang/String; = "authentication_type"

.field private static final COMPRESSION_REQUIRED:Ljava/lang/String; = "compression_required"

.field private static final CONNECTION_TIMEOUT:Ljava/lang/String; = "connection_timeout_ms"

.field private static final CONNECTION_TYPE:Ljava/lang/String; = "connectivity_type"

.field private static final CONNECTIVITY_TIMEOUT:Ljava/lang/String; = "connectivity_waiting_timeout_ms"

.field private static final DEFAULT_CONNECTION_TIMEOUT:J

.field private static final DEFAULT_CONNECTION_TYPE:J = -0x1L

.field private static final DEFAULT_CONNECTIVITY_TIMEOUT:J

.field private static final DEFAULT_MAX_RETRIES:J = 0x3L

.field private static final DEFAULT_READ_TIMEOUT:J

.field private static final DEFAULT_SETTING_FORMAT:Ljava/lang/String; = "webrpc.%s.default"

.field private static final MAX_RETRIES:Ljava/lang/String; = "max_retries"

.field private static final METRIC_FORMAT:Ljava/lang/String; = "webrpc_%s"

.field private static final READ_TIMEOUT:Ljava/lang/String; = "read_timeout_ms"

.field private static final SETTING_FORMAT:Ljava/lang/String; = "webrpc.%s.%s"


# instance fields
.field private final mAccountId:Ljava/lang/String;

.field private final mBody:[B

.field private final mCallMetadata:Lcom/amazon/whispersync/dcp/framework/webrpc/CallMetadata;

.field private mConnectionBuilder:Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;

.field private mConnectionBuilderFactory:Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder$Factory;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field

.field private final mUrl:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 49
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;->DEFAULT_CONNECTION_TIMEOUT:J

    .line 52
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;->DEFAULT_READ_TIMEOUT:J

    .line 55
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;->DEFAULT_CONNECTIVITY_TIMEOUT:J

    return-void
.end method

.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/webrpc/CallMetadata;Ljava/net/URL;Ljava/lang/String;[B)V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;->mCallMetadata:Lcom/amazon/whispersync/dcp/framework/webrpc/CallMetadata;

    .line 81
    iput-object p2, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;->mUrl:Ljava/net/URL;

    .line 82
    iput-object p3, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;->mAccountId:Ljava/lang/String;

    .line 83
    iput-object p4, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;->mBody:[B

    return-void
.end method

.method private configureAuthentication()V
    .locals 6

    .line 113
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;->mCallMetadata:Lcom/amazon/whispersync/dcp/framework/webrpc/CallMetadata;

    invoke-interface {v0}, Lcom/amazon/whispersync/dcp/framework/webrpc/CallMetadata;->getAuthType()Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthType;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;->mAccountId:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    sget-object v1, Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthType;->ADPAuthenticator:Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthType;

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;->mCallMetadata:Lcom/amazon/whispersync/dcp/framework/webrpc/CallMetadata;

    invoke-interface {v1}, Lcom/amazon/whispersync/dcp/framework/webrpc/CallMetadata;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;->mCallMetadata:Lcom/amazon/whispersync/dcp/framework/webrpc/CallMetadata;

    invoke-interface {v4}, Lcom/amazon/whispersync/dcp/framework/webrpc/CallMetadata;->allowAnonymousCall()Z

    move-result v4

    const-string v5, "allow_anonymous"

    invoke-direct {p0, v1, v5, v4}, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;->getBooleanFromSettings(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;->mCallMetadata:Lcom/amazon/whispersync/dcp/framework/webrpc/CallMetadata;

    invoke-interface {v2}, Lcom/amazon/whispersync/dcp/framework/webrpc/CallMetadata;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "Anonymous call are prohibited for ADP webrpc %s call."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;->mCallMetadata:Lcom/amazon/whispersync/dcp/framework/webrpc/CallMetadata;

    invoke-interface {v1}, Lcom/amazon/whispersync/dcp/framework/webrpc/CallMetadata;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v4, "authentication_type"

    invoke-direct {p0, v1, v4, v0}, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;->getStringFromSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    const-class v1, Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthType;

    const/4 v4, 0x0

    invoke-static {v1, v0, v4}, Lcom/amazon/whispersync/dcp/framework/EnumHelpers;->parseEnum(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthType;

    if-eqz v1, :cond_2

    .line 137
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;->mConnectionBuilder:Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;

    new-instance v2, Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthMethod;

    iget-object v3, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;->mAccountId:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthMethod;-><init>(Ljava/lang/String;Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthType;)V

    invoke-virtual {v0, v2}, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;->withAuthMethod(Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthMethod;)Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;

    return-void

    .line 131
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;->mCallMetadata:Lcom/amazon/whispersync/dcp/framework/webrpc/CallMetadata;

    invoke-interface {v0}, Lcom/amazon/whispersync/dcp/framework/webrpc/CallMetadata;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    const-string v0, "Authentication type \'%s\' configured for webrpc call %s is invalid"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private configureCompression()V
    .locals 3

    .line 175
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;->mCallMetadata:Lcom/amazon/whispersync/dcp/framework/webrpc/CallMetadata;

    invoke-interface {v0}, Lcom/amazon/whispersync/dcp/framework/webrpc/CallMetadata;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;->mCallMetadata:Lcom/amazon/whispersync/dcp/framework/webrpc/CallMetadata;

    invoke-interface {v1}, Lcom/amazon/whispersync/dcp/framework/webrpc/CallMetadata;->isCompressionEnabled()Z

    move-result v1

    const-string v2, "compression_required"

    invoke-direct {p0, v2, v0, v1}, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;->getBooleanFromSettings(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;->mConnectionBuilder:Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;->withCompression()Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;

    :cond_0
    return-void
.end method

.method private configureConnectionType()V
    .locals 5

    .line 155
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;->mConnectionBuilder:Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;->mCallMetadata:Lcom/amazon/whispersync/dcp/framework/webrpc/CallMetadata;

    invoke-interface {v1}, Lcom/amazon/whispersync/dcp/framework/webrpc/CallMetadata;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "connectivity_type"

    const-wide/16 v3, -0x1

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;->getLongFromSettings(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;->viaNetworkType(I)Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;

    return-void
.end method

.method private configureConnectivityEnforcement()V
    .locals 5

    .line 162
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;->mConnectionBuilder:Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;->mCallMetadata:Lcom/amazon/whispersync/dcp/framework/webrpc/CallMetadata;

    invoke-interface {v1}, Lcom/amazon/whispersync/dcp/framework/webrpc/CallMetadata;->getName()Ljava/lang/String;

    move-result-object v1

    sget-wide v2, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;->DEFAULT_CONNECTIVITY_TIMEOUT:J

    const-string v4, "connectivity_waiting_timeout_ms"

    invoke-direct {p0, v1, v4, v2, v3}, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;->getLongFromSettings(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;->withConnectivityEnforced(JLjava/util/concurrent/TimeUnit;)Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;

    return-void
.end method

.method private configureForAmazonServiceCall()V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;->mConnectionBuilder:Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;->withIdentifier()Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;

    .line 143
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;->mConnectionBuilder:Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;->withStandardAmazonHeaders()Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;

    return-void
.end method

.method private configureInputOutput(Ljava/net/HttpURLConnection;)V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;->mBody:[B

    if-eqz v0, :cond_0

    array-length v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 195
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;->mCallMetadata:Lcom/amazon/whispersync/dcp/framework/webrpc/CallMetadata;

    invoke-interface {v0}, Lcom/amazon/whispersync/dcp/framework/webrpc/CallMetadata;->needToReadResponseBody()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    return-void
.end method

.method private configureMetric()V
    .locals 4

    .line 170
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;->mConnectionBuilder:Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;->mCallMetadata:Lcom/amazon/whispersync/dcp/framework/webrpc/CallMetadata;

    invoke-interface {v2}, Lcom/amazon/whispersync/dcp/framework/webrpc/CallMetadata;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "webrpc_%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;->withMetrics(Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;

    return-void
.end method

.method private configureRetry()V
    .locals 5

    .line 148
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;->mConnectionBuilder:Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;->mCallMetadata:Lcom/amazon/whispersync/dcp/framework/webrpc/CallMetadata;

    invoke-interface {v1}, Lcom/amazon/whispersync/dcp/framework/webrpc/CallMetadata;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "max_retries"

    const-wide/16 v3, 0x3

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;->getLongFromSettings(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;->withRetryLogic(I)Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;

    return-void
.end method

.method private configureTimeouts(Ljava/net/HttpURLConnection;)V
    .locals 4

    .line 183
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;->mCallMetadata:Lcom/amazon/whispersync/dcp/framework/webrpc/CallMetadata;

    invoke-interface {v0}, Lcom/amazon/whispersync/dcp/framework/webrpc/CallMetadata;->getName()Ljava/lang/String;

    move-result-object v0

    sget-wide v1, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;->DEFAULT_CONNECTION_TIMEOUT:J

    const-string v3, "connection_timeout_ms"

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;->getLongFromSettings(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    long-to-int v1, v0

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 187
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;->mCallMetadata:Lcom/amazon/whispersync/dcp/framework/webrpc/CallMetadata;

    invoke-interface {v0}, Lcom/amazon/whispersync/dcp/framework/webrpc/CallMetadata;->getName()Ljava/lang/String;

    move-result-object v0

    sget-wide v1, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;->DEFAULT_READ_TIMEOUT:J

    const-string/jumbo v3, "read_timeout_ms"

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;->getLongFromSettings(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    long-to-int v1, v0

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    return-void
.end method

.method private configureVerb(Ljava/net/HttpURLConnection;)V
    .locals 4

    .line 239
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;->mCallMetadata:Lcom/amazon/whispersync/dcp/framework/webrpc/CallMetadata;

    invoke-interface {v0}, Lcom/amazon/whispersync/dcp/framework/webrpc/CallMetadata;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 243
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;->mCallMetadata:Lcom/amazon/whispersync/dcp/framework/webrpc/CallMetadata;

    invoke-interface {v3}, Lcom/amazon/whispersync/dcp/framework/webrpc/CallMetadata;->getRequestMethod()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;->mCallMetadata:Lcom/amazon/whispersync/dcp/framework/webrpc/CallMetadata;

    invoke-interface {v3}, Lcom/amazon/whispersync/dcp/framework/webrpc/CallMetadata;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Invalid request method \'%s\' provided for webrpc call %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private createConnection()Ljava/net/HttpURLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;->mConnectionBuilder:Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;->build()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method private formatDefaultSetting(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string/jumbo p1, "webrpc.%s.default"

    .line 232
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private formatSettingName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string/jumbo p1, "webrpc.%s.%s"

    .line 227
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getBooleanFromSettings(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    .line 220
    invoke-static {}, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->getInstance()Lcom/amazon/whispersync/dcp/settings/SettingsCache;

    move-result-object v0

    .line 221
    invoke-direct {p0, p2, p1}, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;->formatSettingName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;->formatDefaultSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p3}, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method private getLongFromSettings(Ljava/lang/String;Ljava/lang/String;J)J
    .locals 1

    .line 211
    invoke-static {}, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->getInstance()Lcom/amazon/whispersync/dcp/settings/SettingsCache;

    move-result-object v0

    .line 212
    invoke-direct {p0, p2, p1}, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;->formatSettingName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;->formatDefaultSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p3, p4}, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->getLongValue(Ljava/lang/String;J)J

    move-result-wide p2

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->getLongValue(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method private getStringFromSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 202
    invoke-static {}, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->getInstance()Lcom/amazon/whispersync/dcp/settings/SettingsCache;

    move-result-object v0

    .line 203
    invoke-direct {p0, p2, p1}, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;->formatSettingName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;->formatDefaultSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p3}, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public build()Ljava/net/HttpURLConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;->mConnectionBuilderFactory:Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder$Factory;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;->mUrl:Ljava/net/URL;

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder$Factory;->create(Ljava/net/URL;)Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;->mConnectionBuilder:Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;

    .line 89
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;->configureForAmazonServiceCall()V

    .line 91
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;->configureRetry()V

    .line 92
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;->configureConnectionType()V

    .line 93
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;->configureConnectivityEnforcement()V

    .line 94
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;->configureMetric()V

    .line 95
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;->configureAuthentication()V

    .line 96
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;->configureCompression()V

    .line 98
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;->createConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 100
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;->configureTimeouts(Ljava/net/HttpURLConnection;)V

    .line 101
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;->configureVerb(Ljava/net/HttpURLConnection;)V

    .line 102
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;->configureInputOutput(Ljava/net/HttpURLConnection;)V

    return-object v0
.end method
