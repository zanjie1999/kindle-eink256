.class Lcom/amazon/whisperjoin/credentiallocker/WifiConfigurationTypeAdapter;
.super Ljava/lang/Object;
.source "WifiConfigurationTypeAdapter.java"

# interfaces
.implements Lcom/google/gson/JsonSerializer;
.implements Lcom/google/gson/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonSerializer<",
        "Lcom/amazon/whisperjoin/wifi/WifiConfiguration;",
        ">;",
        "Lcom/google/gson/JsonDeserializer<",
        "Lcom/amazon/whisperjoin/wifi/WifiConfiguration;",
        ">;"
    }
.end annotation


# instance fields
.field final mGson:Lcom/google/gson/Gson;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/credentiallocker/WifiConfigurationTypeAdapter;->mGson:Lcom/google/gson/Gson;

    return-void
.end method

.method private isWepNetwork(Lcom/amazon/credentiallocker/WepKeyConfiguration;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 116
    invoke-virtual {p1}, Lcom/amazon/credentiallocker/WepKeyConfiguration;->getWepKeyList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {p1}, Lcom/amazon/credentiallocker/WepKeyConfiguration;->getWepKeyList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 118
    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private toLockerKeyManagement(Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;)Ljava/lang/String;
    .locals 4

    .line 127
    sget-object v0, Lcom/amazon/whisperjoin/credentiallocker/WifiConfigurationTypeAdapter$1;->$SwitchMap$com$amazon$whisperjoin$wifi$WifiKeyManagement:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    const-string v3, "NONE"

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    return-object v3

    .line 135
    :cond_0
    new-instance v0, Lcom/google/gson/JsonParseException;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    const-string p1, "Unsuppored KeyManagement scheme: %s"

    invoke-static {v2, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-object v3

    :cond_2
    const-string p1, "WPAPSK"

    return-object p1
.end method

.method private toWhisperjoinKeyManagement(Lcom/amazon/credentiallocker/WifiConfiguration;)Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;
    .locals 3

    .line 102
    invoke-virtual {p1}, Lcom/amazon/credentiallocker/WifiNetwork;->getKeyManagement()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WPAPSK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    sget-object p1, Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;->WPA_PSK:Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;

    return-object p1

    .line 105
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/credentiallocker/WifiConfiguration;->getCredentialConfiguration()Lcom/amazon/credentiallocker/CredentialConfiguration;

    move-result-object v0

    .line 106
    invoke-virtual {p1}, Lcom/amazon/credentiallocker/WifiNetwork;->getKeyManagement()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NONE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {v0}, Lcom/amazon/credentiallocker/CredentialConfiguration;->getWepKeyConfiguration()Lcom/amazon/credentiallocker/WepKeyConfiguration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/whisperjoin/credentiallocker/WifiConfigurationTypeAdapter;->isWepNetwork(Lcom/amazon/credentiallocker/WepKeyConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    sget-object p1, Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;->WEP:Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;

    return-object p1

    .line 109
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/credentiallocker/WifiNetwork;->getKeyManagement()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 110
    sget-object p1, Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;->NONE:Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;

    return-object p1

    .line 112
    :cond_2
    new-instance p1, Lcom/google/gson/JsonParseException;

    const-string v0, "Unsuppored KeyManagement scheme for network"

    invoke-direct {p1, v0}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/amazon/whisperjoin/wifi/WifiConfiguration;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .line 32
    iget-object p2, p0, Lcom/amazon/whisperjoin/credentiallocker/WifiConfigurationTypeAdapter;->mGson:Lcom/google/gson/Gson;

    const-class p3, Lcom/amazon/credentiallocker/WifiConfiguration;

    invoke-virtual {p2, p1, p3}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/credentiallocker/WifiConfiguration;

    .line 33
    invoke-virtual {p1}, Lcom/amazon/credentiallocker/WifiNetwork;->getSsid()Ljava/lang/String;

    move-result-object p2

    .line 34
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/credentiallocker/WifiConfigurationTypeAdapter;->toWhisperjoinKeyManagement(Lcom/amazon/credentiallocker/WifiConfiguration;)Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;

    move-result-object p3

    .line 38
    invoke-virtual {p1}, Lcom/amazon/credentiallocker/WifiConfiguration;->getCredentialConfiguration()Lcom/amazon/credentiallocker/CredentialConfiguration;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 39
    invoke-virtual {p1}, Lcom/amazon/credentiallocker/WifiConfiguration;->getCredentialConfiguration()Lcom/amazon/credentiallocker/CredentialConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/credentiallocker/CredentialConfiguration;->getWepKeyConfiguration()Lcom/amazon/credentiallocker/WepKeyConfiguration;

    move-result-object v0

    .line 40
    sget-object v4, Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;->WEP:Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;

    invoke-virtual {p3, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    .line 41
    invoke-virtual {v0}, Lcom/amazon/credentiallocker/WepKeyConfiguration;->getWepKeyList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v1, :cond_0

    .line 43
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    move-object v4, v0

    move-object v0, v2

    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/credentiallocker/WifiConfiguration;->getCredentialConfiguration()Lcom/amazon/credentiallocker/CredentialConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/credentiallocker/CredentialConfiguration;->getPrivateSharedKey()Ljava/lang/String;

    move-result-object v0

    move-object v4, v2

    goto :goto_1

    :cond_2
    move-object v0, v2

    move-object v4, v0

    .line 49
    :goto_1
    invoke-virtual {p1}, Lcom/amazon/credentiallocker/WifiNetworkExtended;->getPriority()I

    move-result p1

    .line 52
    :try_start_0
    sget-object v5, Lcom/amazon/whisperjoin/credentiallocker/WifiConfigurationTypeAdapter$1;->$SwitchMap$com$amazon$whisperjoin$wifi$WifiKeyManagement:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v5, p3

    if-eq p3, v1, :cond_5

    const/4 v0, 0x2

    if-eq p3, v0, :cond_4

    const/4 v0, 0x3

    if-ne p3, v0, :cond_3

    .line 60
    invoke-static {p2, p1, v3}, Lcom/amazon/whisperjoin/wifi/WifiConfiguration;->createOpenWifiConfiguration(Ljava/lang/String;IZ)Lcom/amazon/whisperjoin/wifi/WifiConfiguration;

    move-result-object p1

    goto :goto_2

    .line 63
    :cond_3
    new-instance p1, Lcom/google/gson/JsonParseException;

    const-string p2, "Unsuppored KeyManagement scheme for network"

    invoke-direct {p1, p2}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :cond_4
    invoke-static {p2, v4, p1, v3}, Lcom/amazon/whisperjoin/wifi/WifiConfiguration;->createWepWifiConfiguration(Ljava/lang/String;Ljava/lang/String;IZ)Lcom/amazon/whisperjoin/wifi/WifiConfiguration;

    move-result-object p1

    goto :goto_2

    .line 54
    :cond_5
    invoke-static {p2, v0, p1, v3}, Lcom/amazon/whisperjoin/wifi/WifiConfiguration;->createWpaWifiConfiguration(Ljava/lang/String;Ljava/lang/String;IZ)Lcom/amazon/whisperjoin/wifi/WifiConfiguration;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-object p1

    :catch_0
    return-object v2
.end method

.method public bridge synthetic deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .line 24
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/whisperjoin/credentiallocker/WifiConfigurationTypeAdapter;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/amazon/whisperjoin/wifi/WifiConfiguration;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Lcom/amazon/whisperjoin/wifi/WifiConfiguration;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 1

    .line 79
    new-instance p2, Lcom/amazon/credentiallocker/WifiConfiguration;

    invoke-direct {p2}, Lcom/amazon/credentiallocker/WifiConfiguration;-><init>()V

    .line 80
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/wifi/WifiNetwork;->getSsid()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/amazon/credentiallocker/WifiNetwork;->setSsid(Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 81
    invoke-virtual {p2, p3}, Lcom/amazon/credentiallocker/WifiNetwork;->setBssid(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/wifi/WifiNetwork;->getKeyMgmt()Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/amazon/whisperjoin/credentiallocker/WifiConfigurationTypeAdapter;->toLockerKeyManagement(Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/amazon/credentiallocker/WifiNetwork;->setKeyManagement(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/wifi/WifiBaseConfiguration;->getPriority()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/amazon/credentiallocker/WifiNetworkExtended;->setPriority(I)V

    .line 85
    invoke-virtual {p2}, Lcom/amazon/credentiallocker/WifiNetwork;->getKeyManagement()Ljava/lang/String;

    move-result-object p3

    const-string v0, "WPAPSK"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 86
    new-instance p3, Lcom/amazon/credentiallocker/CredentialConfiguration;

    invoke-direct {p3}, Lcom/amazon/credentiallocker/CredentialConfiguration;-><init>()V

    .line 87
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/wifi/WifiConfiguration;->getPsk()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/amazon/credentiallocker/CredentialConfiguration;->setPrivateSharedKey(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2, p3}, Lcom/amazon/credentiallocker/WifiConfiguration;->setCredentialConfiguration(Lcom/amazon/credentiallocker/CredentialConfiguration;)V

    goto :goto_0

    .line 89
    :cond_0
    sget-object p3, Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;->WEP:Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/wifi/WifiNetwork;->getKeyMgmt()Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 90
    new-instance p3, Lcom/amazon/credentiallocker/WepKeyConfiguration;

    invoke-direct {p3}, Lcom/amazon/credentiallocker/WepKeyConfiguration;-><init>()V

    const/4 v0, 0x0

    .line 91
    invoke-virtual {p3, v0}, Lcom/amazon/credentiallocker/WepKeyConfiguration;->setKeyIndex(I)V

    .line 92
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/wifi/WifiConfiguration;->getWepKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/amazon/credentiallocker/WepKeyConfiguration;->setWepKeyList(Ljava/util/List;)V

    .line 94
    new-instance p1, Lcom/amazon/credentiallocker/CredentialConfiguration;

    invoke-direct {p1}, Lcom/amazon/credentiallocker/CredentialConfiguration;-><init>()V

    .line 95
    invoke-virtual {p1, p3}, Lcom/amazon/credentiallocker/CredentialConfiguration;->setWepKeyConfiguration(Lcom/amazon/credentiallocker/WepKeyConfiguration;)V

    .line 96
    invoke-virtual {p2, p1}, Lcom/amazon/credentiallocker/WifiConfiguration;->setCredentialConfiguration(Lcom/amazon/credentiallocker/CredentialConfiguration;)V

    .line 98
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/amazon/whisperjoin/credentiallocker/WifiConfigurationTypeAdapter;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {p1, p2}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 0

    .line 24
    check-cast p1, Lcom/amazon/whisperjoin/wifi/WifiConfiguration;

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/whisperjoin/credentiallocker/WifiConfigurationTypeAdapter;->serialize(Lcom/amazon/whisperjoin/wifi/WifiConfiguration;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;

    move-result-object p1

    return-object p1
.end method
