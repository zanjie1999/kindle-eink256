.class public Lcom/amazon/ras/uservalidation/models/ProfileLink;
.super Ljava/lang/Object;
.source "ProfileLink.java"


# static fields
.field private static final AMAZON_URI_FIELD_NAME:Ljava/lang/String; = "amazon_uri"

.field private static final GOODREADS_URI_FIELD_NAME:Ljava/lang/String; = "goodreads_uri"


# instance fields
.field private amazonUri:Ljava/lang/String;

.field private goodreadsUri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJSONObject(Lorg/json/JSONObject;)Lcom/amazon/ras/uservalidation/models/ProfileLink;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 35
    :cond_0
    new-instance v0, Lcom/amazon/ras/uservalidation/models/ProfileLink;

    invoke-direct {v0}, Lcom/amazon/ras/uservalidation/models/ProfileLink;-><init>()V

    const-string v1, "amazon_uri"

    .line 37
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/ras/uservalidation/models/ProfileLink;->setAmazonUri(Ljava/lang/String;)V

    const-string v1, "goodreads_uri"

    .line 38
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/amazon/ras/uservalidation/models/ProfileLink;->setGoodreadsUri(Ljava/lang/String;)V

    return-object v0
.end method

.method public static toJSONString(Lcom/amazon/ras/uservalidation/models/ProfileLink;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 48
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 50
    invoke-virtual {p0}, Lcom/amazon/ras/uservalidation/models/ProfileLink;->getAmazonUri()Ljava/lang/String;

    move-result-object v1

    const-string v2, "amazon_uri"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    invoke-virtual {p0}, Lcom/amazon/ras/uservalidation/models/ProfileLink;->getGoodreadsUri()Ljava/lang/String;

    move-result-object p0

    const-string v1, "goodreads_uri"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getAmazonUri()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/amazon/ras/uservalidation/models/ProfileLink;->amazonUri:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodreadsUri()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/amazon/ras/uservalidation/models/ProfileLink;->goodreadsUri:Ljava/lang/String;

    return-object v0
.end method

.method public setAmazonUri(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/amazon/ras/uservalidation/models/ProfileLink;->amazonUri:Ljava/lang/String;

    return-void
.end method

.method public setGoodreadsUri(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/amazon/ras/uservalidation/models/ProfileLink;->goodreadsUri:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 58
    iget-object v1, p0, Lcom/amazon/ras/uservalidation/models/ProfileLink;->amazonUri:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ras/uservalidation/models/ProfileLink;->goodreadsUri:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "ProfileLink{AmazonUri=%s, GoodreadsUri=%s}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
