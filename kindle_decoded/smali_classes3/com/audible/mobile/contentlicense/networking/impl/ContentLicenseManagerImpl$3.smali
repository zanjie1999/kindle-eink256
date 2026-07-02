.class Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl$3;
.super Ljava/lang/Object;
.source "ContentLicenseManagerImpl.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;->getContentLicense(Lcom/audible/mobile/domain/Asin;Ljava/util/List;Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;Lcom/audible/mobile/contentlicense/networking/request/RightsValidation;Lcom/audible/mobile/contentlicense/networking/request/Quality;Lcom/audible/mobile/domain/ACR;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;ZZZ)Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/audible/mobile/contentlicense/networking/model/ContentLicenseResponse;",
        "Lio/reactivex/SingleSource<",
        "Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;

.field final synthetic val$asin:Lcom/audible/mobile/domain/Asin;

.field final synthetic val$consumptionType:Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;


# direct methods
.method constructor <init>(Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;Lcom/audible/mobile/domain/Asin;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl$3;->this$0:Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;

    iput-object p2, p0, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl$3;->val$consumptionType:Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;

    iput-object p3, p0, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl$3;->val$asin:Lcom/audible/mobile/domain/Asin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/audible/mobile/contentlicense/networking/model/ContentLicenseResponse;)Lio/reactivex/SingleSource;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/mobile/contentlicense/networking/model/ContentLicenseResponse;",
            ")",
            "Lio/reactivex/SingleSource<",
            "Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 124
    invoke-virtual {p1}, Lcom/audible/mobile/contentlicense/networking/model/ContentLicenseResponse;->getContentLicense()Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;

    move-result-object v0

    if-nez v0, :cond_0

    .line 125
    invoke-static {}, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;->access$000()Lorg/slf4j/Logger;

    move-result-object v0

    sget-object v1, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->PII_MARKER:Lorg/slf4j/Marker;

    const-string v2, "No \'content_license\' in ACLS response {} "

    invoke-interface {v0, v1, v2, p1}, Lorg/slf4j/Logger;->error(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    iget-object p1, p0, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl$3;->this$0:Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;

    invoke-static {p1}, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;->access$100(Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;)Lcom/audible/mobile/contentlicense/networking/metrics/AclsMetricRecorder;

    move-result-object p1

    sget-object v0, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;->ACLSResponseNoContentLicense:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    iget-object v1, p0, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl$3;->val$consumptionType:Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;

    iget-object v2, p0, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl$3;->val$asin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {p1, v0, v1, v2}, Lcom/audible/mobile/contentlicense/networking/metrics/AclsMetricRecorder;->recordCounterMetric(Lcom/audible/mobile/metric/domain/Metric$Name;Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;Lcom/audible/mobile/domain/Asin;)V

    .line 127
    new-instance p1, Lcom/audible/mobile/contentlicense/networking/exception/ContentLicenseResponseParseException;

    const-string v0, "No \'content_license\' in ACLS response"

    invoke-direct {p1, v0}, Lcom/audible/mobile/contentlicense/networking/exception/ContentLicenseResponseParseException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/Single;->error(Ljava/lang/Throwable;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    .line 130
    :cond_0
    invoke-virtual {p1}, Lcom/audible/mobile/contentlicense/networking/model/ContentLicenseResponse;->getContentLicense()Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;

    move-result-object v0

    invoke-virtual {v0}, Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;->getStatusCode()Lcom/audible/mobile/contentlicense/networking/model/ContentLicense$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/audible/mobile/contentlicense/networking/model/ContentLicense$StatusCode;->GRANTED:Lcom/audible/mobile/contentlicense/networking/model/ContentLicense$StatusCode;

    if-eq v0, v1, :cond_4

    .line 132
    invoke-virtual {p1}, Lcom/audible/mobile/contentlicense/networking/model/ContentLicenseResponse;->getContentLicense()Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;

    move-result-object v0

    invoke-virtual {v0}, Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;->getStatusCode()Lcom/audible/mobile/contentlicense/networking/model/ContentLicense$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/audible/mobile/contentlicense/networking/model/ContentLicense$StatusCode;->DEGRADED:Lcom/audible/mobile/contentlicense/networking/model/ContentLicense$StatusCode;

    if-ne v0, v1, :cond_1

    .line 133
    iget-object v0, p0, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl$3;->this$0:Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;

    invoke-static {v0}, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;->access$100(Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;)Lcom/audible/mobile/contentlicense/networking/metrics/AclsMetricRecorder;

    move-result-object v0

    sget-object v1, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;->ACLSResponseLicenseDegraded:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    iget-object v2, p0, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl$3;->val$consumptionType:Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;

    iget-object v3, p0, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl$3;->val$asin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {v0, v1, v2, v3}, Lcom/audible/mobile/contentlicense/networking/metrics/AclsMetricRecorder;->recordCounterMetric(Lcom/audible/mobile/metric/domain/Metric$Name;Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;Lcom/audible/mobile/domain/Asin;)V

    goto :goto_0

    .line 134
    :cond_1
    invoke-virtual {p1}, Lcom/audible/mobile/contentlicense/networking/model/ContentLicenseResponse;->getContentLicense()Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;

    move-result-object v0

    invoke-virtual {v0}, Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;->getStatusCode()Lcom/audible/mobile/contentlicense/networking/model/ContentLicense$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/audible/mobile/contentlicense/networking/model/ContentLicense$StatusCode;->ERROR:Lcom/audible/mobile/contentlicense/networking/model/ContentLicense$StatusCode;

    if-ne v0, v1, :cond_2

    .line 135
    iget-object v0, p0, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl$3;->this$0:Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;

    invoke-static {v0}, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;->access$100(Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;)Lcom/audible/mobile/contentlicense/networking/metrics/AclsMetricRecorder;

    move-result-object v0

    sget-object v1, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;->ACLSResponseLicenseError:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    iget-object v2, p0, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl$3;->val$consumptionType:Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;

    iget-object v3, p0, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl$3;->val$asin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {v0, v1, v2, v3}, Lcom/audible/mobile/contentlicense/networking/metrics/AclsMetricRecorder;->recordCounterMetric(Lcom/audible/mobile/metric/domain/Metric$Name;Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;Lcom/audible/mobile/domain/Asin;)V

    goto :goto_0

    .line 136
    :cond_2
    invoke-virtual {p1}, Lcom/audible/mobile/contentlicense/networking/model/ContentLicenseResponse;->getContentLicense()Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;

    move-result-object v0

    invoke-virtual {v0}, Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;->getStatusCode()Lcom/audible/mobile/contentlicense/networking/model/ContentLicense$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/audible/mobile/contentlicense/networking/model/ContentLicense$StatusCode;->DENIED:Lcom/audible/mobile/contentlicense/networking/model/ContentLicense$StatusCode;

    if-ne v0, v1, :cond_3

    .line 137
    iget-object v0, p0, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl$3;->this$0:Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;

    invoke-static {v0}, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;->access$100(Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;)Lcom/audible/mobile/contentlicense/networking/metrics/AclsMetricRecorder;

    move-result-object v0

    sget-object v1, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;->ACLSResponseLicenseDenied:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    iget-object v2, p0, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl$3;->val$consumptionType:Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;

    iget-object v3, p0, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl$3;->val$asin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {v0, v1, v2, v3}, Lcom/audible/mobile/contentlicense/networking/metrics/AclsMetricRecorder;->recordCounterMetric(Lcom/audible/mobile/metric/domain/Metric$Name;Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;Lcom/audible/mobile/domain/Asin;)V

    .line 140
    :cond_3
    :goto_0
    new-instance v0, Lcom/audible/mobile/contentlicense/networking/exception/ContentLicenseStatusCodeException;

    invoke-virtual {p1}, Lcom/audible/mobile/contentlicense/networking/model/ContentLicenseResponse;->getContentLicense()Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;

    move-result-object v1

    invoke-virtual {v1}, Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;->getStatusCode()Lcom/audible/mobile/contentlicense/networking/model/ContentLicense$StatusCode;

    move-result-object v1

    invoke-virtual {p1}, Lcom/audible/mobile/contentlicense/networking/model/ContentLicenseResponse;->getContentLicense()Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;

    move-result-object v2

    invoke-virtual {v2}, Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;->getRequestId()Lcom/audible/mobile/domain/RequestId;

    move-result-object v2

    invoke-virtual {p1}, Lcom/audible/mobile/contentlicense/networking/model/ContentLicenseResponse;->getContentLicense()Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;

    move-result-object p1

    invoke-virtual {p1}, Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;->getDenialReasons()Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/audible/mobile/contentlicense/networking/exception/ContentLicenseStatusCodeException;-><init>(Lcom/audible/mobile/contentlicense/networking/model/ContentLicense$StatusCode;Lcom/audible/mobile/domain/RequestId;Ljava/util/List;)V

    invoke-static {v0}, Lio/reactivex/Single;->error(Ljava/lang/Throwable;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    .line 143
    :cond_4
    invoke-virtual {p1}, Lcom/audible/mobile/contentlicense/networking/model/ContentLicenseResponse;->getContentLicense()Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;

    move-result-object v0

    invoke-virtual {v0}, Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;->getLicense()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/audible/mobile/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 144
    invoke-static {}, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;->access$000()Lorg/slf4j/Logger;

    move-result-object v0

    sget-object v1, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->PII_MARKER:Lorg/slf4j/Marker;

    const-string v2, "No or empty \'license\' in ACLS response {} "

    invoke-interface {v0, v1, v2, p1}, Lorg/slf4j/Logger;->error(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    .line 145
    iget-object v0, p0, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl$3;->this$0:Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;

    sget-object v1, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;->ACLSResponseNoLicense:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    iget-object v2, p0, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl$3;->val$consumptionType:Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;

    iget-object v3, p0, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl$3;->val$asin:Lcom/audible/mobile/domain/Asin;

    invoke-static {v0, v1, v2, p1, v3}, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;->access$200(Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;Lcom/audible/mobile/metric/domain/Metric$Name;Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;Lcom/audible/mobile/contentlicense/networking/model/ContentLicenseResponse;Lcom/audible/mobile/domain/Asin;)V

    .line 146
    new-instance p1, Lcom/audible/mobile/contentlicense/networking/exception/ContentLicenseResponseParseException;

    const-string v0, "No or empty \'license\' in ACLS response"

    invoke-direct {p1, v0}, Lcom/audible/mobile/contentlicense/networking/exception/ContentLicenseResponseParseException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/Single;->error(Ljava/lang/Throwable;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    .line 148
    :cond_5
    invoke-virtual {p1}, Lcom/audible/mobile/contentlicense/networking/model/ContentLicenseResponse;->getContentLicense()Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;

    move-result-object v0

    invoke-virtual {v0}, Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;->getDrmType()Lcom/audible/mobile/contentlicense/networking/request/DrmType;

    move-result-object v0

    if-nez v0, :cond_6

    .line 149
    invoke-static {}, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;->access$000()Lorg/slf4j/Logger;

    move-result-object v0

    sget-object v1, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->PII_MARKER:Lorg/slf4j/Marker;

    const-string v2, "No \'drm_type\' in ACLS response {} "

    invoke-interface {v0, v1, v2, p1}, Lorg/slf4j/Logger;->error(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    .line 150
    iget-object v0, p0, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl$3;->this$0:Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;

    sget-object v1, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;->ACLSResponseNoDrmType:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    iget-object v2, p0, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl$3;->val$consumptionType:Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;

    iget-object v3, p0, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl$3;->val$asin:Lcom/audible/mobile/domain/Asin;

    invoke-static {v0, v1, v2, p1, v3}, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;->access$200(Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;Lcom/audible/mobile/metric/domain/Metric$Name;Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;Lcom/audible/mobile/contentlicense/networking/model/ContentLicenseResponse;Lcom/audible/mobile/domain/Asin;)V

    .line 151
    new-instance p1, Lcom/audible/mobile/contentlicense/networking/exception/ContentLicenseResponseParseException;

    const-string v0, "No \'drm_type\' in ACLS response"

    invoke-direct {p1, v0}, Lcom/audible/mobile/contentlicense/networking/exception/ContentLicenseResponseParseException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/Single;->error(Ljava/lang/Throwable;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    .line 153
    :cond_6
    invoke-virtual {p1}, Lcom/audible/mobile/contentlicense/networking/model/ContentLicenseResponse;->getContentLicense()Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;

    move-result-object v0

    invoke-virtual {v0}, Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;->getStatusCode()Lcom/audible/mobile/contentlicense/networking/model/ContentLicense$StatusCode;

    move-result-object v0

    if-nez v0, :cond_7

    .line 154
    invoke-static {}, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;->access$000()Lorg/slf4j/Logger;

    move-result-object v0

    sget-object v1, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->PII_MARKER:Lorg/slf4j/Marker;

    const-string v2, "No \'status_code\' in ACLS response {} "

    invoke-interface {v0, v1, v2, p1}, Lorg/slf4j/Logger;->error(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    .line 155
    iget-object v0, p0, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl$3;->this$0:Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;

    sget-object v1, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;->ACLSResponseNoStatusCode:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    iget-object v2, p0, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl$3;->val$consumptionType:Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;

    iget-object v3, p0, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl$3;->val$asin:Lcom/audible/mobile/domain/Asin;

    invoke-static {v0, v1, v2, p1, v3}, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;->access$200(Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;Lcom/audible/mobile/metric/domain/Metric$Name;Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;Lcom/audible/mobile/contentlicense/networking/model/ContentLicenseResponse;Lcom/audible/mobile/domain/Asin;)V

    .line 156
    new-instance p1, Lcom/audible/mobile/contentlicense/networking/exception/ContentLicenseResponseParseException;

    const-string v0, "No \'status_code\' in ACLS response"

    invoke-direct {p1, v0}, Lcom/audible/mobile/contentlicense/networking/exception/ContentLicenseResponseParseException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/Single;->error(Ljava/lang/Throwable;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    .line 159
    :cond_7
    iget-object v0, p0, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl$3;->val$consumptionType:Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;

    sget-object v1, Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;->DOWNLOAD:Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;

    if-ne v0, v1, :cond_d

    .line 160
    invoke-virtual {p1}, Lcom/audible/mobile/contentlicense/networking/model/ContentLicenseResponse;->getContentLicense()Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;

    move-result-object v0

    invoke-virtual {v0}, Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;->getContentMetadata()Lcom/audible/mobile/contentlicense/networking/model/ContentMetadata;

    move-result-object v0

    if-nez v0, :cond_8

    .line 161
    invoke-static {}, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;->access$000()Lorg/slf4j/Logger;

    move-result-object v0

    sget-object v1, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->PII_MARKER:Lorg/slf4j/Marker;

    const-string v2, "No \'content_metadata\' in ACLS response {} "

    invoke-interface {v0, v1, v2, p1}, Lorg/slf4j/Logger;->error(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    .line 162
    iget-object v0, p0, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl$3;->this$0:Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;

    sget-object v1, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;->ACLSResponseNoContentMetadata:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    iget-object v2, p0, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl$3;->val$consumptionType:Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;

    iget-object v3, p0, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl$3;->val$asin:Lcom/audible/mobile/domain/Asin;

    invoke-static {v0, v1, v2, p1, v3}, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;->access$200(Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;Lcom/audible/mobile/metric/domain/Metric$Name;Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;Lcom/audible/mobile/contentlicense/networking/model/ContentLicenseResponse;Lcom/audible/mobile/domain/Asin;)V

    .line 163
    new-instance p1, Lcom/audible/mobile/contentlicense/networking/exception/ContentLicenseResponseParseException;

    const-string v0, "No \'content_metadata\' in ACLS response"

    invoke-direct {p1, v0}, Lcom/audible/mobile/contentlicense/networking/exception/ContentLicenseResponseParseException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/Single;->error(Ljava/lang/Throwable;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    .line 165
    :cond_8
    invoke-virtual {p1}, Lcom/audible/mobile/contentlicense/networking/model/ContentLicenseResponse;->getContentLicense()Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;

    move-result-object v0

    invoke-virtual {v0}, Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;->getContentMetadata()Lcom/audible/mobile/contentlicense/networking/model/ContentMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/audible/mobile/contentlicense/networking/model/ContentMetadata;->getContentUrl()Lcom/audible/mobile/contentlicense/networking/model/ContentUrl;

    move-result-object v0

    if-nez v0, :cond_9

    .line 166
    invoke-static {}, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;->access$000()Lorg/slf4j/Logger;

    move-result-object v0

    sget-object v1, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->PII_MARKER:Lorg/slf4j/Marker;

    const-string v2, "No \'content_url\' in ACLS response {} "

    invoke-interface {v0, v1, v2, p1}, Lorg/slf4j/Logger;->error(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    .line 167
    iget-object v0, p0, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl$3;->this$0:Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;

    sget-object v1, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;->ACLSResponseNoContentUrl:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    iget-object v2, p0, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl$3;->val$consumptionType:Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;

    iget-object v3, p0, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl$3;->val$asin:Lcom/audible/mobile/domain/Asin;

    invoke-static {v0, v1, v2, p1, v3}, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;->access$200(Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;Lcom/audible/mobile/metric/domain/Metric$Name;Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;Lcom/audible/mobile/contentlicense/networking/model/ContentLicenseResponse;Lcom/audible/mobile/domain/Asin;)V

    .line 168
    new-instance p1, Lcom/audible/mobile/contentlicense/networking/exception/ContentLicenseResponseParseException;

    const-string v0, "No \'content_url\' in ACLS response"

    invoke-direct {p1, v0}, Lcom/audible/mobile/contentlicense/networking/exception/ContentLicenseResponseParseException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/Single;->error(Ljava/lang/Throwable;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    .line 170
    :cond_9
    invoke-virtual {p1}, Lcom/audible/mobile/contentlicense/networking/model/ContentLicenseResponse;->getContentLicense()Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;

    move-result-object v0

    invoke-virtual {v0}, Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;->getContentMetadata()Lcom/audible/mobile/contentlicense/networking/model/ContentMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/audible/mobile/contentlicense/networking/model/ContentMetadata;->getContentUrl()Lcom/audible/mobile/contentlicense/networking/model/ContentUrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/audible/mobile/contentlicense/networking/model/ContentUrl;->getUrl()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_a

    .line 171
    invoke-static {}, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;->access$000()Lorg/slf4j/Logger;

    move-result-object v0

    sget-object v1, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->PII_MARKER:Lorg/slf4j/Marker;

    const-string v2, "No \'offline_url\' in ACLS response {} "

    invoke-interface {v0, v1, v2, p1}, Lorg/slf4j/Logger;->error(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    .line 172
    iget-object v0, p0, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl$3;->this$0:Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;

    sget-object v1, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;->ACLSResponseNoOfflineUrl:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    iget-object v2, p0, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl$3;->val$consumptionType:Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;

    iget-object v3, p0, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl$3;->val$asin:Lcom/audible/mobile/domain/Asin;

    invoke-static {v0, v1, v2, p1, v3}, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;->access$200(Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;Lcom/audible/mobile/metric/domain/Metric$Name;Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;Lcom/audible/mobile/contentlicense/networking/model/ContentLicenseResponse;Lcom/audible/mobile/domain/Asin;)V

    .line 173
    new-instance p1, Lcom/audible/mobile/contentlicense/networking/exception/ContentLicenseResponseParseException;

    const-string v0, "No \'offline_url\' in ACLS response"

    invoke-direct {p1, v0}, Lcom/audible/mobile/contentlicense/networking/exception/ContentLicenseResponseParseException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/Single;->error(Ljava/lang/Throwable;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    .line 175
    :cond_a
    invoke-virtual {p1}, Lcom/audible/mobile/contentlicense/networking/model/ContentLicenseResponse;->getContentLicense()Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;

    move-result-object v0

    invoke-virtual {v0}, Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;->getContentMetadata()Lcom/audible/mobile/contentlicense/networking/model/ContentMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/audible/mobile/contentlicense/networking/model/ContentMetadata;->getContentUrl()Lcom/audible/mobile/contentlicense/networking/model/ContentUrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/audible/mobile/contentlicense/networking/model/ContentUrl;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/audible/mobile/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 176
    invoke-static {}, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;->access$000()Lorg/slf4j/Logger;

    move-result-object v0

    sget-object v1, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->PII_MARKER:Lorg/slf4j/Marker;

    const-string v2, "Empty \'offline_url\' in ACLS response {} "

    invoke-interface {v0, v1, v2, p1}, Lorg/slf4j/Logger;->error(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    .line 177
    iget-object v0, p0, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl$3;->this$0:Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;

    sget-object v1, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;->ACLSResponseNoOfflineUrl:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    iget-object v2, p0, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl$3;->val$consumptionType:Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;

    iget-object v3, p0, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl$3;->val$asin:Lcom/audible/mobile/domain/Asin;

    invoke-static {v0, v1, v2, p1, v3}, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;->access$200(Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;Lcom/audible/mobile/metric/domain/Metric$Name;Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;Lcom/audible/mobile/contentlicense/networking/model/ContentLicenseResponse;Lcom/audible/mobile/domain/Asin;)V

    .line 178
    new-instance p1, Lcom/audible/mobile/contentlicense/networking/exception/ContentLicenseResponseParseException;

    const-string v0, "Empty \'offline_url\' in ACLS response"

    invoke-direct {p1, v0}, Lcom/audible/mobile/contentlicense/networking/exception/ContentLicenseResponseParseException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/Single;->error(Ljava/lang/Throwable;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    .line 180
    :cond_b
    invoke-virtual {p1}, Lcom/audible/mobile/contentlicense/networking/model/ContentLicenseResponse;->getContentLicense()Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;

    move-result-object v0

    invoke-virtual {v0}, Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;->getContentMetadata()Lcom/audible/mobile/contentlicense/networking/model/ContentMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/audible/mobile/contentlicense/networking/model/ContentMetadata;->getContentReference()Lcom/audible/mobile/contentlicense/networking/model/ContentReference;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 181
    invoke-virtual {v0}, Lcom/audible/mobile/contentlicense/networking/model/ContentReference;->getCodec()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/audible/mobile/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 182
    :cond_c
    invoke-static {}, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;->access$000()Lorg/slf4j/Logger;

    move-result-object v0

    sget-object v1, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->PII_MARKER:Lorg/slf4j/Marker;

    const-string v2, "Empty \'codec\' in ACLS response {} "

    invoke-interface {v0, v1, v2, p1}, Lorg/slf4j/Logger;->error(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    .line 183
    iget-object v0, p0, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl$3;->this$0:Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;

    sget-object v1, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;->ACLSResponseNoCodec:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    iget-object v2, p0, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl$3;->val$consumptionType:Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;

    iget-object v3, p0, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl$3;->val$asin:Lcom/audible/mobile/domain/Asin;

    invoke-static {v0, v1, v2, p1, v3}, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;->access$200(Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;Lcom/audible/mobile/metric/domain/Metric$Name;Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;Lcom/audible/mobile/contentlicense/networking/model/ContentLicenseResponse;Lcom/audible/mobile/domain/Asin;)V

    .line 184
    new-instance p1, Lcom/audible/mobile/contentlicense/networking/exception/ContentLicenseResponseParseException;

    const-string v0, "Empty \'codec\' in ACLS response"

    invoke-direct {p1, v0}, Lcom/audible/mobile/contentlicense/networking/exception/ContentLicenseResponseParseException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/Single;->error(Ljava/lang/Throwable;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    .line 188
    :cond_d
    invoke-virtual {p1}, Lcom/audible/mobile/contentlicense/networking/model/ContentLicenseResponse;->getContentLicense()Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 121
    check-cast p1, Lcom/audible/mobile/contentlicense/networking/model/ContentLicenseResponse;

    invoke-virtual {p0, p1}, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl$3;->apply(Lcom/audible/mobile/contentlicense/networking/model/ContentLicenseResponse;)Lio/reactivex/SingleSource;

    move-result-object p1

    return-object p1
.end method
