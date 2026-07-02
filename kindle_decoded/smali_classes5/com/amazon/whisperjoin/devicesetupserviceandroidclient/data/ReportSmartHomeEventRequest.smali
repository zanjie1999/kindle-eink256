.class public Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;
.super Ljava/lang/Object;
.source "ReportSmartHomeEventRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;
    }
.end annotation


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


# instance fields
.field private final mBleMac:Ljava/lang/String;

.field private final mErrorInfo:Lcom/amazon/devicesetup/common/v1/ErrorInfo;

.field private final mEvent:Ljava/lang/String;

.field private final mProductIndex:Ljava/lang/String;

.field private final mProvisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

.field private final mProvisioningMethod:Ljava/lang/String;

.field private final mRadio:Ljava/lang/String;

.field private final mReportEventIdentifier:Ljava/lang/String;

.field private final mSequenceNumber:I

.field private final mState:Ljava/lang/String;

.field private final mZigbeeMac:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Ljava/util/HashSet;

    invoke-static {}, Lcom/amazon/devicesetupservice/reporting/State;->values()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->STATE_VALUES:Ljava/util/Set;

    .line 23
    new-instance v0, Ljava/util/HashSet;

    invoke-static {}, Lcom/amazon/devicesetup/common/v1/Event;->values()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->EVENT_VALUES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/amazon/devicesetupservice/v1/ProvisionerInfo;Lcom/amazon/devicesetup/common/v1/ErrorInfo;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->mReportEventIdentifier:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->mState:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->mEvent:Ljava/lang/String;

    .line 52
    iput-object p4, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->mBleMac:Ljava/lang/String;

    .line 53
    iput-object p5, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->mZigbeeMac:Ljava/lang/String;

    .line 54
    iput-object p6, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->mProductIndex:Ljava/lang/String;

    .line 55
    iput-object p7, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->mProvisioningMethod:Ljava/lang/String;

    .line 56
    iput-object p8, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->mRadio:Ljava/lang/String;

    .line 57
    iput p9, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->mSequenceNumber:I

    .line 58
    iput-object p10, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->mProvisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    .line 59
    iput-object p11, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->mErrorInfo:Lcom/amazon/devicesetup/common/v1/ErrorInfo;

    return-void
.end method

.method static synthetic access$000()Ljava/util/Set;
    .locals 1

    .line 19
    sget-object v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->STATE_VALUES:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/Set;
    .locals 1

    .line 19
    sget-object v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->EVENT_VALUES:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 210
    :cond_0
    instance-of v1, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 213
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;

    .line 214
    iget v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->mSequenceNumber:I

    iget v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->mSequenceNumber:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->mReportEventIdentifier:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->mReportEventIdentifier:Ljava/lang/String;

    .line 215
    invoke-static {v1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->mState:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->mState:Ljava/lang/String;

    .line 216
    invoke-static {v1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->mEvent:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->mEvent:Ljava/lang/String;

    .line 217
    invoke-static {v1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->mBleMac:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->mBleMac:Ljava/lang/String;

    .line 218
    invoke-static {v1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->mZigbeeMac:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->mZigbeeMac:Ljava/lang/String;

    .line 219
    invoke-static {v1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->mProductIndex:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->mProductIndex:Ljava/lang/String;

    .line 220
    invoke-static {v1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->mProvisioningMethod:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->mProvisioningMethod:Ljava/lang/String;

    .line 221
    invoke-static {v1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->mRadio:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->mRadio:Ljava/lang/String;

    .line 222
    invoke-static {v1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->mProvisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    iget-object v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->mProvisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    .line 223
    invoke-static {v1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->mErrorInfo:Lcom/amazon/devicesetup/common/v1/ErrorInfo;

    iget-object p1, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->mErrorInfo:Lcom/amazon/devicesetup/common/v1/ErrorInfo;

    .line 224
    invoke-static {v1, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getBleMac()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->mBleMac:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorInfo()Lcom/amazon/devicesetup/common/v1/ErrorInfo;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->mErrorInfo:Lcom/amazon/devicesetup/common/v1/ErrorInfo;

    return-object v0
.end method

.method public getEvent()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->mEvent:Ljava/lang/String;

    return-object v0
.end method

.method public getProductIndex()Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->mProductIndex:Ljava/lang/String;

    return-object v0
.end method

.method public getProvisionerInfo()Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->mProvisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    return-object v0
.end method

.method public getProvisioningMethod()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->mProvisioningMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getRadio()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->mRadio:Ljava/lang/String;

    return-object v0
.end method

.method public getReportEventIdentifier()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->mReportEventIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getSequenceNumber()I
    .locals 1

    .line 194
    iget v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->mSequenceNumber:I

    return v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->mState:Ljava/lang/String;

    return-object v0
.end method

.method public getZigbeeMac()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->mZigbeeMac:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    .line 229
    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->mReportEventIdentifier:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->mState:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->mEvent:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->mBleMac:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->mZigbeeMac:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->mProductIndex:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->mProvisioningMethod:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->mRadio:Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->mSequenceNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->mProvisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->mErrorInfo:Lcom/amazon/devicesetup/common/v1/ErrorInfo;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 234
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->mReportEventIdentifier:Ljava/lang/String;

    const-string v2, "mReportEventIdentifier"

    .line 235
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->mState:Ljava/lang/String;

    const-string v2, "mState"

    .line 236
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->mEvent:Ljava/lang/String;

    const-string v2, "mEvent"

    .line 237
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->mBleMac:Ljava/lang/String;

    const-string v2, "mBleMac"

    .line 238
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->mZigbeeMac:Ljava/lang/String;

    const-string v2, "mZigbeeMac"

    .line 239
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->mProductIndex:Ljava/lang/String;

    const-string v2, "mProductIndex"

    .line 240
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->mProvisioningMethod:Ljava/lang/String;

    const-string v2, "mProvisioningMethod"

    .line 241
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->mRadio:Ljava/lang/String;

    const-string v2, "mRadio"

    .line 242
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->mSequenceNumber:I

    const-string v2, "mSequenceNumber"

    .line 243
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->mProvisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    const-string v2, "mProvisionerInfo"

    .line 244
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->mErrorInfo:Lcom/amazon/devicesetup/common/v1/ErrorInfo;

    const-string v2, "mErrorInfo"

    .line 245
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 246
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
