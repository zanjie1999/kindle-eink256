.class public Lcom/amazon/nwstd/upsell/fetcher/UpsellStoreDeclineResponse;
.super Ljava/lang/Object;
.source "UpsellStoreDeclineResponse.java"


# static fields
.field private static SUCCESS_RESPONSE:Ljava/lang/String; = "SUCCESS"


# instance fields
.field private mStatus:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellStoreDeclineResponse;->mStatus:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public check()Z
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellStoreDeclineResponse;->mStatus:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/amazon/nwstd/upsell/fetcher/UpsellStoreDeclineResponse;->SUCCESS_RESPONSE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public parse(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string/jumbo v0, "response"

    .line 23
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string/jumbo v0, "status"

    .line 25
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 26
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellStoreDeclineResponse;->mStatus:Ljava/lang/String;

    :cond_0
    return-void
.end method
