.class public Lcom/amazon/devicesetupservice/v1/WifiNetworkDetail;
.super Ljava/lang/Object;
.source "WifiNetworkDetail.java"


# static fields
.field private static final classNameHashCode:I


# instance fields
.field private credential:Lcom/amazon/devicesetup/common/v1/WifiCredentials;

.field private preferredNetwork:Ljava/lang/Boolean;

.field private scanData:Lcom/amazon/devicesetup/common/v1/WifiScanData;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "com.amazon.devicesetupservice.v1.WifiNetworkDetail"

    aput-object v2, v0, v1

    .line 39
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/amazon/devicesetupservice/v1/WifiNetworkDetail;->classNameHashCode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 58
    instance-of v0, p1, Lcom/amazon/devicesetupservice/v1/WifiNetworkDetail;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 62
    :cond_0
    check-cast p1, Lcom/amazon/devicesetupservice/v1/WifiNetworkDetail;

    .line 64
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/WifiNetworkDetail;->credential:Lcom/amazon/devicesetup/common/v1/WifiCredentials;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/WifiNetworkDetail;->credential:Lcom/amazon/devicesetup/common/v1/WifiCredentials;

    .line 65
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/WifiNetworkDetail;->preferredNetwork:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/WifiNetworkDetail;->preferredNetwork:Ljava/lang/Boolean;

    .line 66
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/WifiNetworkDetail;->scanData:Lcom/amazon/devicesetup/common/v1/WifiScanData;

    iget-object p1, p1, Lcom/amazon/devicesetupservice/v1/WifiNetworkDetail;->scanData:Lcom/amazon/devicesetup/common/v1/WifiScanData;

    .line 67
    invoke-static {v0, p1}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getCredential()Lcom/amazon/devicesetup/common/v1/WifiCredentials;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/WifiNetworkDetail;->credential:Lcom/amazon/devicesetup/common/v1/WifiCredentials;

    return-object v0
.end method

.method public getScanData()Lcom/amazon/devicesetup/common/v1/WifiScanData;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/WifiNetworkDetail;->scanData:Lcom/amazon/devicesetup/common/v1/WifiScanData;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 46
    sget v1, Lcom/amazon/devicesetupservice/v1/WifiNetworkDetail;->classNameHashCode:I

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/WifiNetworkDetail;->credential:Lcom/amazon/devicesetup/common/v1/WifiCredentials;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/WifiNetworkDetail;->preferredNetwork:Ljava/lang/Boolean;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/WifiNetworkDetail;->scanData:Lcom/amazon/devicesetup/common/v1/WifiScanData;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 46
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isPreferredNetwork()Ljava/lang/Boolean;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/WifiNetworkDetail;->preferredNetwork:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setCredential(Lcom/amazon/devicesetup/common/v1/WifiCredentials;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/WifiNetworkDetail;->credential:Lcom/amazon/devicesetup/common/v1/WifiCredentials;

    return-void
.end method

.method public setPreferredNetwork(Ljava/lang/Boolean;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/WifiNetworkDetail;->preferredNetwork:Ljava/lang/Boolean;

    return-void
.end method

.method public setScanData(Lcom/amazon/devicesetup/common/v1/WifiScanData;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/WifiNetworkDetail;->scanData:Lcom/amazon/devicesetup/common/v1/WifiScanData;

    return-void
.end method
