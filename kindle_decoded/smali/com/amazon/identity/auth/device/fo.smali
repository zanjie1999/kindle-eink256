.class public Lcom/amazon/identity/auth/device/fo;
.super Lcom/amazon/identity/auth/device/fn;
.source "DCP"


# instance fields
.field protected final bM:Ljava/lang/String;

.field protected final mP:Ljava/lang/String;

.field protected final mQ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/fn;-><init>(Lcom/amazon/identity/auth/device/ed;)V

    .line 39
    iput-object p2, p0, Lcom/amazon/identity/auth/device/fo;->bM:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/amazon/identity/auth/device/fo;->mP:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lcom/amazon/identity/auth/device/fo;->mQ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected b(Lcom/amazon/identity/auth/device/ej;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 78
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 79
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fo;->mP:Ljava/lang/String;

    const-string/jumbo v1, "token"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "refreshToken"

    .line 82
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    iget-object p1, p0, Lcom/amazon/identity/auth/device/fo;->mQ:Ljava/lang/String;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/jd;->dC(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 86
    iget-object p1, p0, Lcom/amazon/identity/auth/device/fo;->mQ:Ljava/lang/String;

    const-string v1, "keyIdentifier"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-object v0
.end method

.method protected eF()Ljava/lang/String;
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fn;->o:Lcom/amazon/identity/auth/device/ed;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/fo;->bM:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/ho;->c(Lcom/amazon/identity/auth/device/ed;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected eG()Ljava/lang/String;
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fn;->o:Lcom/amazon/identity/auth/device/ed;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/fo;->bM:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/ho;->n(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected eH()Lcom/amazon/identity/auth/device/api/AuthenticationMethod;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected eK()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 95
    invoke-super {p0}, Lcom/amazon/identity/auth/device/fn;->eK()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected getHttpVerb()Ljava/lang/String;
    .locals 1

    const-string v0, "POST"

    return-object v0
.end method

.method protected getPath()Ljava/lang/String;
    .locals 1

    const-string v0, "/auth/mobile/encryptionkey"

    return-object v0
.end method

.method protected j(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2

    const-string v0, "error_index"

    const/4 v1, 0x0

    .line 101
    invoke-static {p1, v0, v1}, Lcom/amazon/identity/auth/device/ih;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
