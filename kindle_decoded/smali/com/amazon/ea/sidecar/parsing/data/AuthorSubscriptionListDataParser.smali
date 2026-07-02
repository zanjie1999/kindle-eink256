.class public Lcom/amazon/ea/sidecar/parsing/data/AuthorSubscriptionListDataParser;
.super Ljava/lang/Object;
.source "AuthorSubscriptionListDataParser.java"


# direct methods
.method public static parse(Lorg/json/JSONObject;)Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionListData;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string/jumbo v0, "subscriptions"

    .line 38
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 43
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    .line 44
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 45
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/ea/sidecar/parsing/data/AuthorSubscriptionDataParser;->parse(Lorg/json/JSONObject;)Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionData;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 47
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 51
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionListData;

    invoke-direct {v0, v1}, Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionListData;-><init>(Ljava/util/List;)V

    :goto_1
    return-object v0
.end method
