.class public Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;
.super Ljava/lang/Object;
.source "ReportEventRequestBuilder.java"


# static fields
.field private static final EVENT_VALUES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_EXCHANGE_METHOD_VALUES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_MANAGEMENT_VALUES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NETWORK_STATE_VALUES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROVISIONING_METHOD_VALUES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final RADIO_VALUES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final REGISTRATION_STATE_VALUES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SEQUENCE_NUMBER_MIN:I = 0x1

.field private static final STATE_VALUES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TRUST_METHOD_VALUES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCredentialLockerUsageInfo:Lcom/amazon/devicesetupservice/v1/CredentialLockerUsageInfo;

.field private mErrorInfo:Lcom/amazon/devicesetup/common/v1/ErrorInfo;

.field private mEvent:Ljava/lang/String;

.field private mKeyExchangeMethod:Ljava/lang/String;

.field private mProvisionableInfo:Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;

.field private mProvisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

.field private mProvisioningMethod:Ljava/lang/String;

.field private mRadio:Ljava/lang/String;

.field private mRegistrationState:Ljava/lang/String;

.field private mReportingUrl:Ljava/lang/String;

.field private mSequenceNumber:I

.field private mState:Ljava/lang/String;

.field private mTrustMethod:Ljava/lang/String;

.field private mWifiNetworkInfo:Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-static {}, Lcom/amazon/devicesetupservice/reporting/State;->values()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->STATE_VALUES:Ljava/util/Set;

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-static {}, Lcom/amazon/devicesetup/common/v1/Event;->values()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->EVENT_VALUES:Ljava/util/Set;

    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-static {}, Lcom/amazon/devicesetupservice/reporting/ProvisioningMethod;->values()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->PROVISIONING_METHOD_VALUES:Ljava/util/Set;

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-static {}, Lcom/amazon/devicesetupservice/reporting/TrustMethod;->values()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->TRUST_METHOD_VALUES:Ljava/util/Set;

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-static {}, Lcom/amazon/devicesetupservice/reporting/KeyExchangeMethod;->values()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->KEY_EXCHANGE_METHOD_VALUES:Ljava/util/Set;

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-static {}, Lcom/amazon/devicesetupservice/reporting/Radio;->values()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->RADIO_VALUES:Ljava/util/Set;

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-static {}, Lcom/amazon/devicesetupservice/reporting/RegistrationState;->values()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->REGISTRATION_STATE_VALUES:Ljava/util/Set;

    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-static {}, Lcom/amazon/devicesetupservice/reporting/NetworkState;->values()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->NETWORK_STATE_VALUES:Ljava/util/Set;

    .line 37
    new-instance v0, Ljava/util/HashSet;

    invoke-static {}, Lcom/amazon/devicesetupservice/reporting/KeyManagement;->values()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->KEY_MANAGEMENT_VALUES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->mReportingUrl:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->mState:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->mEvent:Ljava/lang/String;

    const/4 v1, 0x0

    .line 42
    iput v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->mSequenceNumber:I

    .line 44
    iput-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->mProvisioningMethod:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->mTrustMethod:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->mKeyExchangeMethod:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->mRadio:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->mRegistrationState:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->mWifiNetworkInfo:Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;

    .line 51
    iput-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->mProvisionableInfo:Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;

    .line 52
    iput-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->mProvisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    .line 53
    iput-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->mErrorInfo:Lcom/amazon/devicesetup/common/v1/ErrorInfo;

    .line 54
    iput-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->mCredentialLockerUsageInfo:Lcom/amazon/devicesetupservice/v1/CredentialLockerUsageInfo;

    return-void
.end method


# virtual methods
.method public createReportEventRequest()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;
    .locals 18

    move-object/from16 v0, p0

    .line 128
    iget-object v1, v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->mReportingUrl:Ljava/lang/String;

    if-eqz v1, :cond_17

    .line 132
    iget-object v1, v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->mState:Ljava/lang/String;

    if-eqz v1, :cond_16

    .line 136
    sget-object v2, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->STATE_VALUES:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 140
    iget-object v1, v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->mEvent:Ljava/lang/String;

    if-eqz v1, :cond_14

    .line 143
    sget-object v2, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->EVENT_VALUES:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 147
    iget v1, v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->mSequenceNumber:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_12

    .line 151
    iget-object v1, v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->mProvisioningMethod:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v2, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->PROVISIONING_METHOD_VALUES:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mProvisioningMethod not a recognized value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->mProvisioningMethod:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 155
    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->mTrustMethod:Ljava/lang/String;

    if-eqz v1, :cond_3

    sget-object v2, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->TRUST_METHOD_VALUES:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 156
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTrustMethod not a recognized value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->mTrustMethod:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 159
    :cond_3
    :goto_1
    iget-object v1, v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->mKeyExchangeMethod:Ljava/lang/String;

    if-eqz v1, :cond_5

    sget-object v2, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->KEY_EXCHANGE_METHOD_VALUES:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    .line 160
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mKeyExchangeMethod not a recognized value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->mKeyExchangeMethod:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 163
    :cond_5
    :goto_2
    iget-object v1, v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->mRadio:Ljava/lang/String;

    if-eqz v1, :cond_7

    sget-object v2, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->RADIO_VALUES:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    .line 164
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRadio not a recognized value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->mRadio:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 167
    :cond_7
    :goto_3
    iget-object v1, v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->mRegistrationState:Ljava/lang/String;

    if-eqz v1, :cond_9

    sget-object v2, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->REGISTRATION_STATE_VALUES:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_4

    .line 168
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRegistrationState not a recognized value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->mRegistrationState:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 171
    :cond_9
    :goto_4
    iget-object v1, v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->mWifiNetworkInfo:Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;->getNetworkState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    sget-object v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->NETWORK_STATE_VALUES:Ljava/util/Set;

    iget-object v2, v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->mWifiNetworkInfo:Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;

    invoke-virtual {v2}, Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;->getNetworkState()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_5

    .line 172
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mNetworkState in mWifiNetworkInfo is not a recognized value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->mWifiNetworkInfo:Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;

    invoke-virtual {v3}, Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;->getNetworkState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 175
    :cond_b
    :goto_5
    iget-object v1, v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->mWifiNetworkInfo:Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;->getKeyManagement()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    sget-object v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->KEY_MANAGEMENT_VALUES:Ljava/util/Set;

    iget-object v2, v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->mWifiNetworkInfo:Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;

    invoke-virtual {v2}, Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;->getKeyManagement()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_6

    .line 176
    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mKeyManagement in mWifiNetworkInfo is not a recognized value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->mWifiNetworkInfo:Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;

    invoke-virtual {v3}, Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;->getKeyManagement()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 179
    :cond_d
    :goto_6
    iget-object v1, v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->mCredentialLockerUsageInfo:Lcom/amazon/devicesetupservice/v1/CredentialLockerUsageInfo;

    if-eqz v1, :cond_11

    .line 180
    invoke-virtual {v1}, Lcom/amazon/devicesetupservice/v1/CredentialLockerUsageInfo;->getSsidFromCredlocker()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 182
    iget-object v1, v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->mCredentialLockerUsageInfo:Lcom/amazon/devicesetupservice/v1/CredentialLockerUsageInfo;

    invoke-virtual {v1}, Lcom/amazon/devicesetupservice/v1/CredentialLockerUsageInfo;->getUserIntendsToSaveCredentialToLocker()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 184
    iget-object v1, v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->mCredentialLockerUsageInfo:Lcom/amazon/devicesetupservice/v1/CredentialLockerUsageInfo;

    invoke-virtual {v1}, Lcom/amazon/devicesetupservice/v1/CredentialLockerUsageInfo;->getChosenSSIDCredChanged()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    goto :goto_7

    .line 185
    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ChosenSSIDCredChanged in mCredentialLockerUsageInfo is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 183
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "UserIntendsToSaveCredentialToLocker in mCredentialLockerUsageInfo is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 181
    :cond_10
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "SsidFromCredlocker in mCredentialLockerUsageInfo is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 189
    :cond_11
    :goto_7
    new-instance v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;

    iget-object v4, v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->mReportingUrl:Ljava/lang/String;

    iget-object v5, v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->mState:Ljava/lang/String;

    iget-object v6, v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->mEvent:Ljava/lang/String;

    iget v7, v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->mSequenceNumber:I

    iget-object v8, v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->mProvisioningMethod:Ljava/lang/String;

    iget-object v9, v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->mTrustMethod:Ljava/lang/String;

    iget-object v10, v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->mKeyExchangeMethod:Ljava/lang/String;

    iget-object v11, v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->mRadio:Ljava/lang/String;

    iget-object v12, v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->mRegistrationState:Ljava/lang/String;

    iget-object v13, v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->mWifiNetworkInfo:Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;

    iget-object v14, v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->mProvisionableInfo:Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;

    iget-object v15, v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->mProvisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    iget-object v2, v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->mErrorInfo:Lcom/amazon/devicesetup/common/v1/ErrorInfo;

    iget-object v3, v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->mCredentialLockerUsageInfo:Lcom/amazon/devicesetupservice/v1/CredentialLockerUsageInfo;

    move-object/from16 v17, v3

    move-object v3, v1

    move-object/from16 v16, v2

    invoke-direct/range {v3 .. v17}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;Lcom/amazon/devicesetup/common/v1/ErrorInfo;Lcom/amazon/devicesetupservice/v1/CredentialLockerUsageInfo;)V

    return-object v1

    .line 148
    :cond_12
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSequenceNumber has to be greater than 1, found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->mSequenceNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 144
    :cond_13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEvent not a recognized value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->mEvent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 141
    :cond_14
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "mEvent can not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 137
    :cond_15
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mState not a recognized value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->mState:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 133
    :cond_16
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "mState can not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 129
    :cond_17
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "mReportingUrl can not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setCredentialLockerUsageInfo(Lcom/amazon/devicesetupservice/v1/CredentialLockerUsageInfo;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->mCredentialLockerUsageInfo:Lcom/amazon/devicesetupservice/v1/CredentialLockerUsageInfo;

    return-object p0
.end method

.method public setErrorInfo(Lcom/amazon/devicesetup/common/v1/ErrorInfo;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->mErrorInfo:Lcom/amazon/devicesetup/common/v1/ErrorInfo;

    return-object p0
.end method

.method public setEvent(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->mEvent:Ljava/lang/String;

    return-object p0
.end method

.method public setKeyExchangeMethod(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->mKeyExchangeMethod:Ljava/lang/String;

    return-object p0
.end method

.method public setProvisionableInfo(Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->mProvisionableInfo:Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;

    return-object p0
.end method

.method public setProvisionerInfo(Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->mProvisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    return-object p0
.end method

.method public setProvisioningMethod(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->mProvisioningMethod:Ljava/lang/String;

    return-object p0
.end method

.method public setRadio(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->mRadio:Ljava/lang/String;

    return-object p0
.end method

.method public setRegistrationState(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->mRegistrationState:Ljava/lang/String;

    return-object p0
.end method

.method public setReportingUrl(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->mReportingUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setSequenceNumber(I)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;
    .locals 0

    .line 72
    iput p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->mSequenceNumber:I

    return-object p0
.end method

.method public setState(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->mState:Ljava/lang/String;

    return-object p0
.end method

.method public setTrustMethod(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->mTrustMethod:Ljava/lang/String;

    return-object p0
.end method

.method public setWifiNetworkInfo(Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequestBuilder;->mWifiNetworkInfo:Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;

    return-object p0
.end method
