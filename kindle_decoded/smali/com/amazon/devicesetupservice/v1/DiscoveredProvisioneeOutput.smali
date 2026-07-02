.class public Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeOutput;
.super Ljava/lang/Object;
.source "DiscoveredProvisioneeOutput.java"


# static fields
.field private static final classNameHashCode:I


# instance fields
.field private canProceed:Z

.field private discoveryOutputParameters:Lcom/amazon/devicesetupservice/DiscoveryOutputParameters;

.field private endpointToUse:Ljava/lang/String;

.field private provisioneeReportUrl:Ljava/lang/String;

.field private provisionerReportUrl:Ljava/lang/String;

.field private waitTime:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "com.amazon.devicesetupservice.v1.DiscoveredProvisioneeOutput"

    aput-object v2, v0, v1

    .line 65
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeOutput;->classNameHashCode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 87
    instance-of v0, p1, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeOutput;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 91
    :cond_0
    check-cast p1, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeOutput;

    .line 93
    iget-boolean v0, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeOutput;->canProceed:Z

    .line 94
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v2, p1, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeOutput;->canProceed:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeOutput;->discoveryOutputParameters:Lcom/amazon/devicesetupservice/DiscoveryOutputParameters;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeOutput;->discoveryOutputParameters:Lcom/amazon/devicesetupservice/DiscoveryOutputParameters;

    .line 95
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeOutput;->endpointToUse:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeOutput;->endpointToUse:Ljava/lang/String;

    .line 96
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeOutput;->provisioneeReportUrl:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeOutput;->provisioneeReportUrl:Ljava/lang/String;

    .line 97
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeOutput;->provisionerReportUrl:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeOutput;->provisionerReportUrl:Ljava/lang/String;

    .line 98
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeOutput;->waitTime:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeOutput;->waitTime:Ljava/lang/String;

    .line 99
    invoke-static {v0, p1}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getDiscoveryOutputParameters()Lcom/amazon/devicesetupservice/DiscoveryOutputParameters;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeOutput;->discoveryOutputParameters:Lcom/amazon/devicesetupservice/DiscoveryOutputParameters;

    return-object v0
.end method

.method public getEndpointToUse()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeOutput;->endpointToUse:Ljava/lang/String;

    return-object v0
.end method

.method public getProvisioneeReportUrl()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeOutput;->provisioneeReportUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getProvisionerReportUrl()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeOutput;->provisionerReportUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getWaitTime()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeOutput;->waitTime:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    .line 72
    sget v1, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeOutput;->classNameHashCode:I

    .line 73
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeOutput;->canProceed:Z

    .line 74
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeOutput;->discoveryOutputParameters:Lcom/amazon/devicesetupservice/DiscoveryOutputParameters;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeOutput;->endpointToUse:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeOutput;->provisioneeReportUrl:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeOutput;->provisionerReportUrl:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeOutput;->waitTime:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 72
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isCanProceed()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeOutput;->canProceed:Z

    return v0
.end method

.method public setCanProceed(Z)V
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeOutput;->canProceed:Z

    return-void
.end method

.method public setDiscoveryOutputParameters(Lcom/amazon/devicesetupservice/DiscoveryOutputParameters;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeOutput;->discoveryOutputParameters:Lcom/amazon/devicesetupservice/DiscoveryOutputParameters;

    return-void
.end method

.method public setEndpointToUse(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeOutput;->endpointToUse:Ljava/lang/String;

    return-void
.end method

.method public setProvisioneeReportUrl(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeOutput;->provisioneeReportUrl:Ljava/lang/String;

    return-void
.end method

.method public setProvisionerReportUrl(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeOutput;->provisionerReportUrl:Ljava/lang/String;

    return-void
.end method

.method public setWaitTime(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeOutput;->waitTime:Ljava/lang/String;

    return-void
.end method
