.class public Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeInput;
.super Ljava/lang/Object;
.source "DiscoveredProvisioneeInput.java"


# static fields
.field private static final classNameHashCode:I


# instance fields
.field private accessToken:Ljava/lang/String;

.field private discoveryInputParameters:Lcom/amazon/devicesetupservice/DiscoveryInputParameters;

.field private provisioneeDetails:Lcom/amazon/devicesetupservice/ProvisioneeDetails;

.field private provisionerDetails:Lcom/amazon/devicesetupservice/ProvisionerDetails;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "com.amazon.devicesetupservice.v1.DiscoveredProvisioneeInput"

    aput-object v2, v0, v1

    .line 49
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeInput;->classNameHashCode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 69
    instance-of v0, p1, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeInput;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 73
    :cond_0
    check-cast p1, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeInput;

    .line 75
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeInput;->accessToken:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeInput;->accessToken:Ljava/lang/String;

    .line 76
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeInput;->discoveryInputParameters:Lcom/amazon/devicesetupservice/DiscoveryInputParameters;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeInput;->discoveryInputParameters:Lcom/amazon/devicesetupservice/DiscoveryInputParameters;

    .line 77
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeInput;->provisioneeDetails:Lcom/amazon/devicesetupservice/ProvisioneeDetails;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeInput;->provisioneeDetails:Lcom/amazon/devicesetupservice/ProvisioneeDetails;

    .line 78
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeInput;->provisionerDetails:Lcom/amazon/devicesetupservice/ProvisionerDetails;

    iget-object p1, p1, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeInput;->provisionerDetails:Lcom/amazon/devicesetupservice/ProvisionerDetails;

    .line 79
    invoke-static {v0, p1}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeInput;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getDiscoveryInputParameters()Lcom/amazon/devicesetupservice/DiscoveryInputParameters;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeInput;->discoveryInputParameters:Lcom/amazon/devicesetupservice/DiscoveryInputParameters;

    return-object v0
.end method

.method public getProvisioneeDetails()Lcom/amazon/devicesetupservice/ProvisioneeDetails;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeInput;->provisioneeDetails:Lcom/amazon/devicesetupservice/ProvisioneeDetails;

    return-object v0
.end method

.method public getProvisionerDetails()Lcom/amazon/devicesetupservice/ProvisionerDetails;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeInput;->provisionerDetails:Lcom/amazon/devicesetupservice/ProvisionerDetails;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 56
    sget v1, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeInput;->classNameHashCode:I

    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeInput;->accessToken:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeInput;->discoveryInputParameters:Lcom/amazon/devicesetupservice/DiscoveryInputParameters;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeInput;->provisioneeDetails:Lcom/amazon/devicesetupservice/ProvisioneeDetails;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeInput;->provisionerDetails:Lcom/amazon/devicesetupservice/ProvisionerDetails;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 56
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeInput;->accessToken:Ljava/lang/String;

    return-void
.end method

.method public setDiscoveryInputParameters(Lcom/amazon/devicesetupservice/DiscoveryInputParameters;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeInput;->discoveryInputParameters:Lcom/amazon/devicesetupservice/DiscoveryInputParameters;

    return-void
.end method

.method public setProvisioneeDetails(Lcom/amazon/devicesetupservice/ProvisioneeDetails;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeInput;->provisioneeDetails:Lcom/amazon/devicesetupservice/ProvisioneeDetails;

    return-void
.end method

.method public setProvisionerDetails(Lcom/amazon/devicesetupservice/ProvisionerDetails;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeInput;->provisionerDetails:Lcom/amazon/devicesetupservice/ProvisionerDetails;

    return-void
.end method
