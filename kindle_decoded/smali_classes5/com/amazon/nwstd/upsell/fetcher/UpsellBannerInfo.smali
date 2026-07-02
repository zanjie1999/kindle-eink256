.class public Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;
.super Ljava/lang/Object;
.source "UpsellBannerInfo.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAsinRetailDescription:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;",
            ">;"
        }
    .end annotation
.end field

.field private mCommaSepratedFrequencyList:Ljava/lang/String;

.field private mDescription:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

.field private mRetailDescription:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

.field private mSeeDetailsButtonText:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

.field private mTitle:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;->mSeeDetailsButtonText:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    .line 30
    iput-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;->mTitle:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    .line 35
    iput-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;->mDescription:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    .line 40
    iput-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;->mRetailDescription:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    .line 47
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;->mAsinRetailDescription:Ljava/util/Map;

    .line 52
    iput-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;->mCommaSepratedFrequencyList:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public check(Ljava/lang/String;)Z
    .locals 5

    .line 162
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;->mTitle:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;->mDescription:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;->mSeeDetailsButtonText:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    if-nez v2, :cond_0

    goto/16 :goto_0

    .line 175
    :cond_0
    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;->mDescription:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;->mSeeDetailsButtonText:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    const/4 v1, 0x1

    :cond_1
    if-nez v1, :cond_8

    .line 177
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;->mTitle:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;->check(Ljava/lang/String;)Z

    move-result v0

    const/16 v2, 0x10

    if-nez v0, :cond_2

    .line 178
    sget-object v0, Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Check failed for the title and the language "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;->mDescription:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;->check(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 181
    sget-object v0, Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Check failed for the description and the language "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 183
    :cond_3
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;->mSeeDetailsButtonText:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;->check(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 184
    sget-object v0, Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Check failed for the button and the language "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 186
    :cond_4
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;->mTitle:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;->remove(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;->mDescription:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;->remove(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;->mSeeDetailsButtonText:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;->remove(Ljava/lang/String;)V

    goto :goto_1

    .line 164
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;->mTitle:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    if-eqz v0, :cond_6

    .line 165
    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;->remove(Ljava/lang/String;)V

    .line 167
    :cond_6
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;->mDescription:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    if-eqz v0, :cond_7

    .line 168
    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;->remove(Ljava/lang/String;)V

    .line 170
    :cond_7
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;->mSeeDetailsButtonText:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    if-eqz v0, :cond_8

    .line 171
    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;->remove(Ljava/lang/String;)V

    :cond_8
    :goto_1
    return v1
.end method

.method public getAsinRetailDescription()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;",
            ">;"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;->mAsinRetailDescription:Ljava/util/Map;

    return-object v0
.end method

.method public getBannerFreuqency()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;->mCommaSepratedFrequencyList:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;->mDescription:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

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

    .line 196
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 197
    iget-object v1, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;->mDescription:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    if-eqz v1, :cond_0

    .line 198
    invoke-virtual {v1}, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;->getReceivedLocales()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 200
    :cond_0
    iget-object v1, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;->mSeeDetailsButtonText:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    if-eqz v1, :cond_1

    .line 201
    invoke-virtual {v1}, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;->getReceivedLocales()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 203
    :cond_1
    iget-object v1, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;->mTitle:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    if-eqz v1, :cond_2

    .line 204
    invoke-virtual {v1}, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;->getReceivedLocales()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 206
    :cond_2
    iget-object v1, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;->mRetailDescription:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    if-eqz v1, :cond_3

    .line 207
    invoke-virtual {v1}, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;->getReceivedLocales()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_3
    return-object v0
.end method

.method public getRetailDescription()Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;->mRetailDescription:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    return-object v0
.end method

.method public getSeeDetailsButtonText()Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;->mSeeDetailsButtonText:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    return-object v0
.end method

.method public getTitle()Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;->mTitle:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    return-object v0
.end method

.method public parse(Lorg/json/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "data"

    .line 55
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "freq"

    .line 57
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;->mCommaSepratedFrequencyList:Ljava/lang/String;

    :cond_0
    const-string/jumbo v0, "stringList"

    .line 61
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const-string/jumbo v2, "retail_description"

    if-eqz v1, :cond_4

    .line 62
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "header"

    .line 64
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    new-instance v1, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    invoke-direct {v1}, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;-><init>()V

    iput-object v1, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;->mTitle:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    .line 66
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;->parse(Lorg/json/JSONObject;)V

    :cond_1
    const-string v0, "description"

    .line 69
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 70
    new-instance v1, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    invoke-direct {v1}, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;-><init>()V

    iput-object v1, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;->mDescription:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    .line 71
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;->parse(Lorg/json/JSONObject;)V

    .line 74
    :cond_2
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 75
    new-instance v0, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    invoke-direct {v0}, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;-><init>()V

    iput-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;->mRetailDescription:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    .line 76
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;->parse(Lorg/json/JSONObject;)V

    :cond_3
    const-string/jumbo v0, "start_button"

    .line 79
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 80
    new-instance v1, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    invoke-direct {v1}, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;-><init>()V

    iput-object v1, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;->mSeeDetailsButtonText:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    .line 81
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;->parse(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 84
    :cond_4
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 85
    :cond_5
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 86
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 87
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "UPSELL"

    .line 88
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 89
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 90
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 91
    new-instance v4, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    invoke-direct {v4}, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;-><init>()V

    .line 92
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;->parse(Lorg/json/JSONObject;)V

    .line 93
    invoke-virtual {v4}, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;->check()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 94
    iget-object v3, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;->mAsinRetailDescription:Ljava/util/Map;

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_6
    :goto_1
    return-void
.end method
