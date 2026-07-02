.class public Lcom/amazon/ea/sidecar/parsing/data/OdotActionDataParser;
.super Ljava/lang/Object;
.source "OdotActionDataParser.java"


# static fields
.field private static final ADDITIONAL_FIELDS:Ljava/lang/String; = "additionalFields"

.field private static final ENDPOINT:Ljava/lang/String; = "endpoint"


# direct methods
.method public static parse(Lorg/json/JSONObject;)Lcom/amazon/ea/sidecar/def/data/OdotActionData;
    .locals 2

    const-string v0, "endpoint"

    .line 38
    invoke-static {p0, v0}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v1, "additionalFields"

    .line 43
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_1

    .line 45
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 48
    :cond_1
    new-instance v1, Lcom/amazon/ea/sidecar/def/data/OdotActionData;

    invoke-direct {v1, v0, p0}, Lcom/amazon/ea/sidecar/def/data/OdotActionData;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v1
.end method
