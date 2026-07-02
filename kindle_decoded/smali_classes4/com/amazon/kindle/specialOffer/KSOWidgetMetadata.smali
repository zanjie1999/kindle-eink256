.class public Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;
.super Ljava/lang/Object;
.source "KSOWidgetMetadata.java"


# instance fields
.field private adType:Ljava/lang/String;

.field private final campaignId:Ljava/lang/String;

.field private endTime:Ljava/util/Date;

.field private extraParams:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;

.field private link:Ljava/lang/String;

.field private localImagePath:Ljava/lang/String;

.field private openInStore:Ljava/lang/String;

.field private startTime:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->campaignId:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->startTime:Ljava/util/Date;

    .line 58
    iput-object p3, p0, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->endTime:Ljava/util/Date;

    .line 59
    iput-object p4, p0, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->imageUrl:Ljava/lang/String;

    .line 60
    iput-object p5, p0, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->link:Ljava/lang/String;

    .line 61
    iput-object p6, p0, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->openInStore:Ljava/lang/String;

    .line 62
    iput-object p7, p0, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->adType:Ljava/lang/String;

    .line 63
    iput-object p8, p0, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->extraParams:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 140
    :cond_0
    instance-of v1, p1, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 143
    :cond_1
    check-cast p1, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;

    .line 144
    iget-object v1, p1, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->campaignId:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->campaignId:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->startTime:Ljava/util/Date;

    iget-object v3, p0, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->startTime:Ljava/util/Date;

    invoke-virtual {v1, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->endTime:Ljava/util/Date;

    iget-object v3, p0, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->endTime:Ljava/util/Date;

    .line 145
    invoke-virtual {v1, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->imageUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->imageUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->openInStore:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->openInStore:Ljava/lang/String;

    .line 146
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->adType:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->adType:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p1, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->extraParams:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->extraParams:Ljava/lang/String;

    .line 147
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAdType()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->adType:Ljava/lang/String;

    return-object v0
.end method

.method public getCampaignId()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->campaignId:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()Ljava/util/Date;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->endTime:Ljava/util/Date;

    return-object v0
.end method

.method public getExtraParams()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->extraParams:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalImagePath()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->localImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenInStore()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->openInStore:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()Ljava/util/Date;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->startTime:Ljava/util/Date;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->campaignId:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setLocalImagePath(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->localImagePath:Ljava/lang/String;

    return-void
.end method
