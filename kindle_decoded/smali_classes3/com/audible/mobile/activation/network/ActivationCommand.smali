.class public Lcom/audible/mobile/activation/network/ActivationCommand;
.super Lcom/audible/mobile/downloader/AbstractPostDownloadCommand;
.source "ActivationCommand.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/audible/mobile/activation/network/factory/ActivationRequestData;)V
    .locals 0

    .line 31
    invoke-static {p1, p2}, Lcom/audible/mobile/activation/network/ActivationCommand;->constructUrl(Landroid/content/Context;Lcom/audible/mobile/activation/network/factory/ActivationRequestData;)Ljava/net/URL;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/audible/mobile/downloader/AbstractPostDownloadCommand;-><init>(Ljava/net/URL;)V

    return-void
.end method

.method private static constructUrl(Landroid/content/Context;Lcom/audible/mobile/activation/network/factory/ActivationRequestData;)Ljava/net/URL;
    .locals 1

    .line 36
    sget v0, Lcom/audible/mobile/activation/R$string;->activationUrl:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcom/audible/mobile/activation/network/ActivationCommand;->queryString(Lcom/audible/mobile/activation/network/factory/ActivationRequestData;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/audible/mobile/util/UrlUtils;->toUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/net/URL;

    move-result-object p0

    return-object p0
.end method

.method private static queryString(Lcom/audible/mobile/activation/network/factory/ActivationRequestData;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/mobile/activation/network/factory/ActivationRequestData;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 44
    invoke-virtual {p0}, Lcom/audible/mobile/activation/network/factory/ActivationRequestData;->getType()Lcom/audible/mobile/activation/network/factory/ActivationRequestType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/audible/mobile/activation/network/factory/ActivationRequestType;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "action"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-virtual {p0}, Lcom/audible/mobile/activation/network/factory/ActivationRequestData;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    const-string v2, "player_manuf"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-virtual {p0}, Lcom/audible/mobile/activation/network/factory/ActivationRequestData;->getModel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "player_model"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-virtual {p0}, Lcom/audible/mobile/activation/network/factory/ActivationRequestData;->getPlayerType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "player_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-virtual {p0}, Lcom/audible/mobile/activation/network/factory/ActivationRequestData;->getDeviceActivationSerialNumber()Ljava/lang/String;

    move-result-object p0

    .line 50
    invoke-static {p0}, Lcom/audible/mobile/util/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "player_id"

    .line 51
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method
