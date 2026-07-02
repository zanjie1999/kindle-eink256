.class public Lcom/amazon/identity/auth/device/kt;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.kt"


# instance fields
.field private bM:Ljava/lang/String;

.field private bi:Ljava/lang/String;

.field private mAccessToken:Ljava/lang/String;

.field private sg:Ljava/lang/String;

.field private sh:Ljava/lang/String;

.field private si:Ljava/lang/String;

.field private sj:Ljava/lang/String;

.field private sk:Lcom/amazon/identity/auth/device/lz;

.field private sl:Ljava/lang/String;

.field private sm:Ljava/lang/String;

.field private sn:Ljava/lang/String;

.field private so:Lcom/amazon/identity/auth/device/kp;

.field private sp:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/amazon/identity/auth/device/kt;->sp:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/amazon/identity/auth/device/kp;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/amazon/identity/auth/device/kt;->so:Lcom/amazon/identity/auth/device/kp;

    return-void
.end method

.method public a(Lcom/amazon/identity/auth/device/lz;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 319
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/lz;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 325
    :cond_0
    iput-object p1, p0, Lcom/amazon/identity/auth/device/kt;->sk:Lcom/amazon/identity/auth/device/lz;

    return-void

    .line 321
    :cond_1
    :goto_0
    sget-object p1, Lcom/amazon/identity/auth/device/kt;->TAG:Ljava/lang/String;

    const-string v0, " setDeviceSoftwareVersion: device software version is invalid. Cannot be set."

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/amazon/identity/auth/device/ea;)V
    .locals 1

    .line 197
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ea;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/kt;->dS(Ljava/lang/String;)Z

    .line 198
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ea;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/kt;->dR(Ljava/lang/String;)Z

    .line 199
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ea;->dQ()Lcom/amazon/identity/auth/device/lz;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/kt;->a(Lcom/amazon/identity/auth/device/lz;)V

    return-void
.end method

.method public dN(Ljava/lang/String;)Z
    .locals 4

    .line 1055
    invoke-static {p1}, Lcom/amazon/identity/auth/device/lx;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1057
    sget-object v0, Lcom/amazon/identity/auth/device/kt;->TAG:Ljava/lang/String;

    const-string v3, " isValidUserID: returning false because a null or empty user ID was given."

    invoke-static {v0, v3}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    .line 45
    sget-object p1, Lcom/amazon/identity/auth/device/kt;->TAG:Ljava/lang/String;

    const-string v0, " setUserID: userID was invalid. Cannot be set."

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 49
    :cond_1
    iput-object p1, p0, Lcom/amazon/identity/auth/device/kt;->sg:Ljava/lang/String;

    return v2
.end method

.method public dO(Ljava/lang/String;)Z
    .locals 4

    .line 1102
    invoke-static {p1}, Lcom/amazon/identity/auth/device/lx;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1104
    sget-object v0, Lcom/amazon/identity/auth/device/kt;->TAG:Ljava/lang/String;

    const-string v3, " isValidDirectedId: returning false because a null or empty directedId was given."

    invoke-static {v0, v3}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    .line 68
    sget-object p1, Lcom/amazon/identity/auth/device/kt;->TAG:Ljava/lang/String;

    const-string v0, " setDirectedId: directedId was invalid. Cannot be set."

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 72
    :cond_1
    iput-object p1, p0, Lcom/amazon/identity/auth/device/kt;->bM:Ljava/lang/String;

    return v2
.end method

.method public dP(Ljava/lang/String;)Z
    .locals 1

    .line 78
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    sget-object p1, Lcom/amazon/identity/auth/device/kt;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "setAccessToken: access_token is not empty. Cannot be set."

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 84
    :cond_0
    iput-object p1, p0, Lcom/amazon/identity/auth/device/kt;->mAccessToken:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method public dQ(Ljava/lang/String;)Z
    .locals 4

    .line 1113
    invoke-static {p1}, Lcom/amazon/identity/auth/device/lx;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1115
    sget-object v0, Lcom/amazon/identity/auth/device/kt;->TAG:Ljava/lang/String;

    const-string v3, " isValidPassword: returning false because a null or empty password was given."

    invoke-static {v0, v3}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    .line 92
    sget-object p1, Lcom/amazon/identity/auth/device/kt;->TAG:Ljava/lang/String;

    const-string v0, " setPassword: password was invalid. Cannot be set."

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 96
    :cond_1
    iput-object p1, p0, Lcom/amazon/identity/auth/device/kt;->sh:Ljava/lang/String;

    return v2
.end method

.method public dR(Ljava/lang/String;)Z
    .locals 1

    .line 1165
    invoke-static {p1}, Lcom/amazon/identity/auth/device/lx;->eE(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    sget-object p1, Lcom/amazon/identity/auth/device/kt;->TAG:Ljava/lang/String;

    const-string v0, " setDeviceType: deviceType was invalid. Cannot be set."

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 159
    :cond_0
    iput-object p1, p0, Lcom/amazon/identity/auth/device/kt;->bi:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method public dS(Ljava/lang/String;)Z
    .locals 1

    .line 1187
    invoke-static {p1}, Lcom/amazon/identity/auth/device/lx;->eF(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    sget-object p1, Lcom/amazon/identity/auth/device/kt;->TAG:Ljava/lang/String;

    const-string v0, " setDeviceSerialNumber: device serial number was invalid. Cannot be set."

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 181
    :cond_0
    iput-object p1, p0, Lcom/amazon/identity/auth/device/kt;->sj:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method public dT(Ljava/lang/String;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/amazon/identity/auth/device/kt;->sl:Ljava/lang/String;

    return-void
.end method

.method public dU(Ljava/lang/String;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/amazon/identity/auth/device/kt;->sm:Ljava/lang/String;

    return-void
.end method

.method public dV(Ljava/lang/String;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/amazon/identity/auth/device/kt;->si:Ljava/lang/String;

    return-void
.end method

.method public dW(Ljava/lang/String;)V
    .locals 1

    .line 335
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 338
    sget-object v0, Lcom/amazon/identity/auth/device/kt;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 340
    :cond_0
    iput-object p1, p0, Lcom/amazon/identity/auth/device/kt;->sn:Ljava/lang/String;

    return-void
.end method

.method public hA()Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 224
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 226
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "auth_data"

    .line 227
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    iget-boolean v2, p0, Lcom/amazon/identity/auth/device/kt;->sp:Z

    const-string/jumbo v3, "use_global_authentication"

    if-eqz v2, :cond_0

    const-string/jumbo v2, "true"

    .line 230
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const-string v2, "false"

    .line 234
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 236
    :goto_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 237
    iget-object v3, p0, Lcom/amazon/identity/auth/device/kt;->sh:Ljava/lang/String;

    const-string/jumbo v4, "password"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 239
    iget-object v3, p0, Lcom/amazon/identity/auth/device/kt;->sg:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/amazon/identity/auth/device/kt;->bM:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 241
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid parameters. Cannot set both login and directedId."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/amazon/identity/auth/device/kt;->sg:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 246
    iget-object v3, p0, Lcom/amazon/identity/auth/device/kt;->sg:Ljava/lang/String;

    const-string/jumbo v4, "user_id"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "user_id_password"

    .line 247
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 249
    :cond_3
    iget-object v3, p0, Lcom/amazon/identity/auth/device/kt;->bM:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 251
    iget-object v3, p0, Lcom/amazon/identity/auth/device/kt;->bM:Ljava/lang/String;

    const-string v4, "directedId"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "directedId_password"

    .line 252
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 255
    :cond_4
    iget-object v3, p0, Lcom/amazon/identity/auth/device/kt;->mAccessToken:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 257
    iget-object v3, p0, Lcom/amazon/identity/auth/device/kt;->mAccessToken:Ljava/lang/String;

    const-string v4, "access_token"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "access_token_password"

    .line 258
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 266
    :goto_2
    iget-object v2, p0, Lcom/amazon/identity/auth/device/kt;->si:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 268
    iget-object v2, p0, Lcom/amazon/identity/auth/device/kt;->si:Ljava/lang/String;

    const-string/jumbo v3, "trusted_device_token"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 271
    :cond_5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v2, "signin_data"

    .line 272
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 274
    iget-object v2, p0, Lcom/amazon/identity/auth/device/kt;->sj:Ljava/lang/String;

    const-string v3, "device_serial"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 275
    iget-object v2, p0, Lcom/amazon/identity/auth/device/kt;->bi:Ljava/lang/String;

    const-string v3, "device_type"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "domain"

    const-string v3, "Device"

    .line 276
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 277
    iget-object v2, p0, Lcom/amazon/identity/auth/device/kt;->sl:Ljava/lang/String;

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    const-string v2, "defaultAppName"

    :goto_3
    const-string v3, "app_name"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 278
    iget-object v2, p0, Lcom/amazon/identity/auth/device/kt;->sm:Ljava/lang/String;

    if-eqz v2, :cond_7

    goto :goto_4

    :cond_7
    const-string v2, "defaultAppVersion"

    :goto_4
    const-string v3, "app_version"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 279
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "device_model"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 280
    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string/jumbo v3, "os_version"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 281
    iget-object v2, p0, Lcom/amazon/identity/auth/device/kt;->sk:Lcom/amazon/identity/auth/device/lz;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/lz;->getString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_8
    const-string v2, "defaultSoftwareVersion"

    :goto_5
    const-string/jumbo v3, "software_version"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 284
    iget-object v2, p0, Lcom/amazon/identity/auth/device/kt;->sn:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/amazon/identity/auth/device/fi;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 286
    iget-object v2, p0, Lcom/amazon/identity/auth/device/kt;->sk:Lcom/amazon/identity/auth/device/lz;

    if-nez v2, :cond_9

    .line 288
    sget-object v2, Lcom/amazon/identity/auth/device/kt;->TAG:Ljava/lang/String;

    const-string v3, " software_version was undefined."

    invoke-static {v2, v3}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :cond_9
    iget-object v2, p0, Lcom/amazon/identity/auth/device/kt;->so:Lcom/amazon/identity/auth/device/kp;

    if-eqz v2, :cond_c

    .line 294
    :try_start_0
    iget-object v2, p0, Lcom/amazon/identity/auth/device/kt;->bi:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/kt;->sj:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/amazon/identity/auth/device/js;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 295
    invoke-static {}, Lcom/amazon/identity/auth/device/js;->hc()Lorg/json/JSONObject;

    move-result-object v3

    .line 296
    iget-object v5, p0, Lcom/amazon/identity/auth/device/kt;->sg:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "SHA256"

    .line 298
    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    iget-object v6, p0, Lcom/amazon/identity/auth/device/kt;->sg:Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    const-string v6, "email_hash"

    const/4 v7, 0x2

    .line 299
    invoke-static {v5, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_6

    .line 301
    :cond_a
    iget-object v5, p0, Lcom/amazon/identity/auth/device/kt;->bM:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "directed_id"

    .line 303
    iget-object v6, p0, Lcom/amazon/identity/auth/device/kt;->bM:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 305
    :cond_b
    :goto_6
    invoke-static {v2, v3, v4}, Lcom/amazon/identity/auth/device/js;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 306
    iget-object v3, p0, Lcom/amazon/identity/auth/device/kt;->so:Lcom/amazon/identity/auth/device/kp;

    const-string v4, "drvV2"

    invoke-virtual {v3, v4, v2}, Lcom/amazon/identity/auth/device/kp;->d(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "device_authentication_token"

    .line 307
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v1

    .line 311
    sget-object v2, Lcom/amazon/identity/auth/device/kt;->TAG:Ljava/lang/String;

    const-string v3, "Failed to sign JWT"

    invoke-static {v2, v3, v1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_c
    :goto_7
    return-object v0

    .line 263
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid parameters."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public k(Z)V
    .locals 0

    .line 214
    iput-boolean p1, p0, Lcom/amazon/identity/auth/device/kt;->sp:Z

    return-void
.end method
