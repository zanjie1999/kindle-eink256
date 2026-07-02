.class public Lcom/amazon/devicesetupservice/pwsync/v1/DistressDiscoveryInputParameters;
.super Lcom/amazon/devicesetupservice/DiscoveryInputParameters;
.source "DistressDiscoveryInputParameters.java"


# static fields
.field private static final classNameHashCode:I


# instance fields
.field private nonce:Ljava/lang/String;

.field private provisioningMethod:Ljava/lang/String;

.field private trustMethod:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "com.amazon.devicesetupservice.pwsync.v1.DistressDiscoveryInputParameters"

    aput-object v2, v0, v1

    .line 38
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/amazon/devicesetupservice/pwsync/v1/DistressDiscoveryInputParameters;->classNameHashCode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/amazon/devicesetupservice/DiscoveryInputParameters;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 58
    instance-of v0, p1, Lcom/amazon/devicesetupservice/pwsync/v1/DistressDiscoveryInputParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 62
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/amazon/devicesetupservice/pwsync/v1/DistressDiscoveryInputParameters;

    .line 65
    invoke-super {p0, p1}, Lcom/amazon/devicesetupservice/DiscoveryInputParameters;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/DistressDiscoveryInputParameters;->nonce:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazon/devicesetupservice/pwsync/v1/DistressDiscoveryInputParameters;->nonce:Ljava/lang/String;

    .line 66
    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/DistressDiscoveryInputParameters;->provisioningMethod:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazon/devicesetupservice/pwsync/v1/DistressDiscoveryInputParameters;->provisioningMethod:Ljava/lang/String;

    .line 67
    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/DistressDiscoveryInputParameters;->trustMethod:Ljava/lang/String;

    iget-object v0, v0, Lcom/amazon/devicesetupservice/pwsync/v1/DistressDiscoveryInputParameters;->trustMethod:Ljava/lang/String;

    .line 68
    invoke-static {p1, v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/amazon/devicesetupservice/pwsync/v1/DistressDiscoveryInputParameters;->nonce:Ljava/lang/String;

    return-object v0
.end method

.method public getProvisioningMethod()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/amazon/devicesetupservice/pwsync/v1/DistressDiscoveryInputParameters;->provisioningMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getTrustMethod()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/amazon/devicesetupservice/pwsync/v1/DistressDiscoveryInputParameters;->trustMethod:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 46
    invoke-super {p0}, Lcom/amazon/devicesetupservice/DiscoveryInputParameters;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget v1, Lcom/amazon/devicesetupservice/pwsync/v1/DistressDiscoveryInputParameters;->classNameHashCode:I

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/DistressDiscoveryInputParameters;->nonce:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/DistressDiscoveryInputParameters;->provisioningMethod:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/DistressDiscoveryInputParameters;->trustMethod:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 45
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setNonce(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/DistressDiscoveryInputParameters;->nonce:Ljava/lang/String;

    return-void
.end method

.method public setProvisioningMethod(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/DistressDiscoveryInputParameters;->provisioningMethod:Ljava/lang/String;

    return-void
.end method

.method public setTrustMethod(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/DistressDiscoveryInputParameters;->trustMethod:Ljava/lang/String;

    return-void
.end method
