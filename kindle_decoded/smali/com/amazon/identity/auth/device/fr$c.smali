.class public Lcom/amazon/identity/auth/device/fr$c;
.super Lcom/amazon/identity/auth/device/fr;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/fr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private final eb:Landroid/os/Bundle;

.field private final nb:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/identity/auth/device/gy;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 69
    invoke-direct {p0, p2, p1, p3}, Lcom/amazon/identity/auth/device/fr;-><init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/gy;Ljava/lang/String;)V

    .line 70
    iput-object p4, p0, Lcom/amazon/identity/auth/device/fr$c;->nb:Ljava/lang/String;

    .line 71
    iput-object p5, p0, Lcom/amazon/identity/auth/device/fr$c;->eb:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method protected b(Lcom/amazon/identity/auth/device/ej;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fr;->mW:Lcom/amazon/identity/auth/device/gy;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/fr$c;->nb:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/fr;->bM:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/amazon/identity/auth/device/gy;->h(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method protected eF()Ljava/lang/String;
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fr$c;->eb:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 99
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ho;->E(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    invoke-static {}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->cc()Lcom/amazon/identity/auth/device/env/EnvironmentUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->getPandaHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 106
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fn;->o:Lcom/amazon/identity/auth/device/ed;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/fr;->bM:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/ho;->c(Lcom/amazon/identity/auth/device/ed;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Delegated token exchange endpoint: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PandaTokenExchangeApiCall"

    invoke-static {v2, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PandaDelegateTokenExchange:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method protected eH()Lcom/amazon/identity/auth/device/api/AuthenticationMethod;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
