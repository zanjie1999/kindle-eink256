.class public Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceOutput;
.super Ljava/lang/Object;
.source "DiscoveredProvisionableDeviceOutput.java"


# static fields
.field private static final classNameHashCode:I


# instance fields
.field private canProceed:Z

.field private endpointToUse:Ljava/lang/String;

.field private provisionableReportUrl:Ljava/lang/String;

.field private provisionerReportUrl:Ljava/lang/String;

.field private waitTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "com.amazon.devicesetupservice.v1.DiscoveredProvisionableDeviceOutput"

    aput-object v2, v0, v1

    .line 54
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceOutput;->classNameHashCode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 75
    instance-of v0, p1, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceOutput;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 79
    :cond_0
    check-cast p1, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceOutput;

    .line 81
    iget-boolean v0, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceOutput;->canProceed:Z

    .line 82
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v2, p1, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceOutput;->canProceed:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceOutput;->endpointToUse:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceOutput;->endpointToUse:Ljava/lang/String;

    .line 83
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceOutput;->provisionableReportUrl:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceOutput;->provisionableReportUrl:Ljava/lang/String;

    .line 84
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceOutput;->provisionerReportUrl:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceOutput;->provisionerReportUrl:Ljava/lang/String;

    .line 85
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v2, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceOutput;->waitTime:J

    .line 86
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v2, p1, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceOutput;->waitTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getEndpointToUse()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceOutput;->endpointToUse:Ljava/lang/String;

    return-object v0
.end method

.method public getProvisionableReportUrl()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceOutput;->provisionableReportUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getProvisionerReportUrl()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceOutput;->provisionerReportUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getWaitTime()J
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceOutput;->waitTime:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 61
    sget v1, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceOutput;->classNameHashCode:I

    .line 62
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceOutput;->canProceed:Z

    .line 63
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceOutput;->endpointToUse:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceOutput;->provisionableReportUrl:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceOutput;->provisionerReportUrl:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceOutput;->waitTime:J

    .line 67
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 61
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isCanProceed()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceOutput;->canProceed:Z

    return v0
.end method

.method public setCanProceed(Z)V
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceOutput;->canProceed:Z

    return-void
.end method

.method public setEndpointToUse(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceOutput;->endpointToUse:Ljava/lang/String;

    return-void
.end method

.method public setProvisionableReportUrl(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceOutput;->provisionableReportUrl:Ljava/lang/String;

    return-void
.end method

.method public setProvisionerReportUrl(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceOutput;->provisionerReportUrl:Ljava/lang/String;

    return-void
.end method

.method public setWaitTime(J)V
    .locals 0

    .line 50
    iput-wide p1, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceOutput;->waitTime:J

    return-void
.end method
