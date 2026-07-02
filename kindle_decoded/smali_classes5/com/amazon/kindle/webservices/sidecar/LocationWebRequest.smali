.class public Lcom/amazon/kindle/webservices/sidecar/LocationWebRequest;
.super Lcom/amazon/kindle/webservices/BaseWebRequest;
.source "LocationWebRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/webservices/sidecar/LocationWebRequest$LocationContentHandler;
    }
.end annotation


# static fields
.field private static final COUNTRY_ATTRIB:Ljava/lang/String; = "country_code"

.field private static final LAST_READ_NODE:Ljava/lang/String; = "last_read"

.field private static final LOCAL_TIME_OFFSET_ATTRIB:Ljava/lang/String; = "lto"

.field private static final METHOD_ATTRIB:Ljava/lang/String; = "method"

.field private static final POSITION_ATTRIB:Ljava/lang/String; = "pos"

.field private static final SOURCE_ATTRIB:Ljava/lang/String; = "source_device"

.field private static final SOURCE_TIME_ATTRIB:Ljava/lang/String; = "annotation_time_utc"

.field private static final VERSION_ATTRIB:Ljava/lang/String; = "version"


# instance fields
.field private final crpModel:Lcom/amazon/kcp/application/models/internal/GetLocationModel;

.field private final lprSyncType:Lcom/amazon/kindle/krx/sync/LPRSyncType;

.field private final model:Lcom/amazon/kcp/application/models/internal/GetLocationModel;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/application/models/internal/GetLocationModel;Lcom/amazon/kcp/application/models/internal/GetLocationModel;Lcom/amazon/kindle/krx/sync/LPRSyncType;)V
    .locals 3

    const-string v0, "NO_URL_YET"

    .line 33
    invoke-direct {p0, v0}, Lcom/amazon/kindle/webservices/BaseWebRequest;-><init>(Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lcom/amazon/kindle/webservices/sidecar/LocationWebRequest;->model:Lcom/amazon/kcp/application/models/internal/GetLocationModel;

    .line 36
    iput-object p2, p0, Lcom/amazon/kindle/webservices/sidecar/LocationWebRequest;->crpModel:Lcom/amazon/kcp/application/models/internal/GetLocationModel;

    .line 37
    iput-object p3, p0, Lcom/amazon/kindle/webservices/sidecar/LocationWebRequest;->lprSyncType:Lcom/amazon/kindle/krx/sync/LPRSyncType;

    .line 39
    invoke-static {}, Lcom/amazon/kindle/webservices/KindleWebServiceURLs;->getGetAnnotationsURL()Lcom/amazon/kindle/webservices/WebserviceURL;

    move-result-object p2

    .line 40
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/GetLocationModel;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/GetLocationModel;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/BookType;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "EBOK"

    .line 48
    :goto_0
    invoke-virtual {p2}, Lcom/amazon/kindle/webservices/WebserviceURL;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?key="

    .line 49
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/GetLocationModel;->getAsin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&type="

    .line 51
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&filter=kindle.most_recent_read"

    .line 53
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&guid="

    .line 54
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/GetLocationModel;->getGuid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 58
    :catch_0
    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/GetLocationModel;->getGuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    :goto_1
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 63
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/amazon/kindle/webservices/WebserviceURL;->getBaseURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setUrl(Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 64
    invoke-virtual {p2}, Lcom/amazon/kindle/webservices/WebserviceURL;->getTimeout()J

    move-result-wide p1

    long-to-int p2, p1

    invoke-virtual {p0, p2}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setTimeout(I)Lcom/amazon/kindle/webservices/IWebRequest;

    const/4 p1, 0x1

    .line 65
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setRetries(I)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 66
    new-instance p2, Lcom/amazon/kindle/webservices/XmlResponseHandler;

    new-instance p3, Lcom/amazon/kindle/webservices/sidecar/LocationWebRequest$LocationContentHandler;

    iget-object v0, p0, Lcom/amazon/kindle/webservices/sidecar/LocationWebRequest;->model:Lcom/amazon/kcp/application/models/internal/GetLocationModel;

    iget-object v1, p0, Lcom/amazon/kindle/webservices/sidecar/LocationWebRequest;->crpModel:Lcom/amazon/kcp/application/models/internal/GetLocationModel;

    iget-object v2, p0, Lcom/amazon/kindle/webservices/sidecar/LocationWebRequest;->lprSyncType:Lcom/amazon/kindle/krx/sync/LPRSyncType;

    invoke-direct {p3, v0, v1, v2}, Lcom/amazon/kindle/webservices/sidecar/LocationWebRequest$LocationContentHandler;-><init>(Lcom/amazon/kcp/application/models/internal/GetLocationModel;Lcom/amazon/kcp/application/models/internal/GetLocationModel;Lcom/amazon/kindle/krx/sync/LPRSyncType;)V

    invoke-direct {p2, p3}, Lcom/amazon/kindle/webservices/XmlResponseHandler;-><init>(Lcom/amazon/foundation/internal/DefaultContentHandler;)V

    invoke-virtual {p0, p2}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setResponseHandler(Lcom/amazon/kindle/webservices/IResponseHandler;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 67
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setAuthenticationRequired(Z)Lcom/amazon/kindle/webservices/IWebRequest;

    return-void
.end method


# virtual methods
.method public onRequestComplete()Z
    .locals 4

    .line 72
    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/krx/metrics/MetricsData;

    const-string v2, "AmazonKindle"

    const-string v3, "UpdateLocationCommand"

    invoke-direct {v1, v2, v3}, Lcom/amazon/kindle/krx/metrics/MetricsData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "UpdateLocationError"

    .line 74
    invoke-virtual {v1, v2}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    .line 75
    invoke-virtual {v1, v2}, Lcom/amazon/kindle/krx/metrics/MetricsData;->setMetricType(Lcom/amazon/kindle/krx/metrics/MetricType;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v1

    const/4 v2, 0x0

    .line 76
    invoke-virtual {v1, v2}, Lcom/amazon/kindle/krx/metrics/MetricsData;->setWithAppVersion(Z)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
