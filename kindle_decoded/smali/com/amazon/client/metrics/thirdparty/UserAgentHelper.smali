.class public Lcom/amazon/client/metrics/thirdparty/UserAgentHelper;
.super Ljava/lang/Object;
.source "UserAgentHelper.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeviceCategory:Ljava/lang/String;

.field private mDeviceInfoManager:Lcom/amazon/client/metrics/thirdparty/DeviceInfoManager;

.field private mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/client/metrics/thirdparty/DeviceInfoManager;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/UserAgentHelper;->mContext:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/amazon/client/metrics/thirdparty/UserAgentHelper;->mDeviceInfoManager:Lcom/amazon/client/metrics/thirdparty/DeviceInfoManager;

    return-void
.end method

.method private emptyIfNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method private generateUserAgent()Ljava/lang/String;
    .locals 5

    .line 45
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/UserAgentHelper;->mDeviceCategory:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/UserAgentHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/client/metrics/thirdparty/utils/DeviceCategoryUtil;->getDeviceCategory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/client/metrics/thirdparty/UserAgentHelper;->mDeviceCategory:Ljava/lang/String;

    .line 48
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/amazon/client/metrics/thirdparty/UserAgentHelper;->mDeviceCategory:Ljava/lang/String;

    .line 49
    invoke-direct {p0, v3}, Lcom/amazon/client/metrics/thirdparty/UserAgentHelper;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/amazon/client/metrics/thirdparty/UserAgentHelper;->mDeviceInfoManager:Lcom/amazon/client/metrics/thirdparty/DeviceInfoManager;

    .line 50
    invoke-interface {v3}, Lcom/amazon/client/metrics/thirdparty/DeviceInfoManager;->getDeviceInfo()Lcom/amazon/client/metrics/thirdparty/MetricsDeviceInfo;

    move-result-object v3

    const-string v4, "deviceType"

    invoke-virtual {v3, v4}, Lcom/amazon/client/metrics/thirdparty/MetricsDeviceInfo;->getDeviceInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "Android"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "AMZN(%s/%s/%s,%s/%s,//,DCM)"

    .line 48
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hasUserAgent(Lcom/amazon/client/metrics/thirdparty/MetricEntry;)Z
    .locals 2

    .line 55
    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/MetricEntry;->getDatapoints()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/client/metrics/thirdparty/DataPoint;

    .line 56
    sget-object v1, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->USER_AGENT:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    invoke-virtual {v1}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazon/client/metrics/thirdparty/DataPoint;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public addUserAgentIfNotSet(Lcom/amazon/client/metrics/thirdparty/MetricEntry;)V
    .locals 5

    .line 29
    invoke-direct {p0, p1}, Lcom/amazon/client/metrics/thirdparty/UserAgentHelper;->hasUserAgent(Lcom/amazon/client/metrics/thirdparty/MetricEntry;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 30
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/UserAgentHelper;->mUserAgent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-direct {p0}, Lcom/amazon/client/metrics/thirdparty/UserAgentHelper;->generateUserAgent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/client/metrics/thirdparty/UserAgentHelper;->mUserAgent:Ljava/lang/String;

    .line 33
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/MetricEntry;->getDatapoints()Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/amazon/client/metrics/thirdparty/DataPoint;

    sget-object v1, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->USER_AGENT:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    invoke-virtual {v1}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/UserAgentHelper;->mUserAgent:Ljava/lang/String;

    const/4 v3, 0x1

    sget-object v4, Lcom/amazon/client/metrics/thirdparty/DataPointType;->DV:Lcom/amazon/client/metrics/thirdparty/DataPointType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/client/metrics/thirdparty/DataPoint;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/amazon/client/metrics/thirdparty/DataPointType;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
