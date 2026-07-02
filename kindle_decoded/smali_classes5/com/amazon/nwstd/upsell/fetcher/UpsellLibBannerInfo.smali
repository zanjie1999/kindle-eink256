.class public Lcom/amazon/nwstd/upsell/fetcher/UpsellLibBannerInfo;
.super Ljava/lang/Object;
.source "UpsellLibBannerInfo.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mCancelButtonText:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

.field private mDescription:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

.field private mImageURLs:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

.field private mStartButtonText:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

.field private mTitle:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lcom/amazon/nwstd/upsell/fetcher/UpsellLibBannerInfo;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/nwstd/upsell/fetcher/UpsellLibBannerInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellLibBannerInfo;->mStartButtonText:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    .line 27
    iput-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellLibBannerInfo;->mCancelButtonText:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    .line 32
    iput-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellLibBannerInfo;->mTitle:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    .line 37
    iput-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellLibBannerInfo;->mDescription:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    .line 42
    iput-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellLibBannerInfo;->mImageURLs:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    return-void
.end method


# virtual methods
.method public check(Ljava/lang/String;)Z
    .locals 5

    .line 131
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellLibBannerInfo;->mTitle:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellLibBannerInfo;->mDescription:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellLibBannerInfo;->mStartButtonText:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellLibBannerInfo;->mCancelButtonText:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    if-nez v2, :cond_0

    goto/16 :goto_0

    .line 151
    :cond_0
    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellLibBannerInfo;->mDescription:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellLibBannerInfo;->mStartButtonText:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellLibBannerInfo;->mCancelButtonText:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    const/4 v1, 0x1

    :cond_1
    if-nez v1, :cond_b

    .line 153
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellLibBannerInfo;->mTitle:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;->check(Ljava/lang/String;)Z

    move-result v0

    const/16 v2, 0x10

    if-nez v0, :cond_2

    .line 154
    sget-object v0, Lcom/amazon/nwstd/upsell/fetcher/UpsellLibBannerInfo;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Check failed for the title and the language "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 156
    :cond_2
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellLibBannerInfo;->mDescription:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;->check(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 157
    sget-object v0, Lcom/amazon/nwstd/upsell/fetcher/UpsellLibBannerInfo;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Check failed for the description and the language "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 159
    :cond_3
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellLibBannerInfo;->mStartButtonText:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;->check(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 160
    sget-object v0, Lcom/amazon/nwstd/upsell/fetcher/UpsellLibBannerInfo;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Check failed for the start button and the language "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 162
    :cond_4
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellLibBannerInfo;->mCancelButtonText:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;->check(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 163
    sget-object v0, Lcom/amazon/nwstd/upsell/fetcher/UpsellLibBannerInfo;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Check failed for the cancell button and the language "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 165
    :cond_5
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellLibBannerInfo;->mTitle:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;->remove(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellLibBannerInfo;->mDescription:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;->remove(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellLibBannerInfo;->mStartButtonText:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;->remove(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellLibBannerInfo;->mCancelButtonText:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;->remove(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellLibBannerInfo;->mImageURLs:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;->remove(Ljava/lang/String;)V

    goto :goto_1

    .line 133
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellLibBannerInfo;->mTitle:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    if-eqz v0, :cond_7

    .line 134
    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;->remove(Ljava/lang/String;)V

    .line 136
    :cond_7
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellLibBannerInfo;->mDescription:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    if-eqz v0, :cond_8

    .line 137
    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;->remove(Ljava/lang/String;)V

    .line 139
    :cond_8
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellLibBannerInfo;->mStartButtonText:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    if-eqz v0, :cond_9

    .line 140
    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;->remove(Ljava/lang/String;)V

    .line 142
    :cond_9
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellLibBannerInfo;->mCancelButtonText:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    if-eqz v0, :cond_a

    .line 143
    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;->remove(Ljava/lang/String;)V

    .line 145
    :cond_a
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellLibBannerInfo;->mImageURLs:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    if-eqz v0, :cond_b

    .line 146
    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;->remove(Ljava/lang/String;)V

    :cond_b
    :goto_1
    return v1
.end method

.method public getCancelButtonText()Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellLibBannerInfo;->mCancelButtonText:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    return-object v0
.end method

.method public getDescription()Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellLibBannerInfo;->mDescription:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    return-object v0
.end method

.method public getImages()Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellLibBannerInfo;->mImageURLs:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

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

    .line 177
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 178
    iget-object v1, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellLibBannerInfo;->mDescription:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    if-eqz v1, :cond_0

    .line 179
    invoke-virtual {v1}, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;->getReceivedLocales()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellLibBannerInfo;->mStartButtonText:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    if-eqz v1, :cond_1

    .line 182
    invoke-virtual {v1}, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;->getReceivedLocales()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 184
    :cond_1
    iget-object v1, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellLibBannerInfo;->mCancelButtonText:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    if-eqz v1, :cond_2

    .line 185
    invoke-virtual {v1}, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;->getReceivedLocales()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 187
    :cond_2
    iget-object v1, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellLibBannerInfo;->mImageURLs:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    if-eqz v1, :cond_3

    .line 188
    invoke-virtual {v1}, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;->getReceivedLocales()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 190
    :cond_3
    iget-object v1, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellLibBannerInfo;->mTitle:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    if-eqz v1, :cond_4

    .line 191
    invoke-virtual {v1}, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;->getReceivedLocales()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_4
    return-object v0
.end method

.method public getStartButtonText()Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellLibBannerInfo;->mStartButtonText:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    return-object v0
.end method

.method public getTitle()Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellLibBannerInfo;->mTitle:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    return-object v0
.end method

.method public parse(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string/jumbo v0, "stringList"

    .line 46
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 47
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "header"

    .line 49
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    new-instance v2, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    invoke-direct {v2}, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;-><init>()V

    iput-object v2, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellLibBannerInfo;->mTitle:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    .line 51
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;->parse(Lorg/json/JSONObject;)V

    :cond_0
    const-string v1, "description"

    .line 54
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 55
    new-instance v2, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    invoke-direct {v2}, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;-><init>()V

    iput-object v2, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellLibBannerInfo;->mDescription:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    .line 56
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;->parse(Lorg/json/JSONObject;)V

    :cond_1
    const-string/jumbo v1, "start_button"

    .line 59
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 60
    new-instance v2, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    invoke-direct {v2}, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;-><init>()V

    iput-object v2, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellLibBannerInfo;->mStartButtonText:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    .line 61
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;->parse(Lorg/json/JSONObject;)V

    :cond_2
    const-string v1, "cancel_button"

    .line 64
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 65
    new-instance v2, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    invoke-direct {v2}, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;-><init>()V

    iput-object v2, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellLibBannerInfo;->mCancelButtonText:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    .line 66
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;->parse(Lorg/json/JSONObject;)V

    :cond_3
    const-string v0, "imageList"

    .line 70
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 71
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "bannerImage"

    .line 73
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 74
    new-instance v1, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    invoke-direct {v1}, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;-><init>()V

    iput-object v1, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellLibBannerInfo;->mImageURLs:Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    .line 75
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;->parse(Lorg/json/JSONObject;)V

    :cond_4
    return-void
.end method
