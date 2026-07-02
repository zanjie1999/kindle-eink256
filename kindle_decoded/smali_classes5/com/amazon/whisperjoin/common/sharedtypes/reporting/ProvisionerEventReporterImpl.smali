.class public Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporterImpl;
.super Lcom/amazon/whisperjoin/common/sharedtypes/reporting/AbstractProvisioningEventReporter;
.source "ProvisionerEventReporterImpl.java"

# interfaces
.implements Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporter;


# static fields
.field private static final TAG:Ljava/lang/String; = "ProvisionerEventReporterImpl"


# instance fields
.field private final mDeviceIdToReportingSessionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ReportingSesssion;",
            ">;"
        }
    .end annotation
.end field

.field final mProvisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/AbstractProvisioningEventReporter;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;)V

    if-eqz p2, :cond_0

    .line 39
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporterImpl;->mDeviceIdToReportingSessionMap:Ljava/util/Map;

    .line 40
    iput-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporterImpl;->mProvisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    return-void

    .line 37
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "provisionerInfo can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public registerNewReportingSession(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 53
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporterImpl;->mDeviceIdToReportingSessionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    sget-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporterImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Replacing reporting url for deviceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporterImpl;->mDeviceIdToReportingSessionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporterImpl;->mDeviceIdToReportingSessionMap:Ljava/util/Map;

    new-instance v1, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ReportingSesssion;

    invoke-direct {v1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ReportingSesssion;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 50
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "reportingUrl can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "deviceId can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeReportingSession(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 67
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporterImpl;->mDeviceIdToReportingSessionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 68
    sget-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporterImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No session found for deviceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 64
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "deviceId can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reportConnectedFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/devicesetup/common/v1/ErrorInfo;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporterImpl;->mDeviceIdToReportingSessionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ReportingSesssion;

    if-nez p1, :cond_0

    .line 97
    sget-object p1, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporterImpl;->TAG:Ljava/lang/String;

    const-string p2, "No session found to record connection failure event"

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 101
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/AbstractProvisioningEventReporter;->getBuilderForSession(Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ReportingSesssion;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    const-string v0, "CONNECTED"

    .line 102
    invoke-virtual {p1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setState(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    const-string v0, "FAILURE"

    .line 103
    invoke-virtual {p1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setEvent(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporterImpl;->mProvisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    .line 104
    invoke-virtual {p1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setProvisionerInfo(Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    .line 105
    invoke-virtual {p1, p2}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setProvisioningMethod(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    .line 106
    invoke-virtual {p1, p3}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setTrustMethod(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    .line 107
    invoke-virtual {p1, p4}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setKeyExchangeMethod(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    .line 108
    invoke-virtual {p1, p5}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setRadio(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    .line 109
    invoke-virtual {p1, p6}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setErrorInfo(Lcom/amazon/devicesetup/common/v1/ErrorInfo;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    .line 110
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->createReportEventRequest()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;

    move-result-object p1

    .line 112
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/AbstractProvisioningEventReporter;->reportEvent(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;)V

    return-void
.end method

.method public reportConnectedSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporterImpl;->mDeviceIdToReportingSessionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ReportingSesssion;

    if-nez p1, :cond_0

    .line 76
    sget-object p1, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporterImpl;->TAG:Ljava/lang/String;

    const-string p2, "No session found to record connection success event"

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 80
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/AbstractProvisioningEventReporter;->getBuilderForSession(Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ReportingSesssion;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    const-string v0, "CONNECTED"

    .line 81
    invoke-virtual {p1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setState(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    const-string v0, "SUCCESS"

    .line 82
    invoke-virtual {p1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setEvent(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporterImpl;->mProvisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    .line 83
    invoke-virtual {p1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setProvisionerInfo(Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    .line 84
    invoke-virtual {p1, p2}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setProvisioningMethod(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    .line 85
    invoke-virtual {p1, p3}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setTrustMethod(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    .line 86
    invoke-virtual {p1, p4}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setKeyExchangeMethod(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    .line 87
    invoke-virtual {p1, p5}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setRadio(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    .line 88
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->createReportEventRequest()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;

    move-result-object p1

    .line 90
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/AbstractProvisioningEventReporter;->reportEvent(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;)V

    return-void
.end method

.method public reportNetworkedFailure(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;Lcom/amazon/devicesetup/common/v1/ErrorInfo;Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;)V
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporterImpl;->mDeviceIdToReportingSessionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ReportingSesssion;

    if-nez p1, :cond_0

    .line 248
    sget-object p1, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporterImpl;->TAG:Ljava/lang/String;

    const-string p2, "No session found to record networked failure event"

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 252
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/AbstractProvisioningEventReporter;->getBuilderForSession(Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ReportingSesssion;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    const-string v0, "NETWORKED"

    .line 253
    invoke-virtual {p1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setState(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    const-string v0, "FAILURE"

    .line 254
    invoke-virtual {p1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setEvent(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporterImpl;->mProvisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    .line 255
    invoke-virtual {p1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setProvisionerInfo(Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    .line 256
    invoke-virtual {p1, p5}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setProvisionableInfo(Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    .line 257
    invoke-virtual {p1, p2}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setProvisioningMethod(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    .line 258
    invoke-virtual {p1, p3}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setWifiNetworkInfo(Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    .line 259
    invoke-virtual {p1, p4}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setErrorInfo(Lcom/amazon/devicesetup/common/v1/ErrorInfo;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    .line 260
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->createReportEventRequest()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;

    move-result-object p1

    .line 262
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/AbstractProvisioningEventReporter;->reportEvent(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;)V

    return-void
.end method

.method public reportProvisionedFailure(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/devicesetup/common/v1/ErrorInfo;Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;)V
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporterImpl;->mDeviceIdToReportingSessionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ReportingSesssion;

    if-nez p1, :cond_0

    .line 228
    sget-object p1, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporterImpl;->TAG:Ljava/lang/String;

    const-string p2, "No session found to record provisioned failure event"

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 232
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/AbstractProvisioningEventReporter;->getBuilderForSession(Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ReportingSesssion;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    const-string v0, "PROVISIONED"

    .line 233
    invoke-virtual {p1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setState(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    const-string v0, "FAILURE"

    .line 234
    invoke-virtual {p1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setEvent(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    .line 235
    invoke-virtual {p1, p3}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setErrorInfo(Lcom/amazon/devicesetup/common/v1/ErrorInfo;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    .line 236
    invoke-virtual {p1, p2}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setProvisioningMethod(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporterImpl;->mProvisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    .line 237
    invoke-virtual {p1, p2}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setProvisionerInfo(Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    .line 238
    invoke-virtual {p1, p4}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setProvisionableInfo(Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    .line 239
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->createReportEventRequest()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;

    move-result-object p1

    .line 241
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/AbstractProvisioningEventReporter;->reportEvent(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;)V

    return-void
.end method

.method public reportProvisionedSuccess(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;Lcom/amazon/devicesetupservice/v1/CredentialLockerUsageInfo;)V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporterImpl;->mDeviceIdToReportingSessionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ReportingSesssion;

    if-nez p1, :cond_0

    .line 207
    sget-object p1, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporterImpl;->TAG:Ljava/lang/String;

    const-string p2, "No session found to record provisioned success event"

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 211
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/AbstractProvisioningEventReporter;->getBuilderForSession(Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ReportingSesssion;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    const-string v0, "PROVISIONED"

    .line 212
    invoke-virtual {p1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setState(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    const-string v0, "SUCCESS"

    .line 213
    invoke-virtual {p1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setEvent(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporterImpl;->mProvisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    .line 214
    invoke-virtual {p1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setProvisionerInfo(Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    .line 215
    invoke-virtual {p1, p2}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setProvisioningMethod(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    .line 216
    invoke-virtual {p1, p4}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setProvisionableInfo(Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    .line 217
    invoke-virtual {p1, p3}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setWifiNetworkInfo(Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    .line 218
    invoke-virtual {p1, p5}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setCredentialLockerUsageInfo(Lcom/amazon/devicesetupservice/v1/CredentialLockerUsageInfo;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    .line 219
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->createReportEventRequest()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;

    move-result-object p1

    .line 221
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/AbstractProvisioningEventReporter;->reportEvent(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;)V

    return-void
.end method

.method public reportRegisteredFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/devicesetup/common/v1/ErrorInfo;Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;)V
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporterImpl;->mDeviceIdToReportingSessionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ReportingSesssion;

    if-nez p1, :cond_0

    .line 269
    sget-object p1, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporterImpl;->TAG:Ljava/lang/String;

    const-string p2, "No session found to record registered failure event"

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 273
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/AbstractProvisioningEventReporter;->getBuilderForSession(Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ReportingSesssion;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    const-string v0, "REGISTERED"

    .line 274
    invoke-virtual {p1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setState(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    const-string v0, "FAILURE"

    .line 275
    invoke-virtual {p1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setEvent(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporterImpl;->mProvisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    .line 276
    invoke-virtual {p1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setProvisionerInfo(Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    .line 277
    invoke-virtual {p1, p5}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setProvisionableInfo(Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    .line 278
    invoke-virtual {p1, p3}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setRegistrationState(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    .line 279
    invoke-virtual {p1, p2}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setProvisioningMethod(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    .line 280
    invoke-virtual {p1, p4}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setErrorInfo(Lcom/amazon/devicesetup/common/v1/ErrorInfo;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    .line 281
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->createReportEventRequest()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;

    move-result-object p1

    .line 283
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/AbstractProvisioningEventReporter;->reportEvent(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;)V

    return-void
.end method

.method public reportRetrievedProvisioningDetailsFailure(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;Lcom/amazon/devicesetup/common/v1/ErrorInfo;)V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporterImpl;->mDeviceIdToReportingSessionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ReportingSesssion;

    if-nez p1, :cond_0

    .line 183
    sget-object p1, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporterImpl;->TAG:Ljava/lang/String;

    const-string p2, "No session found to record retrieved provisioning details failure event"

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 187
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/AbstractProvisioningEventReporter;->getBuilderForSession(Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ReportingSesssion;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    const-string v0, "RETRIEVED_PROVISIONING_DETAILS"

    .line 188
    invoke-virtual {p1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setState(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    const-string v0, "FAILURE"

    .line 189
    invoke-virtual {p1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setEvent(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporterImpl;->mProvisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    .line 190
    invoke-virtual {p1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setProvisionerInfo(Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    .line 191
    invoke-virtual {p1, p2}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setProvisioningMethod(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    .line 192
    invoke-virtual {p1, p3}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setProvisionableInfo(Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    .line 193
    invoke-virtual {p1, p4}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setErrorInfo(Lcom/amazon/devicesetup/common/v1/ErrorInfo;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    .line 194
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->createReportEventRequest()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;

    move-result-object p1

    .line 196
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/AbstractProvisioningEventReporter;->reportEvent(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;)V

    return-void
.end method

.method public reportRetrievedProvisioningDetailsSuccess(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;Ljava/lang/String;Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporterImpl;->mDeviceIdToReportingSessionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ReportingSesssion;

    if-nez p1, :cond_0

    .line 162
    sget-object p1, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporterImpl;->TAG:Ljava/lang/String;

    const-string p2, "No session found to record retrieved provisioning details success event"

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 166
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/AbstractProvisioningEventReporter;->getBuilderForSession(Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ReportingSesssion;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    const-string v0, "RETRIEVED_PROVISIONING_DETAILS"

    .line 167
    invoke-virtual {p1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setState(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    const-string v0, "SUCCESS"

    .line 168
    invoke-virtual {p1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setEvent(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporterImpl;->mProvisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    .line 169
    invoke-virtual {p1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setProvisionerInfo(Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    .line 170
    invoke-virtual {p1, p3}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setProvisionableInfo(Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    .line 171
    invoke-virtual {p1, p2}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setProvisioningMethod(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    .line 172
    invoke-virtual {p1, p5}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setWifiNetworkInfo(Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    .line 173
    invoke-virtual {p1, p4}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setRegistrationState(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    .line 174
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->createReportEventRequest()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;

    move-result-object p1

    .line 176
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/AbstractProvisioningEventReporter;->reportEvent(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;)V

    return-void
.end method

.method public reportSecureChannelEstablishedFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/devicesetup/common/v1/ErrorInfo;)V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporterImpl;->mDeviceIdToReportingSessionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ReportingSesssion;

    if-nez p1, :cond_0

    .line 140
    sget-object p1, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporterImpl;->TAG:Ljava/lang/String;

    const-string p2, "No session found to record connection failure event"

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 144
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/AbstractProvisioningEventReporter;->getBuilderForSession(Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ReportingSesssion;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    const-string v0, "SECURE_CHANNEL_ESTABLISHED"

    .line 145
    invoke-virtual {p1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setState(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    const-string v0, "FAILURE"

    .line 146
    invoke-virtual {p1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setEvent(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporterImpl;->mProvisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    .line 147
    invoke-virtual {p1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setProvisionerInfo(Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    .line 148
    invoke-virtual {p1, p2}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setProvisioningMethod(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    .line 149
    invoke-virtual {p1, p3}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setTrustMethod(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    .line 150
    invoke-virtual {p1, p4}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setKeyExchangeMethod(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    .line 151
    invoke-virtual {p1, p5}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setRadio(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    .line 152
    invoke-virtual {p1, p6}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setErrorInfo(Lcom/amazon/devicesetup/common/v1/ErrorInfo;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    .line 153
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->createReportEventRequest()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;

    move-result-object p1

    .line 155
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/AbstractProvisioningEventReporter;->reportEvent(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;)V

    return-void
.end method

.method public reportSecureChannelEstablishedSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporterImpl;->mDeviceIdToReportingSessionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ReportingSesssion;

    if-nez p1, :cond_0

    .line 119
    sget-object p1, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporterImpl;->TAG:Ljava/lang/String;

    const-string p2, "No session found to record connection success event"

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 123
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/AbstractProvisioningEventReporter;->getBuilderForSession(Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ReportingSesssion;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    const-string v0, "SECURE_CHANNEL_ESTABLISHED"

    .line 124
    invoke-virtual {p1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setState(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    const-string v0, "SUCCESS"

    .line 125
    invoke-virtual {p1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setEvent(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporterImpl;->mProvisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    .line 126
    invoke-virtual {p1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setProvisionerInfo(Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    .line 127
    invoke-virtual {p1, p2}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setProvisioningMethod(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    .line 128
    invoke-virtual {p1, p3}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setTrustMethod(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    .line 129
    invoke-virtual {p1, p4}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setKeyExchangeMethod(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    .line 130
    invoke-virtual {p1, p5}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->setRadio(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;

    move-result-object p1

    .line 131
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->createReportEventRequest()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;

    move-result-object p1

    .line 133
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/AbstractProvisioningEventReporter;->reportEvent(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;)V

    return-void
.end method
