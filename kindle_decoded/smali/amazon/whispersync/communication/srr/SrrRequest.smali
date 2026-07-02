.class public Lamazon/whispersync/communication/srr/SrrRequest;
.super Ljava/lang/Object;
.source "SrrRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamazon/whispersync/communication/srr/SrrRequest$Builder;
    }
.end annotation


# static fields
.field private static final METRICS_SOURCE:Ljava/lang/String; = "SrrRequest"


# instance fields
.field private final mCompressionOption:Lamazon/whispersync/communication/connection/CompressionOption;

.field private final mEndpointIdentity:Lamazon/whispersync/communication/identity/EndpointIdentity;

.field private final mIsClearTextAllowed:Z

.field private final mIsWiFiNecessary:Z

.field private final mMetricEvent:Lcom/amazon/whispersync/client/metrics/MetricEvent;

.field private final mRequest:Lorg/apache/http/client/methods/HttpRequestBase;

.field private final mRequestContext:Lamazon/whispersync/communication/authentication/RequestContext;

.field private final mTimeoutInMillis:I


# direct methods
.method private constructor <init>(Lamazon/whispersync/communication/srr/SrrRequest$Builder;)V
    .locals 1

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    invoke-static {p1}, Lamazon/whispersync/communication/srr/SrrRequest$Builder;->access$100(Lamazon/whispersync/communication/srr/SrrRequest$Builder;)Lamazon/whispersync/communication/identity/EndpointIdentity;

    move-result-object v0

    iput-object v0, p0, Lamazon/whispersync/communication/srr/SrrRequest;->mEndpointIdentity:Lamazon/whispersync/communication/identity/EndpointIdentity;

    .line 240
    invoke-static {p1}, Lamazon/whispersync/communication/srr/SrrRequest$Builder;->access$200(Lamazon/whispersync/communication/srr/SrrRequest$Builder;)I

    move-result v0

    iput v0, p0, Lamazon/whispersync/communication/srr/SrrRequest;->mTimeoutInMillis:I

    .line 241
    invoke-static {p1}, Lamazon/whispersync/communication/srr/SrrRequest$Builder;->access$300(Lamazon/whispersync/communication/srr/SrrRequest$Builder;)Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object v0

    iput-object v0, p0, Lamazon/whispersync/communication/srr/SrrRequest;->mRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 242
    invoke-static {p1}, Lamazon/whispersync/communication/srr/SrrRequest$Builder;->access$400(Lamazon/whispersync/communication/srr/SrrRequest$Builder;)Lcom/amazon/whispersync/client/metrics/MetricEvent;

    move-result-object v0

    iput-object v0, p0, Lamazon/whispersync/communication/srr/SrrRequest;->mMetricEvent:Lcom/amazon/whispersync/client/metrics/MetricEvent;

    .line 243
    invoke-static {p1}, Lamazon/whispersync/communication/srr/SrrRequest$Builder;->access$500(Lamazon/whispersync/communication/srr/SrrRequest$Builder;)Lamazon/whispersync/communication/connection/CompressionOption;

    move-result-object v0

    iput-object v0, p0, Lamazon/whispersync/communication/srr/SrrRequest;->mCompressionOption:Lamazon/whispersync/communication/connection/CompressionOption;

    .line 244
    invoke-static {p1}, Lamazon/whispersync/communication/srr/SrrRequest$Builder;->access$600(Lamazon/whispersync/communication/srr/SrrRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lamazon/whispersync/communication/srr/SrrRequest;->mIsWiFiNecessary:Z

    .line 245
    invoke-static {p1}, Lamazon/whispersync/communication/srr/SrrRequest$Builder;->access$700(Lamazon/whispersync/communication/srr/SrrRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lamazon/whispersync/communication/srr/SrrRequest;->mIsClearTextAllowed:Z

    .line 246
    invoke-static {p1}, Lamazon/whispersync/communication/srr/SrrRequest$Builder;->access$800(Lamazon/whispersync/communication/srr/SrrRequest$Builder;)Lamazon/whispersync/communication/authentication/RequestContext;

    move-result-object p1

    iput-object p1, p0, Lamazon/whispersync/communication/srr/SrrRequest;->mRequestContext:Lamazon/whispersync/communication/authentication/RequestContext;

    return-void
.end method

.method synthetic constructor <init>(Lamazon/whispersync/communication/srr/SrrRequest$Builder;Lamazon/whispersync/communication/srr/SrrRequest$1;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lamazon/whispersync/communication/srr/SrrRequest;-><init>(Lamazon/whispersync/communication/srr/SrrRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public getCompressionOption()Lamazon/whispersync/communication/connection/CompressionOption;
    .locals 1

    .line 293
    iget-object v0, p0, Lamazon/whispersync/communication/srr/SrrRequest;->mCompressionOption:Lamazon/whispersync/communication/connection/CompressionOption;

    return-object v0
.end method

.method public getEndpointIdentity()Lamazon/whispersync/communication/identity/EndpointIdentity;
    .locals 1

    .line 264
    iget-object v0, p0, Lamazon/whispersync/communication/srr/SrrRequest;->mEndpointIdentity:Lamazon/whispersync/communication/identity/EndpointIdentity;

    return-object v0
.end method

.method public getMetricEvent()Lcom/amazon/whispersync/client/metrics/MetricEvent;
    .locals 1

    .line 275
    iget-object v0, p0, Lamazon/whispersync/communication/srr/SrrRequest;->mMetricEvent:Lcom/amazon/whispersync/client/metrics/MetricEvent;

    return-object v0
.end method

.method public getRequest()Lorg/apache/http/client/methods/HttpRequestBase;
    .locals 1

    .line 255
    iget-object v0, p0, Lamazon/whispersync/communication/srr/SrrRequest;->mRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    return-object v0
.end method

.method public getRequestContext()Lamazon/whispersync/communication/authentication/RequestContext;
    .locals 1

    .line 320
    iget-object v0, p0, Lamazon/whispersync/communication/srr/SrrRequest;->mRequestContext:Lamazon/whispersync/communication/authentication/RequestContext;

    return-object v0
.end method

.method public getTimeout()I
    .locals 1

    .line 284
    iget v0, p0, Lamazon/whispersync/communication/srr/SrrRequest;->mTimeoutInMillis:I

    return v0
.end method

.method public isClearTextAllowed()Z
    .locals 1

    .line 311
    iget-boolean v0, p0, Lamazon/whispersync/communication/srr/SrrRequest;->mIsClearTextAllowed:Z

    return v0
.end method

.method public isWiFiNecessary()Z
    .locals 1

    .line 302
    iget-boolean v0, p0, Lamazon/whispersync/communication/srr/SrrRequest;->mIsWiFiNecessary:Z

    return v0
.end method
