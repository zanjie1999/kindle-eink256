.class public Lcom/amazon/ea/sidecar/parsing/data/AuthorBioDataParser;
.super Ljava/lang/Object;
.source "AuthorBioDataParser.java"


# static fields
.field private static final TAG_ASIN:Ljava/lang/String; = "asin"

.field private static final TAG_BIO:Ljava/lang/String; = "bio"

.field private static final TAG_IMAGE_URL:Ljava/lang/String; = "imageUrl"

.field private static final TAG_NAME:Ljava/lang/String; = "name"


# direct methods
.method public static parse(Lorg/json/JSONObject;)Lcom/amazon/ea/sidecar/def/data/AuthorBioData;
    .locals 4

    const-string v0, "asin"

    .line 29
    invoke-static {p0, v0}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v2, "name"

    .line 34
    invoke-static {p0, v2}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    const-string v1, "imageUrl"

    .line 39
    invoke-static {p0, v1}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "bio"

    .line 41
    invoke-static {p0, v3}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 43
    new-instance v3, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;

    invoke-direct {v3, v0, v2, v1, p0}, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method
