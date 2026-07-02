.class public Lamazon/whispersync/communication/srr/SrrRequest$Builder;
.super Ljava/lang/Object;
.source "SrrRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamazon/whispersync/communication/srr/SrrRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final sBuilderNullMetricEvent:Lcom/amazon/whispersync/client/metrics/MetricEvent;


# instance fields
.field private mBuilderCompressionOption:Lamazon/whispersync/communication/connection/CompressionOption;

.field private mBuilderEndpointIdentity:Lamazon/whispersync/communication/identity/EndpointIdentity;

.field private mBuilderIsClearTextAllowed:Z

.field private mBuilderIsWiFiNecessary:Z

.field private mBuilderMetricEvent:Lcom/amazon/whispersync/client/metrics/MetricEvent;

.field private mBuilderRequest:Lorg/apache/http/client/methods/HttpRequestBase;

.field private mBuilderRequestContext:Lamazon/whispersync/communication/authentication/RequestContext;

.field private mBuilderTimeoutInMillis:I

.field private mIsLocked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 54
    new-instance v0, Lcom/amazon/whispersync/client/metrics/NullMetricEvent;

    const-string v1, "Srr"

    const-string v2, "SrrRequest"

    invoke-direct {v0, v1, v2}, Lcom/amazon/whispersync/client/metrics/NullMetricEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lamazon/whispersync/communication/srr/SrrRequest$Builder;->sBuilderNullMetricEvent:Lcom/amazon/whispersync/client/metrics/MetricEvent;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    sget-object v0, Lamazon/whispersync/communication/srr/SrrRequest$Builder;->sBuilderNullMetricEvent:Lcom/amazon/whispersync/client/metrics/MetricEvent;

    iput-object v0, p0, Lamazon/whispersync/communication/srr/SrrRequest$Builder;->mBuilderMetricEvent:Lcom/amazon/whispersync/client/metrics/MetricEvent;

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lamazon/whispersync/communication/srr/SrrRequest$Builder;->mBuilderTimeoutInMillis:I

    .line 64
    sget-object v1, Lamazon/whispersync/communication/connection/CompressionOption;->ALLOWED:Lamazon/whispersync/communication/connection/CompressionOption;

    iput-object v1, p0, Lamazon/whispersync/communication/srr/SrrRequest$Builder;->mBuilderCompressionOption:Lamazon/whispersync/communication/connection/CompressionOption;

    .line 65
    iput-boolean v0, p0, Lamazon/whispersync/communication/srr/SrrRequest$Builder;->mBuilderIsWiFiNecessary:Z

    .line 66
    iput-boolean v0, p0, Lamazon/whispersync/communication/srr/SrrRequest$Builder;->mBuilderIsClearTextAllowed:Z

    const/4 v1, 0x0

    .line 67
    iput-object v1, p0, Lamazon/whispersync/communication/srr/SrrRequest$Builder;->mBuilderRequestContext:Lamazon/whispersync/communication/authentication/RequestContext;

    .line 75
    iput-boolean v0, p0, Lamazon/whispersync/communication/srr/SrrRequest$Builder;->mIsLocked:Z

    return-void
.end method

.method static synthetic access$100(Lamazon/whispersync/communication/srr/SrrRequest$Builder;)Lamazon/whispersync/communication/identity/EndpointIdentity;
    .locals 0

    .line 52
    iget-object p0, p0, Lamazon/whispersync/communication/srr/SrrRequest$Builder;->mBuilderEndpointIdentity:Lamazon/whispersync/communication/identity/EndpointIdentity;

    return-object p0
.end method

.method static synthetic access$200(Lamazon/whispersync/communication/srr/SrrRequest$Builder;)I
    .locals 0

    .line 52
    iget p0, p0, Lamazon/whispersync/communication/srr/SrrRequest$Builder;->mBuilderTimeoutInMillis:I

    return p0
.end method

.method static synthetic access$300(Lamazon/whispersync/communication/srr/SrrRequest$Builder;)Lorg/apache/http/client/methods/HttpRequestBase;
    .locals 0

    .line 52
    iget-object p0, p0, Lamazon/whispersync/communication/srr/SrrRequest$Builder;->mBuilderRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    return-object p0
.end method

.method static synthetic access$400(Lamazon/whispersync/communication/srr/SrrRequest$Builder;)Lcom/amazon/whispersync/client/metrics/MetricEvent;
    .locals 0

    .line 52
    iget-object p0, p0, Lamazon/whispersync/communication/srr/SrrRequest$Builder;->mBuilderMetricEvent:Lcom/amazon/whispersync/client/metrics/MetricEvent;

    return-object p0
.end method

.method static synthetic access$500(Lamazon/whispersync/communication/srr/SrrRequest$Builder;)Lamazon/whispersync/communication/connection/CompressionOption;
    .locals 0

    .line 52
    iget-object p0, p0, Lamazon/whispersync/communication/srr/SrrRequest$Builder;->mBuilderCompressionOption:Lamazon/whispersync/communication/connection/CompressionOption;

    return-object p0
.end method

.method static synthetic access$600(Lamazon/whispersync/communication/srr/SrrRequest$Builder;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lamazon/whispersync/communication/srr/SrrRequest$Builder;->mBuilderIsWiFiNecessary:Z

    return p0
.end method

.method static synthetic access$700(Lamazon/whispersync/communication/srr/SrrRequest$Builder;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lamazon/whispersync/communication/srr/SrrRequest$Builder;->mBuilderIsClearTextAllowed:Z

    return p0
.end method

.method static synthetic access$800(Lamazon/whispersync/communication/srr/SrrRequest$Builder;)Lamazon/whispersync/communication/authentication/RequestContext;
    .locals 0

    .line 52
    iget-object p0, p0, Lamazon/whispersync/communication/srr/SrrRequest$Builder;->mBuilderRequestContext:Lamazon/whispersync/communication/authentication/RequestContext;

    return-object p0
.end method


# virtual methods
.method public build()Lamazon/whispersync/communication/srr/SrrRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 224
    iget-boolean v0, p0, Lamazon/whispersync/communication/srr/SrrRequest$Builder;->mIsLocked:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 227
    iput-boolean v0, p0, Lamazon/whispersync/communication/srr/SrrRequest$Builder;->mIsLocked:Z

    .line 228
    iget-object v0, p0, Lamazon/whispersync/communication/srr/SrrRequest$Builder;->mBuilderRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lamazon/whispersync/communication/srr/SrrRequest$Builder;->mBuilderEndpointIdentity:Lamazon/whispersync/communication/identity/EndpointIdentity;

    if-eqz v0, :cond_0

    .line 234
    new-instance v0, Lamazon/whispersync/communication/srr/SrrRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lamazon/whispersync/communication/srr/SrrRequest;-><init>(Lamazon/whispersync/communication/srr/SrrRequest$Builder;Lamazon/whispersync/communication/srr/SrrRequest$1;)V

    return-object v0

    .line 232
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EndpointIdentity cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Request cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_2
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "Instance already locked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCompressionOption(Lamazon/whispersync/communication/connection/CompressionOption;)Lamazon/whispersync/communication/srr/SrrRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 158
    iget-boolean v0, p0, Lamazon/whispersync/communication/srr/SrrRequest$Builder;->mIsLocked:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 162
    iput-object p1, p0, Lamazon/whispersync/communication/srr/SrrRequest$Builder;->mBuilderCompressionOption:Lamazon/whispersync/communication/connection/CompressionOption;

    :cond_0
    return-object p0

    .line 159
    :cond_1
    new-instance p1, Ljava/lang/IllegalAccessException;

    const-string v0, "Instance already locked"

    invoke-direct {p1, v0}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setEndpointIdentity(Lamazon/whispersync/communication/identity/EndpointIdentity;)Lamazon/whispersync/communication/srr/SrrRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 101
    iget-boolean v0, p0, Lamazon/whispersync/communication/srr/SrrRequest$Builder;->mIsLocked:Z

    if-nez v0, :cond_0

    .line 104
    iput-object p1, p0, Lamazon/whispersync/communication/srr/SrrRequest$Builder;->mBuilderEndpointIdentity:Lamazon/whispersync/communication/identity/EndpointIdentity;

    return-object p0

    .line 102
    :cond_0
    new-instance p1, Ljava/lang/IllegalAccessException;

    const-string v0, "Instance already locked"

    invoke-direct {p1, v0}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMetricEvent(Lcom/amazon/whispersync/client/metrics/MetricEvent;)Lamazon/whispersync/communication/srr/SrrRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 117
    iget-boolean v0, p0, Lamazon/whispersync/communication/srr/SrrRequest$Builder;->mIsLocked:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 121
    iput-object p1, p0, Lamazon/whispersync/communication/srr/SrrRequest$Builder;->mBuilderMetricEvent:Lcom/amazon/whispersync/client/metrics/MetricEvent;

    :cond_0
    return-object p0

    .line 118
    :cond_1
    new-instance p1, Ljava/lang/IllegalAccessException;

    const-string v0, "Instance already locked"

    invoke-direct {p1, v0}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lamazon/whispersync/communication/srr/SrrRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 86
    iget-boolean v0, p0, Lamazon/whispersync/communication/srr/SrrRequest$Builder;->mIsLocked:Z

    if-nez v0, :cond_0

    .line 89
    iput-object p1, p0, Lamazon/whispersync/communication/srr/SrrRequest$Builder;->mBuilderRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    return-object p0

    .line 87
    :cond_0
    new-instance p1, Ljava/lang/IllegalAccessException;

    const-string v0, "Instance already locked"

    invoke-direct {p1, v0}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRequestContext(Lamazon/whispersync/communication/authentication/RequestContext;)Lamazon/whispersync/communication/srr/SrrRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 210
    iget-boolean v0, p0, Lamazon/whispersync/communication/srr/SrrRequest$Builder;->mIsLocked:Z

    if-nez v0, :cond_0

    .line 213
    iput-object p1, p0, Lamazon/whispersync/communication/srr/SrrRequest$Builder;->mBuilderRequestContext:Lamazon/whispersync/communication/authentication/RequestContext;

    return-object p0

    .line 211
    :cond_0
    new-instance p1, Ljava/lang/IllegalAccessException;

    const-string v0, "Instance already locked"

    invoke-direct {p1, v0}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTimeout(I)Lamazon/whispersync/communication/srr/SrrRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 137
    iget-boolean v0, p0, Lamazon/whispersync/communication/srr/SrrRequest$Builder;->mIsLocked:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    .line 144
    iput p1, p0, Lamazon/whispersync/communication/srr/SrrRequest$Builder;->mBuilderTimeoutInMillis:I

    return-object p0

    .line 142
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Timeout must not be negative!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 138
    :cond_1
    new-instance p1, Ljava/lang/IllegalAccessException;

    const-string v0, "Instance already locked"

    invoke-direct {p1, v0}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
