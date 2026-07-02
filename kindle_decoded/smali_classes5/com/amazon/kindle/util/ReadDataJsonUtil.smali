.class public Lcom/amazon/kindle/util/ReadDataJsonUtil;
.super Ljava/lang/Object;
.source "ReadDataJsonUtil.java"


# static fields
.field private static final ORIGIN_KEY:Ljava/lang/String; = "origin"

.field private static final STATE_KEY:Ljava/lang/String; = "state"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/amazon/kindle/util/ReadDataJsonUtil;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/util/ReadDataJsonUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deserialize(Ljava/lang/String;Z)Lcom/amazon/kindle/content/ReadData;
    .locals 5

    .line 50
    sget-object v0, Lcom/amazon/kindle/krx/content/IBook$ReadState;->UNREAD:Lcom/amazon/kindle/krx/content/IBook$ReadState;

    .line 51
    sget-object v1, Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;->OTHER:Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;

    .line 53
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 54
    const-class v3, Lcom/amazon/kindle/krx/content/IBook$ReadState;

    const-string/jumbo v4, "state"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/common/base/Enums;->getIfPresent(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/base/Optional;

    move-result-object v3

    sget-object v4, Lcom/amazon/kindle/krx/content/IBook$ReadState;->UNREAD:Lcom/amazon/kindle/krx/content/IBook$ReadState;

    invoke-virtual {v3, v4}, Lcom/google/common/base/Optional;->or(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/krx/content/IBook$ReadState;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p1, :cond_0

    .line 55
    :try_start_1
    sget-object p1, Lcom/amazon/kindle/krx/content/IBook$ReadState;->IN_PROGRESS:Lcom/amazon/kindle/krx/content/IBook$ReadState;

    if-ne v3, p1, :cond_0

    .line 56
    sget-object p1, Lcom/amazon/kindle/krx/content/IBook$ReadState;->UNREAD:Lcom/amazon/kindle/krx/content/IBook$ReadState;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v0, v3

    goto :goto_1

    :cond_0
    move-object v0, v3

    .line 58
    :goto_0
    :try_start_2
    const-class p1, Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;

    const-string/jumbo v3, "origin"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/common/base/Enums;->getIfPresent(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/base/Optional;

    move-result-object p1

    sget-object v2, Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;->OTHER:Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;

    invoke-virtual {p1, v2}, Lcom/google/common/base/Optional;->or(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v1, p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 60
    :goto_1
    sget-object v2, Lcom/amazon/kindle/util/ReadDataJsonUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSONException trying to deserialize ReadData from string - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    :goto_2
    new-instance p0, Lcom/amazon/kindle/content/ReadData;

    invoke-direct {p0, v0, v1}, Lcom/amazon/kindle/content/ReadData;-><init>(Lcom/amazon/kindle/krx/content/IBook$ReadState;Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;)V

    return-object p0
.end method

.method public static serialize(Lcom/amazon/kindle/content/ReadData;Z)Ljava/lang/String;
    .locals 2

    .line 29
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 31
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ReadData;->getReadState()Lcom/amazon/kindle/krx/content/IBook$ReadState;

    move-result-object v1

    if-nez p1, :cond_0

    .line 32
    sget-object p1, Lcom/amazon/kindle/krx/content/IBook$ReadState;->IN_PROGRESS:Lcom/amazon/kindle/krx/content/IBook$ReadState;

    if-ne v1, p1, :cond_0

    .line 33
    sget-object v1, Lcom/amazon/kindle/krx/content/IBook$ReadState;->UNREAD:Lcom/amazon/kindle/krx/content/IBook$ReadState;

    :cond_0
    const-string/jumbo p1, "state"

    .line 35
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p1, "origin"

    .line 36
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ReadData;->getReadStateOrigin()Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 38
    sget-object p1, Lcom/amazon/kindle/util/ReadDataJsonUtil;->TAG:Ljava/lang/String;

    const-string v1, "JSONException trying to serialize ReadData"

    invoke-static {p1, v1, p0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
