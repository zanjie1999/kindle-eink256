.class public Lcom/amazon/nwstd/upsell/fetcher/UpsellCampaignInfo;
.super Ljava/lang/Object;
.source "UpsellCampaignInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCampaignContentDownloadValue:Ljava/lang/String;

.field private mCampaignIdValue:Ljava/lang/String;

.field private mFullSyncIntervalValueInHour:Ljava/lang/String;

.field private mNumberOfCampaignExternalDeclinesValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lcom/amazon/nwstd/upsell/fetcher/UpsellCampaignInfo;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/nwstd/upsell/fetcher/UpsellCampaignInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellCampaignInfo;->mCampaignIdValue:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellCampaignInfo;->mCampaignContentDownloadValue:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellCampaignInfo;->mNumberOfCampaignExternalDeclinesValue:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellCampaignInfo;->mFullSyncIntervalValueInHour:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCampaignContentDownloadStatusValue()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellCampaignInfo;->mCampaignContentDownloadValue:Ljava/lang/String;

    return-object v0
.end method

.method public getCampaignIdValue()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellCampaignInfo;->mCampaignIdValue:Ljava/lang/String;

    return-object v0
.end method

.method public getFullSyncFreqValue()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellCampaignInfo;->mFullSyncIntervalValueInHour:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfCampaignExternalDeclinesValue()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellCampaignInfo;->mNumberOfCampaignExternalDeclinesValue:Ljava/lang/String;

    return-object v0
.end method

.method public parse(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string/jumbo v0, "programId"

    .line 57
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 58
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellCampaignInfo;->mCampaignIdValue:Ljava/lang/String;

    :cond_0
    const-string v0, "downloadFlag"

    .line 60
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 61
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellCampaignInfo;->mCampaignContentDownloadValue:Ljava/lang/String;

    :cond_1
    const-string v0, "isUnSubscribed"

    .line 63
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 64
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellCampaignInfo;->mNumberOfCampaignExternalDeclinesValue:Ljava/lang/String;

    :cond_2
    const-string v0, "full_sync_freq_in_hour"

    .line 66
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 67
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellCampaignInfo;->mFullSyncIntervalValueInHour:Ljava/lang/String;

    :cond_3
    return-void
.end method
