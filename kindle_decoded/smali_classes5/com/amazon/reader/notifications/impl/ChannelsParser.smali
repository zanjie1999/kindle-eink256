.class public Lcom/amazon/reader/notifications/impl/ChannelsParser;
.super Ljava/lang/Object;
.source "ChannelsParser.java"


# static fields
.field private static final CHANNELS_KEY:Ljava/lang/String; = "channels"

.field private static final COUNTRIES_KEY:Ljava/lang/String; = "countries"

.field private static final DEFAULT_STATE_KEY:Ljava/lang/String; = "defaultState"

.field private static final DEVICE_TYPES_KEY:Ljava/lang/String; = "deviceTypes"

.field private static final EXTENDED_DESCRIPTION_KEY:Ljava/lang/String; = "extendedDescription"

.field private static final ID_KEY:Ljava/lang/String; = "id"

.field private static final NAME_KEY:Ljava/lang/String; = "name"

.field private static final SETTINGS_TEXT_KEY:Ljava/lang/String; = "settingsText"

.field private static final SIGNUP_DIALOG_TEXT_KEY:Ljava/lang/String; = "signupDialogText"

.field private static final TAG:Ljava/lang/String; = "ChannelsParser"

.field private static final VERSION_KEY:Ljava/lang/String; = "version"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static jsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 4
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 125
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 126
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 127
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 129
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static jsonToSet(Lorg/json/JSONArray;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 105
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    const/4 v1, 0x0

    .line 106
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 107
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lcom/amazon/reader/notifications/channel/ChannelSettings;
    .locals 7

    .line 64
    :try_start_0
    new-instance v0, Lcom/amazon/reader/notifications/channel/ChannelSettings;

    invoke-direct {v0}, Lcom/amazon/reader/notifications/channel/ChannelSettings;-><init>()V

    .line 65
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "channels"

    .line 66
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 67
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    .line 68
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 69
    new-instance v4, Lcom/amazon/reader/notifications/channel/ChannelDescription;

    invoke-direct {v4}, Lcom/amazon/reader/notifications/channel/ChannelDescription;-><init>()V

    .line 70
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "id"

    .line 72
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/amazon/reader/notifications/channel/ChannelDescription;->setId(Ljava/lang/String;)V

    const-string v6, "name"

    .line 73
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6}, Lcom/amazon/reader/notifications/impl/ChannelsParser;->jsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/amazon/reader/notifications/channel/ChannelDescription;->setNameMap(Ljava/util/Map;)V

    const-string/jumbo v6, "settingsText"

    .line 74
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6}, Lcom/amazon/reader/notifications/impl/ChannelsParser;->jsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/amazon/reader/notifications/channel/ChannelDescription;->setSettingsTextMap(Ljava/util/Map;)V

    const-string/jumbo v6, "signupDialogText"

    .line 75
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6}, Lcom/amazon/reader/notifications/impl/ChannelsParser;->jsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/amazon/reader/notifications/channel/ChannelDescription;->setSignupDialogTextMap(Ljava/util/Map;)V

    const-string v6, "countries"

    .line 77
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-static {v6}, Lcom/amazon/reader/notifications/impl/ChannelsParser;->jsonToSet(Lorg/json/JSONArray;)Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/amazon/reader/notifications/channel/ChannelDescription;->setCountriesSet(Ljava/util/Set;)V

    const-string v6, "deviceTypes"

    .line 78
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-static {v6}, Lcom/amazon/reader/notifications/impl/ChannelsParser;->jsonToSet(Lorg/json/JSONArray;)Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/amazon/reader/notifications/channel/ChannelDescription;->setDeviceTypes(Ljava/util/Set;)V

    const-string v6, "defaultState"

    .line 79
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/amazon/reader/notifications/channel/ChannelDescription;->setDefaultState(Ljava/lang/String;)V

    const-string v6, "extendedDescription"

    .line 80
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lcom/amazon/reader/notifications/impl/ChannelsParser;->jsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amazon/reader/notifications/channel/ChannelDescription;->setExtendedDescription(Ljava/util/Map;)V

    .line 81
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "version"

    .line 83
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/amazon/reader/notifications/channel/ChannelSettings;->setVersion(I)V

    .line 84
    invoke-virtual {v0, v2}, Lcom/amazon/reader/notifications/channel/ChannelSettings;->setChannels(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 87
    sget-object v0, Lcom/amazon/reader/notifications/impl/ChannelsParser;->TAG:Ljava/lang/String;

    const-string v1, "Failed to parse channel descriptions file"

    invoke-static {v0, v1, p0}, Lcom/amazon/reader/notifications/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method
