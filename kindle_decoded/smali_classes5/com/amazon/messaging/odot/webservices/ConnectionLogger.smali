.class public Lcom/amazon/messaging/odot/webservices/ConnectionLogger;
.super Ljava/lang/Object;
.source "ConnectionLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/messaging/odot/webservices/ConnectionLogger$ConnectionStatistics;,
        Lcom/amazon/messaging/odot/webservices/ConnectionLogger$ConnectionState;
    }
.end annotation


# static fields
.field private static final AUTHENTICATED_TAG:Ljava/lang/String; = "Auth"

.field private static final METRIC_COMPONENT:Ljava/lang/String; = "Webservice"

.field private static final METRIC_DOMAIN:Ljava/lang/String; = "DCP"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAttemptCount:I

.field private mCollector:Lcom/amazon/messaging/odot/webservices/metrics/MetricsCollector;

.field private mParameters:Lcom/amazon/messaging/odot/webservices/ConnectionParameters;

.field private mStatistics:Lcom/amazon/messaging/odot/webservices/ConnectionLogger$ConnectionStatistics;

.field private mSystem:Lcom/amazon/messaging/odot/webservices/SystemWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lcom/amazon/messaging/odot/webservices/ConnectionLogger;

    invoke-static {v0}, Lcom/amazon/messaging/odot/util/OdotMessageUtil;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/messaging/odot/webservices/ConnectionLogger;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/messaging/odot/webservices/ConnectionParameters;)V
    .locals 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/ConnectionLogger;->mParameters:Lcom/amazon/messaging/odot/webservices/ConnectionParameters;

    .line 114
    new-instance p1, Lcom/amazon/messaging/odot/webservices/metrics/LoggingMetricsCollector;

    invoke-direct {p1}, Lcom/amazon/messaging/odot/webservices/metrics/LoggingMetricsCollector;-><init>()V

    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/ConnectionLogger;->mCollector:Lcom/amazon/messaging/odot/webservices/metrics/MetricsCollector;

    .line 115
    new-instance p1, Lcom/amazon/messaging/odot/webservices/ConnectionLogger$ConnectionStatistics;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/amazon/messaging/odot/webservices/ConnectionLogger$ConnectionStatistics;-><init>(Lcom/amazon/messaging/odot/webservices/ConnectionLogger$1;)V

    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/ConnectionLogger;->mStatistics:Lcom/amazon/messaging/odot/webservices/ConnectionLogger$ConnectionStatistics;

    const/4 p1, 0x1

    .line 116
    iput p1, p0, Lcom/amazon/messaging/odot/webservices/ConnectionLogger;->mAttemptCount:I

    .line 117
    new-instance p1, Lcom/amazon/messaging/odot/webservices/SystemWrapper;

    invoke-direct {p1}, Lcom/amazon/messaging/odot/webservices/SystemWrapper;-><init>()V

    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/ConnectionLogger;->mSystem:Lcom/amazon/messaging/odot/webservices/SystemWrapper;

    return-void
.end method

.method private performStateTransition(Lcom/amazon/messaging/odot/webservices/ConnectionLogger$ConnectionState;Lcom/amazon/messaging/odot/webservices/ConnectionLogger$ConnectionState;)V
    .locals 3

    .line 302
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionLogger;->mStatistics:Lcom/amazon/messaging/odot/webservices/ConnectionLogger$ConnectionStatistics;

    iget-object v0, v0, Lcom/amazon/messaging/odot/webservices/ConnectionLogger$ConnectionStatistics;->connectionState:Lcom/amazon/messaging/odot/webservices/ConnectionLogger$ConnectionState;

    if-eq v0, p1, :cond_0

    if-eq v0, p2, :cond_0

    .line 303
    sget-object p1, Lcom/amazon/messaging/odot/webservices/ConnectionLogger;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "Unexpected state transition %s -> %s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/messaging/odot/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :cond_0
    iget-object p1, p0, Lcom/amazon/messaging/odot/webservices/ConnectionLogger;->mStatistics:Lcom/amazon/messaging/odot/webservices/ConnectionLogger$ConnectionStatistics;

    iput-object p2, p1, Lcom/amazon/messaging/odot/webservices/ConnectionLogger$ConnectionStatistics;->connectionState:Lcom/amazon/messaging/odot/webservices/ConnectionLogger$ConnectionState;

    return-void
.end method


# virtual methods
.method public logConnectionAttempt(Ljava/lang/String;)V
    .locals 7

    .line 121
    sget-object v0, Lcom/amazon/messaging/odot/webservices/ConnectionLogger$ConnectionState;->SettingUp:Lcom/amazon/messaging/odot/webservices/ConnectionLogger$ConnectionState;

    sget-object v1, Lcom/amazon/messaging/odot/webservices/ConnectionLogger$ConnectionState;->Handshaking:Lcom/amazon/messaging/odot/webservices/ConnectionLogger$ConnectionState;

    invoke-direct {p0, v0, v1}, Lcom/amazon/messaging/odot/webservices/ConnectionLogger;->performStateTransition(Lcom/amazon/messaging/odot/webservices/ConnectionLogger$ConnectionState;Lcom/amazon/messaging/odot/webservices/ConnectionLogger$ConnectionState;)V

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionLogger;->mParameters:Lcom/amazon/messaging/odot/webservices/ConnectionParameters;

    invoke-virtual {v0}, Lcom/amazon/messaging/odot/webservices/ConnectionParameters;->getOriginalUrl()Ljava/net/URL;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/amazon/messaging/odot/webservices/ConnectionLogger;->mParameters:Lcom/amazon/messaging/odot/webservices/ConnectionParameters;

    invoke-virtual {v1}, Lcom/amazon/messaging/odot/webservices/ConnectionParameters;->getUrl()Ljava/net/URL;

    move-result-object v1

    .line 127
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_0

    const-string v2, "(rewritten from %s)"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    .line 131
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 134
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s %s %s (attempt %d)"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v4

    aput-object v1, v6, v5

    const/4 p1, 0x2

    aput-object v2, v6, p1

    const/4 p1, 0x3

    iget v1, p0, Lcom/amazon/messaging/odot/webservices/ConnectionLogger;->mAttemptCount:I

    .line 135
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, p1

    .line 134
    invoke-static {v0, v3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "amzn1.account"

    .line 140
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "(amzn1\\.account\\.)([A-Z0-9]*)(/*)"

    .line 142
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 143
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const-string v0, "$1XXXX$3"

    .line 144
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 147
    :cond_1
    sget-object v0, Lcom/amazon/messaging/odot/webservices/ConnectionLogger;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/amazon/messaging/odot/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget p1, p0, Lcom/amazon/messaging/odot/webservices/ConnectionLogger;->mAttemptCount:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/amazon/messaging/odot/webservices/ConnectionLogger;->mAttemptCount:I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    iget-object p1, p0, Lcom/amazon/messaging/odot/webservices/ConnectionLogger;->mStatistics:Lcom/amazon/messaging/odot/webservices/ConnectionLogger$ConnectionStatistics;

    iget-wide v0, p1, Lcom/amazon/messaging/odot/webservices/ConnectionLogger$ConnectionStatistics;->connectionStartNanos:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 155
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionLogger;->mSystem:Lcom/amazon/messaging/odot/webservices/SystemWrapper;

    invoke-virtual {v0}, Lcom/amazon/messaging/odot/webservices/SystemWrapper;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/amazon/messaging/odot/webservices/ConnectionLogger$ConnectionStatistics;->connectionStartNanos:J

    :cond_2
    return-void

    :catch_0
    move-exception p1

    .line 151
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public logConnectionFailed(Ljava/io/IOException;)V
    .locals 7

    .line 219
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 221
    sget-object v1, Lcom/amazon/messaging/odot/webservices/ConnectionLogger;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x1

    aput-object p1, v2, v4

    const-string p1, "%s occurred: %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/amazon/messaging/odot/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object p1, p0, Lcom/amazon/messaging/odot/webservices/ConnectionLogger;->mParameters:Lcom/amazon/messaging/odot/webservices/ConnectionParameters;

    invoke-virtual {p1}, Lcom/amazon/messaging/odot/webservices/ConnectionParameters;->getMetricName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 225
    new-instance v1, Lcom/amazon/messaging/odot/webservices/metrics/MetricIdentifier;

    sget-object v2, Lcom/amazon/messaging/odot/webservices/metrics/MetricIdentifier$Level;->INFO:Lcom/amazon/messaging/odot/webservices/metrics/MetricIdentifier$Level;

    const-string v5, "DCP"

    const-string v6, "Webservice"

    invoke-direct {v1, v2, v5, v6, p1}, Lcom/amazon/messaging/odot/webservices/metrics/MetricIdentifier;-><init>(Lcom/amazon/messaging/odot/webservices/metrics/MetricIdentifier$Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 229
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "success"

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionLogger;->mCollector:Lcom/amazon/messaging/odot/webservices/metrics/MetricsCollector;

    invoke-interface {v0, v1, p1}, Lcom/amazon/messaging/odot/webservices/metrics/MetricsCollector;->incrementMetricCounter(Lcom/amazon/messaging/odot/webservices/metrics/MetricIdentifier;Ljava/util/Map;)V

    :cond_0
    return-void
.end method
