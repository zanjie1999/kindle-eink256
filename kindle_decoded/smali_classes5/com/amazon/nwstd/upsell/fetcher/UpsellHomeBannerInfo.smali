.class public Lcom/amazon/nwstd/upsell/fetcher/UpsellHomeBannerInfo;
.super Ljava/lang/Object;
.source "UpsellHomeBannerInfo.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mCardRank:I

.field private mDescription:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

.field private mHomeBannerImages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStartButtonText:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

.field private mTitle:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/amazon/nwstd/upsell/fetcher/UpsellHomeBannerInfo;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/nwstd/upsell/fetcher/UpsellHomeBannerInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellHomeBannerInfo;->mStartButtonText:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    .line 33
    iput-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellHomeBannerInfo;->mTitle:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    .line 38
    iput-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellHomeBannerInfo;->mDescription:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellHomeBannerInfo;->mHomeBannerImages:Ljava/util/Map;

    const/4 v0, 0x2

    .line 50
    iput v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellHomeBannerInfo;->mCardRank:I

    return-void
.end method


# virtual methods
.method public getCardRank()I
    .locals 1

    .line 140
    iget v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellHomeBannerInfo;->mCardRank:I

    return v0
.end method

.method public getDescription()Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellHomeBannerInfo;->mDescription:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    return-object v0
.end method

.method public getHomeBannerImages()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellHomeBannerInfo;->mHomeBannerImages:Ljava/util/Map;

    return-object v0
.end method

.method public getStartButtonText()Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellHomeBannerInfo;->mStartButtonText:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    return-object v0
.end method

.method public getTitle()Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellHomeBannerInfo;->mTitle:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    return-object v0
.end method

.method public parse(Lorg/json/JSONObject;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string/jumbo v0, "stringList"

    .line 54
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 55
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "header"

    .line 57
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    new-instance v2, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    invoke-direct {v2}, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;-><init>()V

    iput-object v2, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellHomeBannerInfo;->mTitle:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    .line 59
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;->parse(Lorg/json/JSONObject;)V

    :cond_0
    const-string v1, "description"

    .line 62
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    new-instance v2, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    invoke-direct {v2}, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;-><init>()V

    iput-object v2, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellHomeBannerInfo;->mDescription:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    .line 64
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;->parse(Lorg/json/JSONObject;)V

    :cond_1
    const-string/jumbo v1, "start_button"

    .line 67
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 68
    new-instance v2, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    invoke-direct {v2}, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;-><init>()V

    iput-object v2, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellHomeBannerInfo;->mStartButtonText:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    .line 69
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;->parse(Lorg/json/JSONObject;)V

    :cond_2
    const-string v0, "data"

    .line 73
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_3

    .line 74
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "cardRank"

    .line 75
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellHomeBannerInfo;->mCardRank:I

    .line 76
    sget-object v0, Lcom/amazon/nwstd/upsell/fetcher/UpsellHomeBannerInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "home banner cardRank "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellHomeBannerInfo;->mCardRank:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    :cond_3
    const-string v0, "campaignAsinData"

    .line 78
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 79
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 80
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 81
    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 82
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 83
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "images"

    .line 84
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 85
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 86
    sget-object v4, Lcom/amazon/nwstd/upsell/fetcher/UpsellHomeBannerInfo;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "home banner HOME_BANNER_IMGES "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "thumbURL"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v2, v5}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 87
    iget-object v4, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellHomeBannerInfo;->mHomeBannerImages:Ljava/util/Map;

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    return-void
.end method
