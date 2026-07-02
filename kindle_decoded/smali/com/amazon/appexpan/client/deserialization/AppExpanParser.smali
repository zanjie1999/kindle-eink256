.class public Lcom/amazon/appexpan/client/deserialization/AppExpanParser;
.super Ljava/lang/Object;
.source "AppExpanParser.java"


# static fields
.field private static final GSON:Lcom/google/gson/Gson;

.field private static final PARSER:Lcom/google/gson/JsonParser;

.field private static final TAG:Ljava/lang/String; = "com.amazon.appexpan.client.deserialization.AppExpanParser"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/amazon/appexpan/client/deserialization/AppExpanParser;->GSON:Lcom/google/gson/Gson;

    .line 31
    new-instance v0, Lcom/google/gson/JsonParser;

    invoke-direct {v0}, Lcom/google/gson/JsonParser;-><init>()V

    sput-object v0, Lcom/amazon/appexpan/client/deserialization/AppExpanParser;->PARSER:Lcom/google/gson/JsonParser;

    return-void
.end method

.method public static parseDownloadRetry(Ljava/lang/String;)Lcom/amazon/appexpan/client/model/ResourceModel$DownloadRetry;
    .locals 4

    .line 91
    :try_start_0
    sget-object v0, Lcom/amazon/appexpan/client/deserialization/AppExpanParser;->GSON:Lcom/google/gson/Gson;

    const-class v1, Lcom/amazon/appexpan/client/model/ResourceModel$DownloadRetry;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/appexpan/client/model/ResourceModel$DownloadRetry;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 95
    sget-object v1, Lcom/amazon/appexpan/client/deserialization/AppExpanParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error when parsing location json:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Lcom/amazon/appexpan/client/AppExpanLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseLocation(Ljava/lang/String;)Lcom/amazon/appexpan/client/model/ResourceModel$Location;
    .locals 4

    .line 76
    :try_start_0
    sget-object v0, Lcom/amazon/appexpan/client/deserialization/AppExpanParser;->GSON:Lcom/google/gson/Gson;

    const-class v1, Lcom/amazon/appexpan/client/model/ResourceModel$Location;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/appexpan/client/model/ResourceModel$Location;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 80
    sget-object v1, Lcom/amazon/appexpan/client/deserialization/AppExpanParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error when parsing location json:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Lcom/amazon/appexpan/client/AppExpanLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseManifest(Ljava/lang/String;)Lcom/amazon/appexpan/client/model/Manifest;
    .locals 3

    .line 38
    :try_start_0
    sget-object v0, Lcom/amazon/appexpan/client/deserialization/AppExpanParser;->PARSER:Lcom/google/gson/JsonParser;

    invoke-virtual {v0, p0}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p0

    const-string/jumbo v0, "manifestResourceSets"

    .line 40
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v0

    .line 41
    new-instance v1, Lcom/amazon/appexpan/client/deserialization/AppExpanParser$1;

    invoke-direct {v1}, Lcom/amazon/appexpan/client/deserialization/AppExpanParser$1;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 42
    sget-object v2, Lcom/amazon/appexpan/client/deserialization/AppExpanParser;->GSON:Lcom/google/gson/Gson;

    invoke-virtual {v2, v0, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string/jumbo v1, "syncToken"

    .line 44
    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    .line 45
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p0

    .line 47
    new-instance v1, Lcom/amazon/appexpan/client/model/Manifest;

    invoke-direct {v1, v0, p0}, Lcom/amazon/appexpan/client/model/Manifest;-><init>(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 51
    sget-object v0, Lcom/amazon/appexpan/client/deserialization/AppExpanParser;->TAG:Ljava/lang/String;

    const-string v1, "Error occurs when parsing manifest"

    invoke-static {v0, v1, p0}, Lcom/amazon/appexpan/client/AppExpanLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static toJson(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 62
    :try_start_0
    sget-object v0, Lcom/amazon/appexpan/client/deserialization/AppExpanParser;->GSON:Lcom/google/gson/Gson;

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 66
    sget-object v0, Lcom/amazon/appexpan/client/deserialization/AppExpanParser;->TAG:Ljava/lang/String;

    const-string v1, "Error occurs when serializing an object"

    invoke-static {v0, v1, p0}, Lcom/amazon/appexpan/client/AppExpanLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method
