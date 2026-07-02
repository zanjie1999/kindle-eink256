.class public Lcom/amazon/identity/auth/device/bz;
.super Lcom/amazon/identity/auth/device/cb;
.source "DCP"


# instance fields
.field private final ef:Ljava/lang/String;

.field private final hJ:Ljava/lang/String;

.field private final hK:Ljava/lang/String;

.field private hL:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/cb;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/bz;->hL:Lorg/json/JSONArray;

    .line 30
    iput-object p2, p0, Lcom/amazon/identity/auth/device/bz;->hJ:Ljava/lang/String;

    .line 31
    iput-object p4, p0, Lcom/amazon/identity/auth/device/bz;->ef:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/amazon/identity/auth/device/bz;->hK:Ljava/lang/String;

    .line 35
    invoke-static {p5}, Lcom/amazon/identity/auth/device/hw;->f(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 37
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 39
    iget-object p3, p0, Lcom/amazon/identity/auth/device/bz;->hL:Lorg/json/JSONArray;

    invoke-virtual {p3, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    return-void

    .line 44
    :cond_1
    iget-object p1, p0, Lcom/amazon/identity/auth/device/bz;->hL:Lorg/json/JSONArray;

    const-string/jumbo p2, "profile:user_id"

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    return-void
.end method


# virtual methods
.method public a(Lcom/amazon/identity/auth/device/ej;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 50
    invoke-super {p0, p1}, Lcom/amazon/identity/auth/device/cb;->a(Lcom/amazon/identity/auth/device/ej;)Lorg/json/JSONObject;

    move-result-object p1

    .line 51
    iget-object v0, p0, Lcom/amazon/identity/auth/device/bz;->hL:Lorg/json/JSONArray;

    const-string/jumbo v1, "scope_list"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 56
    iget-object v1, p0, Lcom/amazon/identity/auth/device/bz;->ef:Ljava/lang/String;

    const-string v2, "client_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    iget-object v1, p0, Lcom/amazon/identity/auth/device/bz;->hK:Ljava/lang/String;

    const-string v2, "client_secret"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "client_auth_data"

    .line 58
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object p1
.end method

.method public bA()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "scope_access_token"

    return-object v0
.end method

.method public by()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "refresh_token"

    return-object v0
.end method

.method public bz()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/amazon/identity/auth/device/bz;->hJ:Ljava/lang/String;

    return-object v0
.end method
