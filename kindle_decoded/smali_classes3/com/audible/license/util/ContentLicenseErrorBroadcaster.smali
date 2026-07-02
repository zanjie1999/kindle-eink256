.class public final Lcom/audible/license/util/ContentLicenseErrorBroadcaster;
.super Ljava/lang/Object;
.source "ContentLicenseErrorBroadcaster.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nContentLicenseErrorBroadcaster.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContentLicenseErrorBroadcaster.kt\ncom/audible/license/util/ContentLicenseErrorBroadcaster\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,124:1\n706#2:125\n783#2,2:126\n*E\n*S KotlinDebug\n*F\n+ 1 ContentLicenseErrorBroadcaster.kt\ncom/audible/license/util/ContentLicenseErrorBroadcaster\n*L\n73#1:125\n73#1,2:126\n*E\n"
.end annotation


# instance fields
.field private final eventBroadcaster:Lcom/audible/license/events/broadcast/LicensingEventBroadcaster;

.field private final logger$delegate:Lkotlin/Lazy;

.field private final metricSource:Lcom/audible/mobile/metric/domain/Metric$Source;

.field private final voucherMetricRecorder:Lcom/audible/license/metrics/VoucherMetricRecorder;


# direct methods
.method public constructor <init>(Lcom/audible/license/events/broadcast/LicensingEventBroadcaster;Lcom/audible/license/metrics/VoucherMetricRecorder;Lcom/audible/mobile/metric/domain/Metric$Source;)V
    .locals 1

    const-string v0, "eventBroadcaster"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voucherMetricRecorder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metricSource"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/audible/license/util/ContentLicenseErrorBroadcaster;->eventBroadcaster:Lcom/audible/license/events/broadcast/LicensingEventBroadcaster;

    iput-object p2, p0, Lcom/audible/license/util/ContentLicenseErrorBroadcaster;->voucherMetricRecorder:Lcom/audible/license/metrics/VoucherMetricRecorder;

    iput-object p3, p0, Lcom/audible/license/util/ContentLicenseErrorBroadcaster;->metricSource:Lcom/audible/mobile/metric/domain/Metric$Source;

    .line 28
    invoke-static {p0}, Lcom/audible/mobile/logging/PIIAwareLoggerKt;->piiAwareLogger(Ljava/lang/Object;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/license/util/ContentLicenseErrorBroadcaster;->logger$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final broadcastContentLicenseDenialReason(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/contentlicense/networking/exception/ContentLicenseStatusCodeException;Z)V
    .locals 5

    .line 62
    invoke-virtual {p2}, Lcom/audible/mobile/contentlicense/networking/exception/ContentLicenseStatusCodeException;->getStatusCode()Lcom/audible/mobile/contentlicense/networking/model/ContentLicense$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/audible/mobile/contentlicense/networking/model/ContentLicense$StatusCode;->DENIED:Lcom/audible/mobile/contentlicense/networking/model/ContentLicense$StatusCode;

    if-eq v0, v1, :cond_0

    .line 63
    invoke-direct {p0}, Lcom/audible/license/util/ContentLicenseErrorBroadcaster;->getLogger()Lorg/slf4j/Logger;

    move-result-object p3

    .line 66
    invoke-virtual {p2}, Lcom/audible/mobile/contentlicense/networking/exception/ContentLicenseStatusCodeException;->getStatusCode()Lcom/audible/mobile/contentlicense/networking/model/ContentLicense$StatusCode;

    move-result-object p2

    const-string v0, "StatusCode Exception handling skipped for ContentLicenseStatusCodeException with asin {} and status code {}"

    .line 63
    invoke-interface {p3, v0, p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 74
    :cond_0
    invoke-virtual {p2}, Lcom/audible/mobile/contentlicense/networking/exception/ContentLicenseStatusCodeException;->getDenialReasons()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 126
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/audible/mobile/contentlicense/networking/model/LicenseDenialReason;

    .line 73
    invoke-virtual {v3}, Lcom/audible/mobile/contentlicense/networking/model/LicenseDenialReason;->getValidationType()Lcom/audible/mobile/contentlicense/networking/request/RightsValidation;

    move-result-object v3

    sget-object v4, Lcom/audible/mobile/contentlicense/networking/request/RightsValidation;->AYCL:Lcom/audible/mobile/contentlicense/networking/request/RightsValidation;

    if-ne v3, v4, :cond_2

    const/4 v2, 0x1

    :cond_2
    if-eqz v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 75
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_4

    return-void

    .line 79
    :cond_4
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/audible/mobile/contentlicense/networking/model/LicenseDenialReason;

    if-eqz p2, :cond_a

    .line 86
    invoke-virtual {p2}, Lcom/audible/mobile/contentlicense/networking/model/LicenseDenialReason;->getRejectionReason()Lcom/audible/mobile/contentlicense/networking/model/LicenseDenialReasonType;

    move-result-object v0

    sget-object v1, Lcom/audible/mobile/contentlicense/networking/model/LicenseDenialReasonType;->ContentEligibility:Lcom/audible/mobile/contentlicense/networking/model/LicenseDenialReasonType;

    if-ne v0, v1, :cond_6

    if-eqz p3, :cond_5

    .line 88
    iget-object p2, p0, Lcom/audible/license/util/ContentLicenseErrorBroadcaster;->eventBroadcaster:Lcom/audible/license/events/broadcast/LicensingEventBroadcaster;

    .line 90
    sget-object p3, Lcom/audible/license/events/LicensingError;->ContentNotEligible:Lcom/audible/license/events/LicensingError;

    .line 88
    invoke-interface {p2, p1, p3}, Lcom/audible/license/events/LicensingEventListener;->onLicensingError(Lcom/audible/mobile/domain/Asin;Lcom/audible/license/events/LicensingError;)V

    .line 93
    :cond_5
    iget-object p1, p0, Lcom/audible/license/util/ContentLicenseErrorBroadcaster;->voucherMetricRecorder:Lcom/audible/license/metrics/VoucherMetricRecorder;

    .line 94
    iget-object p2, p0, Lcom/audible/license/util/ContentLicenseErrorBroadcaster;->metricSource:Lcom/audible/mobile/metric/domain/Metric$Source;

    .line 95
    sget-object p3, Lcom/audible/license/metrics/MetricNames;->VoucherDeniedContentNotEligible:Lcom/audible/license/metrics/MetricNames;

    .line 93
    invoke-virtual {p1, p2, p3}, Lcom/audible/license/metrics/VoucherMetricRecorder;->recordCounterMetric(Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;)V

    goto :goto_1

    .line 98
    :cond_6
    invoke-virtual {p2}, Lcom/audible/mobile/contentlicense/networking/model/LicenseDenialReason;->getRejectionReason()Lcom/audible/mobile/contentlicense/networking/model/LicenseDenialReasonType;

    move-result-object p2

    sget-object v0, Lcom/audible/mobile/contentlicense/networking/model/LicenseDenialReasonType;->RequesterEligibility:Lcom/audible/mobile/contentlicense/networking/model/LicenseDenialReasonType;

    if-ne p2, v0, :cond_8

    if-eqz p3, :cond_7

    .line 100
    iget-object p2, p0, Lcom/audible/license/util/ContentLicenseErrorBroadcaster;->eventBroadcaster:Lcom/audible/license/events/broadcast/LicensingEventBroadcaster;

    .line 102
    sget-object p3, Lcom/audible/license/events/LicensingError;->RequesterNotEligible:Lcom/audible/license/events/LicensingError;

    .line 100
    invoke-interface {p2, p1, p3}, Lcom/audible/license/events/LicensingEventListener;->onLicensingError(Lcom/audible/mobile/domain/Asin;Lcom/audible/license/events/LicensingError;)V

    .line 105
    :cond_7
    iget-object p1, p0, Lcom/audible/license/util/ContentLicenseErrorBroadcaster;->voucherMetricRecorder:Lcom/audible/license/metrics/VoucherMetricRecorder;

    .line 106
    iget-object p2, p0, Lcom/audible/license/util/ContentLicenseErrorBroadcaster;->metricSource:Lcom/audible/mobile/metric/domain/Metric$Source;

    .line 107
    sget-object p3, Lcom/audible/license/metrics/MetricNames;->VoucherDeniedRequesterNotEligible:Lcom/audible/license/metrics/MetricNames;

    .line 105
    invoke-virtual {p1, p2, p3}, Lcom/audible/license/metrics/VoucherMetricRecorder;->recordCounterMetric(Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;)V

    goto :goto_1

    :cond_8
    if-eqz p3, :cond_9

    .line 112
    iget-object p2, p0, Lcom/audible/license/util/ContentLicenseErrorBroadcaster;->eventBroadcaster:Lcom/audible/license/events/broadcast/LicensingEventBroadcaster;

    .line 114
    sget-object p3, Lcom/audible/license/events/LicensingError;->Other:Lcom/audible/license/events/LicensingError;

    .line 112
    invoke-interface {p2, p1, p3}, Lcom/audible/license/events/LicensingEventListener;->onLicensingError(Lcom/audible/mobile/domain/Asin;Lcom/audible/license/events/LicensingError;)V

    .line 117
    :cond_9
    iget-object p1, p0, Lcom/audible/license/util/ContentLicenseErrorBroadcaster;->voucherMetricRecorder:Lcom/audible/license/metrics/VoucherMetricRecorder;

    .line 118
    iget-object p2, p0, Lcom/audible/license/util/ContentLicenseErrorBroadcaster;->metricSource:Lcom/audible/mobile/metric/domain/Metric$Source;

    .line 119
    sget-object p3, Lcom/audible/license/metrics/MetricNames;->VoucherDeniedOtherReason:Lcom/audible/license/metrics/MetricNames;

    .line 117
    invoke-virtual {p1, p2, p3}, Lcom/audible/license/metrics/VoucherMetricRecorder;->recordCounterMetric(Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;)V

    :cond_a
    :goto_1
    return-void
.end method

.method private final getLogger()Lorg/slf4j/Logger;
    .locals 1

    iget-object v0, p0, Lcom/audible/license/util/ContentLicenseErrorBroadcaster;->logger$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/slf4j/Logger;

    return-object v0
.end method


# virtual methods
.method public final broadcastContentLicenceError(Lcom/audible/mobile/domain/Asin;Ljava/lang/Throwable;Z)V
    .locals 1

    const-string v0, "asin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "throwable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 36
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/audible/license/util/ContentLicenseErrorBroadcaster;->eventBroadcaster:Lcom/audible/license/events/broadcast/LicensingEventBroadcaster;

    .line 38
    sget-object p3, Lcom/audible/license/events/LicensingError;->Offline:Lcom/audible/license/events/LicensingError;

    .line 36
    invoke-interface {p2, p1, p3}, Lcom/audible/license/events/LicensingEventListener;->onLicensingError(Lcom/audible/mobile/domain/Asin;Lcom/audible/license/events/LicensingError;)V

    goto :goto_0

    .line 40
    :cond_0
    instance-of v0, p2, Lcom/audible/mobile/contentlicense/networking/exception/ContentLicenseStatusCodeException;

    if-eqz v0, :cond_1

    .line 42
    check-cast p2, Lcom/audible/mobile/contentlicense/networking/exception/ContentLicenseStatusCodeException;

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/audible/license/util/ContentLicenseErrorBroadcaster;->broadcastContentLicenseDenialReason(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/contentlicense/networking/exception/ContentLicenseStatusCodeException;Z)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 45
    iget-object p2, p0, Lcom/audible/license/util/ContentLicenseErrorBroadcaster;->eventBroadcaster:Lcom/audible/license/events/broadcast/LicensingEventBroadcaster;

    sget-object p3, Lcom/audible/license/events/LicensingError;->Other:Lcom/audible/license/events/LicensingError;

    invoke-interface {p2, p1, p3}, Lcom/audible/license/events/LicensingEventListener;->onLicensingError(Lcom/audible/mobile/domain/Asin;Lcom/audible/license/events/LicensingError;)V

    :cond_2
    :goto_0
    return-void
.end method
