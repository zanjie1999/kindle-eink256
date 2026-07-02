.class public Lcom/amazon/identity/auth/device/fg;
.super Ljava/lang/Object;
.source "DCP"


# instance fields
.field final ek:Landroid/webkit/WebView;

.field final eq:Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager;

.field final er:Lcom/amazon/identity/auth/device/fe;

.field private final mContext:Landroid/content/Context;

.field final mp:Lcom/amazon/identity/auth/device/gw;

.field final mq:Lcom/amazon/identity/auth/device/api/MAPActorManager;

.field mr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager;Lcom/amazon/identity/auth/device/fe;)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/fg;->mContext:Landroid/content/Context;

    .line 66
    iput-object p1, p0, Lcom/amazon/identity/auth/device/fg;->ek:Landroid/webkit/WebView;

    .line 67
    new-instance p1, Lcom/amazon/identity/auth/device/gw;

    invoke-direct {p1, v0}, Lcom/amazon/identity/auth/device/gw;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/fg;->mp:Lcom/amazon/identity/auth/device/gw;

    .line 68
    new-instance p1, Lcom/amazon/identity/auth/device/api/MAPActorManager;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/fg;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/amazon/identity/auth/device/api/MAPActorManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/fg;->mq:Lcom/amazon/identity/auth/device/api/MAPActorManager;

    const/4 p1, 0x0

    .line 69
    iput-object p1, p0, Lcom/amazon/identity/auth/device/fg;->mr:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Lcom/amazon/identity/auth/device/fg;->eq:Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager;

    .line 71
    iput-object p3, p0, Lcom/amazon/identity/auth/device/fg;->er:Lcom/amazon/identity/auth/device/fe;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1

    .line 496
    new-instance v0, Lcom/amazon/identity/auth/device/fg$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/identity/auth/device/fg$3;-><init>(Lcom/amazon/identity/auth/device/fg;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcom/amazon/identity/auth/device/jf;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method c(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 449
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 450
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 452
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 455
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string/jumbo p1, "{\"error\":\"General_Error\"}"

    return-object p1
.end method

.method c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "MAPJavaScriptBridge"

    const-string v1, "loadCallbackFunction"

    .line 467
    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/fg;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 469
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Loading callback javascript: "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 470
    new-instance p2, Lcom/amazon/identity/auth/device/fg$2;

    invoke-direct {p2, p0, p1}, Lcom/amazon/identity/auth/device/fg$2;-><init>(Lcom/amazon/identity/auth/device/fg;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/amazon/identity/auth/device/jf;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const-string p1, "javascript:if (typeof %1$s !== \'undefined\' && typeof %1$s === \'function\'){%1$s(%2$s,%3$s);}"

    .line 487
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public ev()Ljava/lang/String;
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fg;->mr:Ljava/lang/String;

    return-object v0
.end method

.method ew()Z
    .locals 3

    .line 513
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fg;->ek:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/identity/auth/device/ji;->dH(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 516
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 517
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "web page host: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "MAPJavaScriptBridge"

    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 519
    invoke-static {}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->cf()Ljava/util/Set;

    move-result-object v1

    .line 520
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 522
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getCustomerInformationHint(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 286
    new-instance v0, Lcom/amazon/identity/auth/device/fg$9;

    invoke-direct {v0, p0, p1}, Lcom/amazon/identity/auth/device/fg$9;-><init>(Lcom/amazon/identity/auth/device/fg;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/amazon/identity/auth/device/fg;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public getMAPAndroidBridgeVersion(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 247
    new-instance v0, Lcom/amazon/identity/auth/device/fg$8;

    invoke-direct {v0, p0, p1}, Lcom/amazon/identity/auth/device/fg$8;-><init>(Lcom/amazon/identity/auth/device/fg;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/amazon/identity/auth/device/jf;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isSmsRetrieverEnabled(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 361
    new-instance v0, Lcom/amazon/identity/auth/device/fg$10;

    invoke-direct {v0, p0, p1}, Lcom/amazon/identity/auth/device/fg$10;-><init>(Lcom/amazon/identity/auth/device/fg;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/amazon/identity/auth/device/fg;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public registerMAPSmsReceiver(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 402
    new-instance v0, Lcom/amazon/identity/auth/device/fg$11;

    invoke-direct {v0, p0, p1}, Lcom/amazon/identity/auth/device/fg$11;-><init>(Lcom/amazon/identity/auth/device/fg;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/amazon/identity/auth/device/fg;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public switchActor(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 176
    new-instance v0, Lcom/amazon/identity/auth/device/fg$6;

    invoke-direct {v0, p0, p1}, Lcom/amazon/identity/auth/device/fg$6;-><init>(Lcom/amazon/identity/auth/device/fg;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/amazon/identity/auth/device/jf;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public upgradeToken(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 93
    new-instance v0, Lcom/amazon/identity/auth/device/fg$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/identity/auth/device/fg$1;-><init>(Lcom/amazon/identity/auth/device/fg;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/amazon/identity/auth/device/jf;->d(Ljava/lang/Runnable;)V

    return-void
.end method
