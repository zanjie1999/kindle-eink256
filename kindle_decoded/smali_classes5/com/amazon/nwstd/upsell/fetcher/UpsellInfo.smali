.class public Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;
.super Ljava/lang/Object;
.source "UpsellInfo.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mCeUpsellBannerInfo:Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;

.field private mCeUpsellFullPageAdInfo:Lcom/amazon/nwstd/upsell/fetcher/UpsellFullPageAdInfo;

.field private mKuUpsellBannerInfo:Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;

.field private mKuUpsellFullPageAdInfo:Lcom/amazon/nwstd/upsell/fetcher/UpsellFullPageAdInfo;

.field private mPrUpsellBannerInfo:Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;

.field private mPrUpsellFullPageAdInfo:Lcom/amazon/nwstd/upsell/fetcher/UpsellFullPageAdInfo;

.field private mUpsellCampaignInfo:Lcom/amazon/nwstd/upsell/fetcher/UpsellCampaignInfo;

.field private mUpsellHomeBannerInfo:Lcom/amazon/nwstd/upsell/fetcher/UpsellHomeBannerInfo;

.field private mUpsellLibBannerInfo:Lcom/amazon/nwstd/upsell/fetcher/UpsellLibBannerInfo;

.field private mUpsellTargetPageInfo:Lcom/amazon/nwstd/upsell/fetcher/UpsellTargetPageInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->mCeUpsellFullPageAdInfo:Lcom/amazon/nwstd/upsell/fetcher/UpsellFullPageAdInfo;

    .line 27
    iput-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->mUpsellLibBannerInfo:Lcom/amazon/nwstd/upsell/fetcher/UpsellLibBannerInfo;

    .line 32
    iput-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->mCeUpsellBannerInfo:Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;

    .line 37
    iput-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->mUpsellCampaignInfo:Lcom/amazon/nwstd/upsell/fetcher/UpsellCampaignInfo;

    .line 41
    iput-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->mUpsellHomeBannerInfo:Lcom/amazon/nwstd/upsell/fetcher/UpsellHomeBannerInfo;

    .line 45
    iput-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->mKuUpsellBannerInfo:Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;

    .line 49
    iput-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->mKuUpsellFullPageAdInfo:Lcom/amazon/nwstd/upsell/fetcher/UpsellFullPageAdInfo;

    .line 54
    iput-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->mPrUpsellBannerInfo:Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;

    .line 59
    iput-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->mPrUpsellFullPageAdInfo:Lcom/amazon/nwstd/upsell/fetcher/UpsellFullPageAdInfo;

    .line 63
    iput-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->mUpsellTargetPageInfo:Lcom/amazon/nwstd/upsell/fetcher/UpsellTargetPageInfo;

    return-void
.end method


# virtual methods
.method public check(Ljava/lang/String;)Z
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->mCeUpsellBannerInfo:Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;->check(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->mCeUpsellFullPageAdInfo:Lcom/amazon/nwstd/upsell/fetcher/UpsellFullPageAdInfo;

    if-eqz v0, :cond_1

    .line 245
    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellFullPageAdInfo;->check(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->mUpsellLibBannerInfo:Lcom/amazon/nwstd/upsell/fetcher/UpsellLibBannerInfo;

    if-eqz v0, :cond_3

    .line 246
    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellLibBannerInfo;->check(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getCampaignContentDownloadValue()Ljava/lang/String;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->mUpsellCampaignInfo:Lcom/amazon/nwstd/upsell/fetcher/UpsellCampaignInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/nwstd/upsell/fetcher/UpsellCampaignInfo;->getCampaignContentDownloadStatusValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCampaignId()Ljava/lang/String;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->mUpsellCampaignInfo:Lcom/amazon/nwstd/upsell/fetcher/UpsellCampaignInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/nwstd/upsell/fetcher/UpsellCampaignInfo;->getCampaignIdValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCeUpsellBannerInfo()Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->mCeUpsellBannerInfo:Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;

    return-object v0
.end method

.method public getCeUpsellFullPageAdInfo()Lcom/amazon/nwstd/upsell/fetcher/UpsellFullPageAdInfo;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->mCeUpsellFullPageAdInfo:Lcom/amazon/nwstd/upsell/fetcher/UpsellFullPageAdInfo;

    return-object v0
.end method

.method public getFullSyncFrequenyValue()Ljava/lang/String;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->mUpsellCampaignInfo:Lcom/amazon/nwstd/upsell/fetcher/UpsellCampaignInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/nwstd/upsell/fetcher/UpsellCampaignInfo;->getFullSyncFreqValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getKuUpsellBannerInfo()Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->mKuUpsellBannerInfo:Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;

    return-object v0
.end method

.method public getKuUpsellFullPageAdInfo()Lcom/amazon/nwstd/upsell/fetcher/UpsellFullPageAdInfo;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->mKuUpsellFullPageAdInfo:Lcom/amazon/nwstd/upsell/fetcher/UpsellFullPageAdInfo;

    return-object v0
.end method

.method public getNumberOfCampaignExternalDeclinesValue()Ljava/lang/String;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->mUpsellCampaignInfo:Lcom/amazon/nwstd/upsell/fetcher/UpsellCampaignInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/nwstd/upsell/fetcher/UpsellCampaignInfo;->getNumberOfCampaignExternalDeclinesValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getPrUpsellBannerInfo()Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->mPrUpsellBannerInfo:Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;

    return-object v0
.end method

.method public getPrUpsellFullPageAdInfo()Lcom/amazon/nwstd/upsell/fetcher/UpsellFullPageAdInfo;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->mPrUpsellFullPageAdInfo:Lcom/amazon/nwstd/upsell/fetcher/UpsellFullPageAdInfo;

    return-object v0
.end method

.method public getReceivedLocales()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 251
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 252
    iget-object v1, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->mCeUpsellBannerInfo:Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;

    if-eqz v1, :cond_0

    .line 253
    invoke-virtual {v1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;->getReceivedLocales()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 255
    :cond_0
    iget-object v1, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->mCeUpsellFullPageAdInfo:Lcom/amazon/nwstd/upsell/fetcher/UpsellFullPageAdInfo;

    if-eqz v1, :cond_1

    .line 256
    invoke-virtual {v1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellFullPageAdInfo;->getReceivedLocales()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 258
    :cond_1
    iget-object v1, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->mUpsellLibBannerInfo:Lcom/amazon/nwstd/upsell/fetcher/UpsellLibBannerInfo;

    if-eqz v1, :cond_2

    .line 259
    invoke-virtual {v1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellLibBannerInfo;->getReceivedLocales()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-object v0
.end method

.method public getUpsellHomeBannerInfo()Lcom/amazon/nwstd/upsell/fetcher/UpsellHomeBannerInfo;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->mUpsellHomeBannerInfo:Lcom/amazon/nwstd/upsell/fetcher/UpsellHomeBannerInfo;

    return-object v0
.end method

.method public getUpsellLibBannerInfo()Lcom/amazon/nwstd/upsell/fetcher/UpsellLibBannerInfo;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->mUpsellLibBannerInfo:Lcom/amazon/nwstd/upsell/fetcher/UpsellLibBannerInfo;

    return-object v0
.end method

.method public getUpsellTargetPageInfo()Lcom/amazon/nwstd/upsell/fetcher/UpsellTargetPageInfo;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->mUpsellTargetPageInfo:Lcom/amazon/nwstd/upsell/fetcher/UpsellTargetPageInfo;

    return-object v0
.end method

.method public parse(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "data"

    .line 67
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 68
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "FULLPAGEAD"

    .line 69
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    iget-object v1, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->mCeUpsellFullPageAdInfo:Lcom/amazon/nwstd/upsell/fetcher/UpsellFullPageAdInfo;

    if-nez v1, :cond_0

    .line 71
    new-instance v1, Lcom/amazon/nwstd/upsell/fetcher/UpsellFullPageAdInfo;

    invoke-direct {v1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellFullPageAdInfo;-><init>()V

    iput-object v1, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->mCeUpsellFullPageAdInfo:Lcom/amazon/nwstd/upsell/fetcher/UpsellFullPageAdInfo;

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->mCeUpsellFullPageAdInfo:Lcom/amazon/nwstd/upsell/fetcher/UpsellFullPageAdInfo;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/nwstd/upsell/fetcher/UpsellFullPageAdInfo;->parse(Lorg/json/JSONObject;)V

    :cond_1
    const-string v0, "asinData"

    .line 75
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 76
    iget-object v1, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->mCeUpsellFullPageAdInfo:Lcom/amazon/nwstd/upsell/fetcher/UpsellFullPageAdInfo;

    if-nez v1, :cond_2

    .line 77
    new-instance v1, Lcom/amazon/nwstd/upsell/fetcher/UpsellFullPageAdInfo;

    invoke-direct {v1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellFullPageAdInfo;-><init>()V

    iput-object v1, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->mCeUpsellFullPageAdInfo:Lcom/amazon/nwstd/upsell/fetcher/UpsellFullPageAdInfo;

    .line 79
    :cond_2
    iget-object v1, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->mCeUpsellFullPageAdInfo:Lcom/amazon/nwstd/upsell/fetcher/UpsellFullPageAdInfo;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/nwstd/upsell/fetcher/UpsellFullPageAdInfo;->parse(Lorg/json/JSONObject;)V

    .line 80
    iget-object v1, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->mCeUpsellBannerInfo:Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;

    if-nez v1, :cond_3

    .line 81
    new-instance v1, Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;

    invoke-direct {v1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;-><init>()V

    iput-object v1, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->mCeUpsellBannerInfo:Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;

    .line 83
    :cond_3
    iget-object v1, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->mCeUpsellBannerInfo:Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;->parse(Lorg/json/JSONObject;)V

    .line 84
    iget-object v1, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->mUpsellTargetPageInfo:Lcom/amazon/nwstd/upsell/fetcher/UpsellTargetPageInfo;

    if-nez v1, :cond_4

    .line 85
    new-instance v1, Lcom/amazon/nwstd/upsell/fetcher/UpsellTargetPageInfo;

    invoke-direct {v1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellTargetPageInfo;-><init>()V

    iput-object v1, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->mUpsellTargetPageInfo:Lcom/amazon/nwstd/upsell/fetcher/UpsellTargetPageInfo;

    .line 87
    :cond_4
    iget-object v1, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->mUpsellTargetPageInfo:Lcom/amazon/nwstd/upsell/fetcher/UpsellTargetPageInfo;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/nwstd/upsell/fetcher/UpsellTargetPageInfo;->parse(Lorg/json/JSONObject;)V

    :cond_5
    const-string v0, "BANNER"

    .line 91
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 92
    new-instance v1, Lcom/amazon/nwstd/upsell/fetcher/UpsellLibBannerInfo;

    invoke-direct {v1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellLibBannerInfo;-><init>()V

    iput-object v1, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->mUpsellLibBannerInfo:Lcom/amazon/nwstd/upsell/fetcher/UpsellLibBannerInfo;

    .line 93
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/nwstd/upsell/fetcher/UpsellLibBannerInfo;->parse(Lorg/json/JSONObject;)V

    :cond_6
    const-string v0, "UPSELL"

    .line 96
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 97
    new-instance v1, Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;

    invoke-direct {v1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;-><init>()V

    iput-object v1, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->mCeUpsellBannerInfo:Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;

    .line 98
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;->parse(Lorg/json/JSONObject;)V

    :cond_7
    const-string v0, "KU_UPSELL"

    .line 100
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 101
    new-instance v1, Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;

    invoke-direct {v1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;-><init>()V

    iput-object v1, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->mKuUpsellBannerInfo:Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;

    .line 102
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;->parse(Lorg/json/JSONObject;)V

    :cond_8
    const-string v0, "KU_FULLPAGEAD"

    .line 104
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 105
    new-instance v1, Lcom/amazon/nwstd/upsell/fetcher/UpsellFullPageAdInfo;

    invoke-direct {v1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellFullPageAdInfo;-><init>()V

    iput-object v1, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->mKuUpsellFullPageAdInfo:Lcom/amazon/nwstd/upsell/fetcher/UpsellFullPageAdInfo;

    .line 106
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/nwstd/upsell/fetcher/UpsellFullPageAdInfo;->parse(Lorg/json/JSONObject;)V

    :cond_9
    const-string v0, "PR_UPSELL"

    .line 108
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 109
    new-instance v1, Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;

    invoke-direct {v1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;-><init>()V

    iput-object v1, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->mPrUpsellBannerInfo:Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;

    .line 110
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;->parse(Lorg/json/JSONObject;)V

    :cond_a
    const-string v0, "PR_FULLPAGEAD"

    .line 112
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 113
    new-instance v1, Lcom/amazon/nwstd/upsell/fetcher/UpsellFullPageAdInfo;

    invoke-direct {v1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellFullPageAdInfo;-><init>()V

    iput-object v1, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->mPrUpsellFullPageAdInfo:Lcom/amazon/nwstd/upsell/fetcher/UpsellFullPageAdInfo;

    .line 114
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/nwstd/upsell/fetcher/UpsellFullPageAdInfo;->parse(Lorg/json/JSONObject;)V

    :cond_b
    const-string v0, "customerEligibility"

    .line 116
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 117
    new-instance v1, Lcom/amazon/nwstd/upsell/fetcher/UpsellCampaignInfo;

    invoke-direct {v1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellCampaignInfo;-><init>()V

    iput-object v1, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->mUpsellCampaignInfo:Lcom/amazon/nwstd/upsell/fetcher/UpsellCampaignInfo;

    .line 118
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/nwstd/upsell/fetcher/UpsellCampaignInfo;->parse(Lorg/json/JSONObject;)V

    :cond_c
    const-string v0, "HOMEBANNER"

    .line 120
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 121
    new-instance v1, Lcom/amazon/nwstd/upsell/fetcher/UpsellHomeBannerInfo;

    invoke-direct {v1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellHomeBannerInfo;-><init>()V

    iput-object v1, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->mUpsellHomeBannerInfo:Lcom/amazon/nwstd/upsell/fetcher/UpsellHomeBannerInfo;

    .line 122
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/nwstd/upsell/fetcher/UpsellHomeBannerInfo;->parse(Lorg/json/JSONObject;)V

    const-string v0, "campaignAsinData"

    .line 123
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 124
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->mUpsellHomeBannerInfo:Lcom/amazon/nwstd/upsell/fetcher/UpsellHomeBannerInfo;

    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellHomeBannerInfo;->parse(Lorg/json/JSONObject;)V

    :cond_d
    return-void
.end method
