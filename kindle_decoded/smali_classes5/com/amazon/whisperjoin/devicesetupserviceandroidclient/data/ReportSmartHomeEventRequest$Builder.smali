.class public Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;
.super Ljava/lang/Object;
.source "ReportSmartHomeEventRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBleMac:Ljava/lang/String;

.field private mErrorInfo:Lcom/amazon/devicesetup/common/v1/ErrorInfo;

.field private mEvent:Ljava/lang/String;

.field private mProductIndex:Ljava/lang/String;

.field private mProvisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

.field private mProvisioningMethod:Ljava/lang/String;

.field private mRadio:Ljava/lang/String;

.field private mReportEventIdentifier:Ljava/lang/String;

.field private mSequenceNumber:I

.field private mState:Ljava/lang/String;

.field private mZigbeeMac:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createReportSmartHomeEventRequest()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;
    .locals 14

    .line 133
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;->mReportEventIdentifier:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 137
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;->mState:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 141
    invoke-static {}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->access$000()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;->mState:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 145
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;->mEvent:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 148
    invoke-static {}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->access$100()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;->mEvent:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    iget v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;->mSequenceNumber:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 157
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;

    iget-object v3, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;->mReportEventIdentifier:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;->mState:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;->mEvent:Ljava/lang/String;

    iget-object v6, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;->mBleMac:Ljava/lang/String;

    iget-object v7, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;->mZigbeeMac:Ljava/lang/String;

    iget-object v8, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;->mProductIndex:Ljava/lang/String;

    iget-object v9, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;->mProvisioningMethod:Ljava/lang/String;

    iget-object v10, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;->mRadio:Ljava/lang/String;

    iget v11, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;->mSequenceNumber:I

    iget-object v12, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;->mProvisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    iget-object v13, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;->mErrorInfo:Lcom/amazon/devicesetup/common/v1/ErrorInfo;

    move-object v2, v0

    invoke-direct/range {v2 .. v13}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/amazon/devicesetupservice/v1/ProvisionerInfo;Lcom/amazon/devicesetup/common/v1/ErrorInfo;)V

    return-object v0

    .line 153
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSequenceNumber has to be greater than 1, found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;->mSequenceNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mEvent not a recognized value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;->mEvent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mEvent can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mState not a recognized value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;->mState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mState can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mReportEventIdentifier can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBleMac(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;->mBleMac:Ljava/lang/String;

    return-object p0
.end method

.method public setErrorInfo(Lcom/amazon/devicesetup/common/v1/ErrorInfo;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;->mErrorInfo:Lcom/amazon/devicesetup/common/v1/ErrorInfo;

    return-object p0
.end method

.method public setEvent(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;->mEvent:Ljava/lang/String;

    return-object p0
.end method

.method public setProductIndex(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;->mProductIndex:Ljava/lang/String;

    return-object p0
.end method

.method public setProvisionerInfo(Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;->mProvisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    return-object p0
.end method

.method public setProvisioningMethod(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;->mProvisioningMethod:Ljava/lang/String;

    return-object p0
.end method

.method public setRadio(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;->mRadio:Ljava/lang/String;

    return-object p0
.end method

.method public setReportEventIdentifier(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;->mReportEventIdentifier:Ljava/lang/String;

    return-object p0
.end method

.method public setSequenceNumber(I)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;
    .locals 0

    .line 117
    iput p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;->mSequenceNumber:I

    return-object p0
.end method

.method public setState(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;->mState:Ljava/lang/String;

    return-object p0
.end method

.method public setZigbeeMac(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;->mZigbeeMac:Ljava/lang/String;

    return-object p0
.end method
