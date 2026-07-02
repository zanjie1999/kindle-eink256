.class public Lcom/amazon/devicesetupservice/v1/ReportEventInput;
.super Ljava/lang/Object;
.source "ReportEventInput.java"


# static fields
.field private static final classNameHashCode:I


# instance fields
.field private credentialLockerUsageInfo:Lcom/amazon/devicesetupservice/v1/CredentialLockerUsageInfo;

.field private errorInfo:Lcom/amazon/devicesetup/common/v1/ErrorInfo;

.field private event:Ljava/lang/String;

.field private keyExchangeMethod:Ljava/lang/String;

.field private origin:Ljava/lang/String;

.field private provisionableInfo:Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;

.field private provisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

.field private provisioningMethod:Ljava/lang/String;

.field private radio:Ljava/lang/String;

.field private registrationState:Ljava/lang/String;

.field private reportUrl:Ljava/lang/String;

.field private sequenceNumber:I

.field private sessionToken:Ljava/lang/String;

.field private state:Ljava/lang/String;

.field private trustMethod:Ljava/lang/String;

.field private wifiNetworkInfo:Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "com.amazon.devicesetupservice.v1.ReportEventInput"

    aput-object v2, v0, v1

    .line 155
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->classNameHashCode:I

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

    .line 187
    instance-of v0, p1, Lcom/amazon/devicesetupservice/v1/ReportEventInput;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 191
    :cond_0
    check-cast p1, Lcom/amazon/devicesetupservice/v1/ReportEventInput;

    .line 193
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->credentialLockerUsageInfo:Lcom/amazon/devicesetupservice/v1/CredentialLockerUsageInfo;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->credentialLockerUsageInfo:Lcom/amazon/devicesetupservice/v1/CredentialLockerUsageInfo;

    .line 194
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->errorInfo:Lcom/amazon/devicesetup/common/v1/ErrorInfo;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->errorInfo:Lcom/amazon/devicesetup/common/v1/ErrorInfo;

    .line 195
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->event:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->event:Ljava/lang/String;

    .line 196
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->keyExchangeMethod:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->keyExchangeMethod:Ljava/lang/String;

    .line 197
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->origin:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->origin:Ljava/lang/String;

    .line 198
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->provisionableInfo:Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->provisionableInfo:Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;

    .line 199
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->provisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->provisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    .line 200
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->provisioningMethod:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->provisioningMethod:Ljava/lang/String;

    .line 201
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->radio:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->radio:Ljava/lang/String;

    .line 202
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->registrationState:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->registrationState:Ljava/lang/String;

    .line 203
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->reportUrl:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->reportUrl:Ljava/lang/String;

    .line 204
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->sequenceNumber:I

    .line 205
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v2, p1, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->sequenceNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->sessionToken:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->sessionToken:Ljava/lang/String;

    .line 206
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->state:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->state:Ljava/lang/String;

    .line 207
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->trustMethod:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->trustMethod:Ljava/lang/String;

    .line 208
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->wifiNetworkInfo:Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;

    iget-object p1, p1, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->wifiNetworkInfo:Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;

    .line 209
    invoke-static {v0, p1}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getCredentialLockerUsageInfo()Lcom/amazon/devicesetupservice/v1/CredentialLockerUsageInfo;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->credentialLockerUsageInfo:Lcom/amazon/devicesetupservice/v1/CredentialLockerUsageInfo;

    return-object v0
.end method

.method public getErrorInfo()Lcom/amazon/devicesetup/common/v1/ErrorInfo;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->errorInfo:Lcom/amazon/devicesetup/common/v1/ErrorInfo;

    return-object v0
.end method

.method public getEvent()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->event:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyExchangeMethod()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->keyExchangeMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigin()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->origin:Ljava/lang/String;

    return-object v0
.end method

.method public getProvisionableInfo()Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->provisionableInfo:Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;

    return-object v0
.end method

.method public getProvisionerInfo()Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->provisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    return-object v0
.end method

.method public getProvisioningMethod()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->provisioningMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getRadio()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->radio:Ljava/lang/String;

    return-object v0
.end method

.method public getRegistrationState()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->registrationState:Ljava/lang/String;

    return-object v0
.end method

.method public getReportUrl()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->reportUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSequenceNumber()I
    .locals 1

    .line 115
    iget v0, p0, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->sequenceNumber:I

    return v0
.end method

.method public getSessionToken()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->sessionToken:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getTrustMethod()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->trustMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiNetworkInfo()Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->wifiNetworkInfo:Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/Object;

    .line 162
    sget v1, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->classNameHashCode:I

    .line 163
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->credentialLockerUsageInfo:Lcom/amazon/devicesetupservice/v1/CredentialLockerUsageInfo;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->errorInfo:Lcom/amazon/devicesetup/common/v1/ErrorInfo;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->event:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->keyExchangeMethod:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->origin:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->provisionableInfo:Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->provisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->provisioningMethod:Ljava/lang/String;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->radio:Ljava/lang/String;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->registrationState:Ljava/lang/String;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->reportUrl:Ljava/lang/String;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget v1, p0, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->sequenceNumber:I

    .line 175
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->sessionToken:Ljava/lang/String;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->state:Ljava/lang/String;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->trustMethod:Ljava/lang/String;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->wifiNetworkInfo:Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 162
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setCredentialLockerUsageInfo(Lcom/amazon/devicesetupservice/v1/CredentialLockerUsageInfo;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->credentialLockerUsageInfo:Lcom/amazon/devicesetupservice/v1/CredentialLockerUsageInfo;

    return-void
.end method

.method public setErrorInfo(Lcom/amazon/devicesetup/common/v1/ErrorInfo;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->errorInfo:Lcom/amazon/devicesetup/common/v1/ErrorInfo;

    return-void
.end method

.method public setEvent(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->event:Ljava/lang/String;

    return-void
.end method

.method public setKeyExchangeMethod(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->keyExchangeMethod:Ljava/lang/String;

    return-void
.end method

.method public setOrigin(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->origin:Ljava/lang/String;

    return-void
.end method

.method public setProvisionableInfo(Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->provisionableInfo:Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;

    return-void
.end method

.method public setProvisionerInfo(Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->provisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    return-void
.end method

.method public setProvisioningMethod(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->provisioningMethod:Ljava/lang/String;

    return-void
.end method

.method public setRadio(Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->radio:Ljava/lang/String;

    return-void
.end method

.method public setRegistrationState(Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->registrationState:Ljava/lang/String;

    return-void
.end method

.method public setReportUrl(Ljava/lang/String;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->reportUrl:Ljava/lang/String;

    return-void
.end method

.method public setSequenceNumber(I)V
    .locals 0

    .line 119
    iput p1, p0, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->sequenceNumber:I

    return-void
.end method

.method public setSessionToken(Ljava/lang/String;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->sessionToken:Ljava/lang/String;

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->state:Ljava/lang/String;

    return-void
.end method

.method public setTrustMethod(Ljava/lang/String;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->trustMethod:Ljava/lang/String;

    return-void
.end method

.method public setWifiNetworkInfo(Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->wifiNetworkInfo:Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;

    return-void
.end method
