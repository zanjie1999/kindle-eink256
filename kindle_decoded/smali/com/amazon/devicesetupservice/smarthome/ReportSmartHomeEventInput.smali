.class public Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;
.super Ljava/lang/Object;
.source "ReportSmartHomeEventInput.java"


# static fields
.field private static final classNameHashCode:I


# instance fields
.field private authMaterialIndex:Ljava/lang/String;

.field private errorInfo:Lcom/amazon/devicesetup/common/v1/ErrorInfo;

.field private event:Ljava/lang/String;

.field private origin:Ljava/lang/String;

.field private productIndex:Ljava/lang/String;

.field private provisioneeInfo:Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;

.field private provisioneeMacIdentifiers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/devicesetupservice/smarthome/MacIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private provisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

.field private provisioningMethod:Ljava/lang/String;

.field private radio:Ljava/lang/String;

.field private reportEventIdentifier:Ljava/lang/String;

.field private sequenceNumber:I

.field private sessionId:Ljava/lang/String;

.field private state:Ljava/lang/String;

.field private wifiNetworkInfo:Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "com.amazon.devicesetupservice.smarthome.ReportSmartHomeEventInput"

    aput-object v2, v0, v1

    .line 150
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->classNameHashCode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 181
    instance-of v0, p1, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 185
    :cond_0
    check-cast p1, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;

    .line 187
    iget-object v0, p0, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->authMaterialIndex:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->authMaterialIndex:Ljava/lang/String;

    .line 188
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->errorInfo:Lcom/amazon/devicesetup/common/v1/ErrorInfo;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->errorInfo:Lcom/amazon/devicesetup/common/v1/ErrorInfo;

    .line 189
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->event:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->event:Ljava/lang/String;

    .line 190
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->origin:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->origin:Ljava/lang/String;

    .line 191
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->productIndex:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->productIndex:Ljava/lang/String;

    .line 192
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->provisioneeInfo:Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->provisioneeInfo:Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;

    .line 193
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->provisioneeMacIdentifiers:Ljava/util/List;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->provisioneeMacIdentifiers:Ljava/util/List;

    .line 194
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->provisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->provisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    .line 195
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->provisioningMethod:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->provisioningMethod:Ljava/lang/String;

    .line 196
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->radio:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->radio:Ljava/lang/String;

    .line 197
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->reportEventIdentifier:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->reportEventIdentifier:Ljava/lang/String;

    .line 198
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->sequenceNumber:I

    .line 199
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v2, p1, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->sequenceNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->sessionId:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->sessionId:Ljava/lang/String;

    .line 200
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->state:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->state:Ljava/lang/String;

    .line 201
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->wifiNetworkInfo:Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;

    iget-object p1, p1, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->wifiNetworkInfo:Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;

    .line 202
    invoke-static {v0, p1}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getAuthMaterialIndex()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->authMaterialIndex:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorInfo()Lcom/amazon/devicesetup/common/v1/ErrorInfo;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->errorInfo:Lcom/amazon/devicesetup/common/v1/ErrorInfo;

    return-object v0
.end method

.method public getEvent()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->event:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigin()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->origin:Ljava/lang/String;

    return-object v0
.end method

.method public getProductIndex()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->productIndex:Ljava/lang/String;

    return-object v0
.end method

.method public getProvisioneeInfo()Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->provisioneeInfo:Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;

    return-object v0
.end method

.method public getProvisioneeMacIdentifiers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/devicesetupservice/smarthome/MacIdentifier;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->provisioneeMacIdentifiers:Ljava/util/List;

    return-object v0
.end method

.method public getProvisionerInfo()Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->provisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    return-object v0
.end method

.method public getProvisioningMethod()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->provisioningMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getRadio()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->radio:Ljava/lang/String;

    return-object v0
.end method

.method public getReportEventIdentifier()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->reportEventIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getSequenceNumber()I
    .locals 1

    .line 118
    iget v0, p0, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->sequenceNumber:I

    return v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiNetworkInfo()Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->wifiNetworkInfo:Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    .line 157
    sget v1, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->classNameHashCode:I

    .line 158
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->authMaterialIndex:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->errorInfo:Lcom/amazon/devicesetup/common/v1/ErrorInfo;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->event:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->origin:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->productIndex:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->provisioneeInfo:Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->provisioneeMacIdentifiers:Ljava/util/List;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->provisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->provisioningMethod:Ljava/lang/String;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->radio:Ljava/lang/String;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->reportEventIdentifier:Ljava/lang/String;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget v1, p0, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->sequenceNumber:I

    .line 170
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->sessionId:Ljava/lang/String;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->state:Ljava/lang/String;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->wifiNetworkInfo:Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 157
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setAuthMaterialIndex(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->authMaterialIndex:Ljava/lang/String;

    return-void
.end method

.method public setErrorInfo(Lcom/amazon/devicesetup/common/v1/ErrorInfo;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->errorInfo:Lcom/amazon/devicesetup/common/v1/ErrorInfo;

    return-void
.end method

.method public setEvent(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->event:Ljava/lang/String;

    return-void
.end method

.method public setOrigin(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->origin:Ljava/lang/String;

    return-void
.end method

.method public setProductIndex(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->productIndex:Ljava/lang/String;

    return-void
.end method

.method public setProvisioneeInfo(Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->provisioneeInfo:Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;

    return-void
.end method

.method public setProvisioneeMacIdentifiers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/devicesetupservice/smarthome/MacIdentifier;",
            ">;)V"
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->provisioneeMacIdentifiers:Ljava/util/List;

    return-void
.end method

.method public setProvisionerInfo(Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->provisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    return-void
.end method

.method public setProvisioningMethod(Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->provisioningMethod:Ljava/lang/String;

    return-void
.end method

.method public setRadio(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->radio:Ljava/lang/String;

    return-void
.end method

.method public setReportEventIdentifier(Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->reportEventIdentifier:Ljava/lang/String;

    return-void
.end method

.method public setSequenceNumber(I)V
    .locals 0

    .line 122
    iput p1, p0, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->sequenceNumber:I

    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->sessionId:Ljava/lang/String;

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->state:Ljava/lang/String;

    return-void
.end method

.method public setWifiNetworkInfo(Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->wifiNetworkInfo:Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;

    return-void
.end method
