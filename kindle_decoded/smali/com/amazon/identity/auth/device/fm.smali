.class public abstract Lcom/amazon/identity/auth/device/fm;
.super Lcom/amazon/identity/auth/device/fn;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/fm$a;,
        Lcom/amazon/identity/auth/device/fm$b;
    }
.end annotation


# instance fields
.field protected final eN:Ljava/lang/String;

.field protected final mAccessToken:Ljava/lang/String;

.field protected final mH:Ljava/lang/String;

.field protected final mI:Landroid/os/Bundle;

.field protected final mJ:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/amazon/identity/auth/device/ed;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/fn;-><init>(Lcom/amazon/identity/auth/device/ed;)V

    .line 117
    iput-object p2, p0, Lcom/amazon/identity/auth/device/fm;->eN:Ljava/lang/String;

    .line 118
    iput-object p3, p0, Lcom/amazon/identity/auth/device/fm;->mH:Ljava/lang/String;

    .line 119
    iput-object p4, p0, Lcom/amazon/identity/auth/device/fm;->mAccessToken:Ljava/lang/String;

    .line 120
    iput-object p5, p0, Lcom/amazon/identity/auth/device/fm;->mI:Landroid/os/Bundle;

    .line 121
    iput-object p6, p0, Lcom/amazon/identity/auth/device/fm;->mJ:Landroid/os/Bundle;

    return-void
.end method

.method private eJ()Ljava/lang/String;
    .locals 3

    .line 221
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fm;->mI:Landroid/os/Bundle;

    const-string v1, "com.amazon.identity.ap.request.parameters"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "openid.assoc_handle"

    .line 224
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 226
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "PandaActorInvolvedApiCall"

    const-string v1, "assoc_handle is not passed in, fall back to MAP\'s default: amzn_device_android"

    .line 230
    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "amzn_device_android"

    :goto_0
    return-object v0
.end method

.method private getDomain()Ljava/lang/String;
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fm;->mI:Landroid/os/Bundle;

    const-string v1, "key_sign_in_full_endpoint"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/identity/auth/device/fn;->o:Lcom/amazon/identity/auth/device/ed;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/fm;->eN:Ljava/lang/String;

    .line 216
    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/ho;->m(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fm;->mI:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected b(Lcom/amazon/identity/auth/device/ej;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 175
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 176
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fm;->mAccessToken:Ljava/lang/String;

    const-string v1, "access_token"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fm;->mH:Ljava/lang/String;

    const-string/jumbo v1, "policy_handle"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    invoke-static {}, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->aZ()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "ui_capacity"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1192
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1195
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/fm;->getDomain()Ljava/lang/String;

    move-result-object v1

    const-string v2, "domain"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1198
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/fm;->eJ()Ljava/lang/String;

    move-result-object v1

    const-string v2, "client_config"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1202
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/fm;->eJ()Ljava/lang/String;

    move-result-object v1

    .line 1237
    iget-object v2, p0, Lcom/amazon/identity/auth/device/fm;->mI:Landroid/os/Bundle;

    const-string v3, "com.amazon.identity.ap.request.parameters"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v3, "pageId"

    .line 1240
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1242
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v2, "PandaActorInvolvedApiCall"

    const-string/jumbo v3, "page_iid is not passed in, fall back to MAP\'s assoc_handle"

    .line 1246
    invoke-static {v2, v3}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string/jumbo v2, "ui_config"

    .line 1202
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1253
    iget-object v1, p0, Lcom/amazon/identity/auth/device/fm;->mI:Landroid/os/Bundle;

    const-string/jumbo v2, "return_to_domain"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1254
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/fm;->getDomain()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/amazon/identity/auth/device/fm;->mI:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1255
    :goto_1
    invoke-static {v1}, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->aX(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "redirect_uri"

    .line 1205
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1261
    iget-object v1, p0, Lcom/amazon/identity/auth/device/fm;->mI:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1262
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/fm;->getDomain()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/amazon/identity/auth/device/fm;->mI:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1263
    :goto_2
    invoke-static {v1}, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->aY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cancel_uri"

    .line 1208
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "auth_portal_config"

    .line 179
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object p1
.end method

.method protected eF()Ljava/lang/String;
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fn;->o:Lcom/amazon/identity/auth/device/ed;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/fm;->eN:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/ho;->c(Lcom/amazon/identity/auth/device/ed;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected eG()Ljava/lang/String;
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fn;->o:Lcom/amazon/identity/auth/device/ed;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/fm;->eN:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/ho;->n(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected eH()Lcom/amazon/identity/auth/device/api/AuthenticationMethod;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected eI()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/token/MAPCookie;",
            ">;"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fm;->mJ:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/fm;->eN:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/hx;->e(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getHttpVerb()Ljava/lang/String;
    .locals 1

    const-string v0, "POST"

    return-object v0
.end method

.method protected j(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2

    const-string v0, "error_index"

    const/4 v1, 0x0

    .line 153
    invoke-static {p1, v0, v1}, Lcom/amazon/identity/auth/device/ih;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
