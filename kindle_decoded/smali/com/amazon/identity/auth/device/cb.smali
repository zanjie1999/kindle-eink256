.class public abstract Lcom/amazon/identity/auth/device/cb;
.super Lcom/amazon/identity/auth/device/ca;
.source "DCP"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/ca;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/amazon/identity/auth/device/ej;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 30
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 31
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/ca;->bB()Lcom/amazon/identity/auth/device/ed;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_name"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    invoke-static {}, Lcom/amazon/identity/auth/device/hs;->gv()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_version"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1047
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/ca;->bB()Lcom/amazon/identity/auth/device/ed;

    move-result-object v1

    .line 1048
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/ca;->bB()Lcom/amazon/identity/auth/device/ed;

    move-result-object v2

    .line 1049
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/ca;->bB()Lcom/amazon/identity/auth/device/ed;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1048
    invoke-static {v2, v3}, Lcom/amazon/identity/auth/device/ib;->s(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1050
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/ca;->bC()Lcom/amazon/identity/auth/device/ea;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/ea;->ct()Ljava/lang/String;

    move-result-object v3

    .line 1047
    invoke-static {v1, v2, v3, p1}, Lcom/amazon/identity/auth/device/fi;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "device_metadata"

    .line 33
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/cb;->by()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "source_token_type"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/cb;->bz()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "source_token"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/cb;->bA()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "requested_token_type"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public abstract bA()Ljava/lang/String;
.end method

.method public bn()Ljava/lang/String;
    .locals 1

    const-string v0, "/auth/token"

    return-object v0
.end method

.method public abstract by()Ljava/lang/String;
.end method

.method public abstract bz()Ljava/lang/String;
.end method
