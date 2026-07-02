.class public Lcom/amazon/device/ads/JSONUtils$JSONUtilities;
.super Ljava/lang/Object;
.source "JSONUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/JSONUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JSONUtilities"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createMapFromJSON(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 58
    invoke-static {p1}, Lcom/amazon/device/ads/JSONUtils;->createMapFromJSON(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public getBooleanFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Z)Z
    .locals 0

    .line 23
    invoke-static {p1, p2, p3}, Lcom/amazon/device/ads/JSONUtils;->getBooleanFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getIntegerFromJSON(Lorg/json/JSONObject;Ljava/lang/String;I)I
    .locals 0

    .line 33
    invoke-static {p1, p2, p3}, Lcom/amazon/device/ads/JSONUtils;->getIntegerFromJSON(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getJSONObjectFromString(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0

    .line 80
    invoke-static {p1}, Lcom/amazon/device/ads/JSONUtils;->getJSONObjectFromString(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public getStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 28
    invoke-static {p1, p2, p3}, Lcom/amazon/device/ads/JSONUtils;->getStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public put(Lorg/json/JSONObject;Ljava/lang/String;I)V
    .locals 0

    .line 68
    invoke-static {p1, p2, p3}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;I)V

    return-void
.end method

.method public put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-static {p1, p2, p3}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public put(Lorg/json/JSONObject;Ljava/lang/String;Z)V
    .locals 0

    .line 76
    invoke-static {p1, p2, p3}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    return-void
.end method
