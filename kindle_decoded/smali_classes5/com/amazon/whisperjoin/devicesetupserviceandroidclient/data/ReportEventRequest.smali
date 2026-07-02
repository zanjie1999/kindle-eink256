.class public Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;
.super Ljava/lang/Object;
.source "ReportEventRequest.java"


# instance fields
.field private final mCredentialLockerUsageInfo:Lcom/amazon/devicesetupservice/v1/CredentialLockerUsageInfo;

.field private final mErrorInfo:Lcom/amazon/devicesetup/common/v1/ErrorInfo;

.field private final mEvent:Ljava/lang/String;

.field private final mKeyExchangeMethod:Ljava/lang/String;

.field private final mProvisionableInfo:Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;

.field private final mProvisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

.field private final mProvisioningMethod:Ljava/lang/String;

.field private final mRadio:Ljava/lang/String;

.field private final mRegistrationState:Ljava/lang/String;

.field private final mReportingUrl:Ljava/lang/String;

.field private final mSequenceNumber:I

.field private final mState:Ljava/lang/String;

.field private final mTrustMethod:Ljava/lang/String;

.field private final mWifiNetworkInfo:Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;Lcom/amazon/devicesetup/common/v1/ErrorInfo;Lcom/amazon/devicesetupservice/v1/CredentialLockerUsageInfo;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mReportingUrl:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mState:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mEvent:Ljava/lang/String;

    .line 56
    iput p4, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mSequenceNumber:I

    .line 57
    iput-object p5, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mProvisioningMethod:Ljava/lang/String;

    .line 58
    iput-object p6, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mTrustMethod:Ljava/lang/String;

    .line 59
    iput-object p7, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mKeyExchangeMethod:Ljava/lang/String;

    .line 60
    iput-object p8, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mRadio:Ljava/lang/String;

    .line 61
    iput-object p9, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mRegistrationState:Ljava/lang/String;

    .line 62
    iput-object p10, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mWifiNetworkInfo:Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;

    .line 63
    iput-object p11, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mProvisionableInfo:Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;

    .line 64
    iput-object p12, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mProvisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    .line 65
    iput-object p13, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mErrorInfo:Lcom/amazon/devicesetup/common/v1/ErrorInfo;

    .line 66
    iput-object p14, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mCredentialLockerUsageInfo:Lcom/amazon/devicesetupservice/v1/CredentialLockerUsageInfo;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 130
    const-class v2, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 133
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;

    .line 134
    iget v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mSequenceNumber:I

    iget v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mSequenceNumber:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mReportingUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mReportingUrl:Ljava/lang/String;

    .line 135
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mState:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mState:Ljava/lang/String;

    .line 136
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mEvent:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mEvent:Ljava/lang/String;

    .line 137
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mProvisioningMethod:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mProvisioningMethod:Ljava/lang/String;

    .line 138
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mTrustMethod:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mTrustMethod:Ljava/lang/String;

    .line 139
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mKeyExchangeMethod:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mKeyExchangeMethod:Ljava/lang/String;

    .line 140
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mRadio:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mRadio:Ljava/lang/String;

    .line 141
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mRegistrationState:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mRegistrationState:Ljava/lang/String;

    .line 142
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mWifiNetworkInfo:Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;

    iget-object v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mWifiNetworkInfo:Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;

    .line 143
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mProvisionableInfo:Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;

    iget-object v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mProvisionableInfo:Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;

    .line 144
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mProvisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    iget-object v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mProvisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    .line 145
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mErrorInfo:Lcom/amazon/devicesetup/common/v1/ErrorInfo;

    iget-object v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mErrorInfo:Lcom/amazon/devicesetup/common/v1/ErrorInfo;

    .line 146
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mCredentialLockerUsageInfo:Lcom/amazon/devicesetupservice/v1/CredentialLockerUsageInfo;

    iget-object p1, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mCredentialLockerUsageInfo:Lcom/amazon/devicesetupservice/v1/CredentialLockerUsageInfo;

    .line 147
    invoke-static {v2, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getCredentialLockerUsageInfo()Lcom/amazon/devicesetupservice/v1/CredentialLockerUsageInfo;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mCredentialLockerUsageInfo:Lcom/amazon/devicesetupservice/v1/CredentialLockerUsageInfo;

    return-object v0
.end method

.method public getErrorInfo()Lcom/amazon/devicesetup/common/v1/ErrorInfo;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mErrorInfo:Lcom/amazon/devicesetup/common/v1/ErrorInfo;

    return-object v0
.end method

.method public getEvent()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mEvent:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyExchangeMethod()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mKeyExchangeMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getProvisionableInfo()Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mProvisionableInfo:Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;

    return-object v0
.end method

.method public getProvisionerInfo()Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mProvisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    return-object v0
.end method

.method public getProvisioningMethod()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mProvisioningMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getRadio()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mRadio:Ljava/lang/String;

    return-object v0
.end method

.method public getRegistrationState()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mRegistrationState:Ljava/lang/String;

    return-object v0
.end method

.method public getReportingUrl()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mReportingUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSequenceNumber()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mSequenceNumber:I

    return v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mState:Ljava/lang/String;

    return-object v0
.end method

.method public getTrustMethod()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mTrustMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiNetworkInfo()Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mWifiNetworkInfo:Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/Object;

    .line 152
    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mReportingUrl:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mState:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mEvent:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mSequenceNumber:I

    .line 155
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mProvisioningMethod:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mTrustMethod:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mKeyExchangeMethod:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mRadio:Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mRegistrationState:Ljava/lang/String;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mWifiNetworkInfo:Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mProvisionableInfo:Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mProvisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mErrorInfo:Lcom/amazon/devicesetup/common/v1/ErrorInfo;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mCredentialLockerUsageInfo:Lcom/amazon/devicesetupservice/v1/CredentialLockerUsageInfo;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 152
    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 170
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mReportingUrl:Ljava/lang/String;

    const-string v2, "mReportingUrl"

    .line 171
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mState:Ljava/lang/String;

    const-string v2, "mState"

    .line 172
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mEvent:Ljava/lang/String;

    const-string v2, "mEvent"

    .line 173
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mSequenceNumber:I

    const-string v2, "mSequenceNumber"

    .line 174
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mProvisioningMethod:Ljava/lang/String;

    const-string v2, "mProvisioningMethod"

    .line 175
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mTrustMethod:Ljava/lang/String;

    const-string v2, "mTrustMethod"

    .line 176
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mKeyExchangeMethod:Ljava/lang/String;

    const-string v2, "mKeyExchangeMethod"

    .line 177
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mRadio:Ljava/lang/String;

    const-string v2, "mRadio"

    .line 178
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mRegistrationState:Ljava/lang/String;

    const-string v2, "mRegistrationState"

    .line 179
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mWifiNetworkInfo:Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;

    const-string v2, "mWifiNetworkInfo"

    .line 180
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mProvisionableInfo:Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;

    const-string v2, "mProvisionableInfo"

    .line 181
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mProvisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    const-string v2, "mProvisionerInfo"

    .line 182
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mErrorInfo:Lcom/amazon/devicesetup/common/v1/ErrorInfo;

    const-string v2, "mErrorInfo"

    .line 183
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->mCredentialLockerUsageInfo:Lcom/amazon/devicesetupservice/v1/CredentialLockerUsageInfo;

    const-string v2, "mCredentialLockerUsageInfo"

    .line 184
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 185
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
