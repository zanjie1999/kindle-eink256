.class public Lcom/amazon/ea/sidecar/parsing/data/AuthorSubscriptionDataParser;
.super Ljava/lang/Object;
.source "AuthorSubscriptionDataParser.java"


# static fields
.field private static final TAG_ASIN:Ljava/lang/String; = "asin"

.field private static final TAG_IMAGE_URL:Ljava/lang/String; = "imageUrl"

.field private static final TAG_NAME:Ljava/lang/String; = "name"

.field private static final TAG_SUBSCRIBED:Ljava/lang/String; = "subscribed"


# direct methods
.method public static parse(Lorg/json/JSONObject;)Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionData;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "asin"

    .line 40
    invoke-static {p0, v0}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v2, "name"

    .line 45
    invoke-static {p0, v2}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    const-string/jumbo v1, "subscribed"

    .line 50
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "imageUrl"

    .line 52
    invoke-static {p0, v3}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 54
    new-instance v3, Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionData;

    invoke-direct {v3, v0, v2, v1, p0}, Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionData;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-object v3
.end method
