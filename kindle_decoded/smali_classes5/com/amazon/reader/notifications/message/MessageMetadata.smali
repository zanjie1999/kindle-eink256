.class public Lcom/amazon/reader/notifications/message/MessageMetadata;
.super Ljava/lang/Object;
.source "MessageMetadata.java"


# instance fields
.field private activePeriod:Lcom/amazon/reader/notifications/message/ActivePeriod;

.field private campaignName:Ljava/lang/String;

.field private customerId:Ljava/lang/String;

.field private dealValidPeriod:Lcom/amazon/reader/notifications/message/DealValidPeriod;

.field private language:Ljava/lang/String;

.field private marketplace:Ljava/lang/String;

.field private messageId:Ljava/lang/String;

.field private notificationType:Ljava/lang/String;

.field private pfmType:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivePeriod()Lcom/amazon/reader/notifications/message/ActivePeriod;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/amazon/reader/notifications/message/MessageMetadata;->activePeriod:Lcom/amazon/reader/notifications/message/ActivePeriod;

    return-object v0
.end method

.method public getCampaignName()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazon/reader/notifications/message/MessageMetadata;->campaignName:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomerId()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/amazon/reader/notifications/message/MessageMetadata;->customerId:Ljava/lang/String;

    return-object v0
.end method

.method public getDealValidPeriod()Lcom/amazon/reader/notifications/message/DealValidPeriod;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/amazon/reader/notifications/message/MessageMetadata;->dealValidPeriod:Lcom/amazon/reader/notifications/message/DealValidPeriod;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/amazon/reader/notifications/message/MessageMetadata;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getMarketplace()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/amazon/reader/notifications/message/MessageMetadata;->marketplace:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/amazon/reader/notifications/message/MessageMetadata;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationType()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/amazon/reader/notifications/message/MessageMetadata;->notificationType:Ljava/lang/String;

    return-object v0
.end method

.method public getPfmType()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/amazon/reader/notifications/message/MessageMetadata;->pfmType:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/amazon/reader/notifications/message/MessageMetadata;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setActivePeriod(Lcom/amazon/reader/notifications/message/ActivePeriod;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/amazon/reader/notifications/message/MessageMetadata;->activePeriod:Lcom/amazon/reader/notifications/message/ActivePeriod;

    return-void
.end method

.method public setCampaignName(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/amazon/reader/notifications/message/MessageMetadata;->campaignName:Ljava/lang/String;

    return-void
.end method

.method public setCustomerId(Ljava/lang/String;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/amazon/reader/notifications/message/MessageMetadata;->customerId:Ljava/lang/String;

    return-void
.end method

.method public setDealValidPeriod(Lcom/amazon/reader/notifications/message/DealValidPeriod;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/amazon/reader/notifications/message/MessageMetadata;->dealValidPeriod:Lcom/amazon/reader/notifications/message/DealValidPeriod;

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/amazon/reader/notifications/message/MessageMetadata;->language:Ljava/lang/String;

    return-void
.end method

.method public setMarketplace(Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/amazon/reader/notifications/message/MessageMetadata;->marketplace:Ljava/lang/String;

    return-void
.end method

.method public setMessageId(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/amazon/reader/notifications/message/MessageMetadata;->messageId:Ljava/lang/String;

    return-void
.end method

.method public setNotificationType(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/amazon/reader/notifications/message/MessageMetadata;->notificationType:Ljava/lang/String;

    return-void
.end method

.method public setPfmType(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/amazon/reader/notifications/message/MessageMetadata;->pfmType:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/amazon/reader/notifications/message/MessageMetadata;->version:Ljava/lang/String;

    return-void
.end method
