.class public Lcom/amazon/identity/auth/device/lb;
.super Lcom/amazon/identity/auth/device/ld;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.lb"


# instance fields
.field private bk:Ljava/lang/String;

.field private mReason:Ljava/lang/String;

.field private sN:Ljava/lang/String;

.field private sO:Ljava/lang/String;

.field private sP:Ljava/lang/String;

.field private sQ:Ljava/lang/String;

.field private tG:Ljava/lang/String;

.field private tH:Ljava/lang/String;

.field private tI:Lcom/amazon/identity/auth/device/lz;

.field private tf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/ly;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/ld;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/amazon/identity/auth/device/lz;)Z
    .locals 1

    .line 122
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/lz;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    sget-object p1, Lcom/amazon/identity/auth/device/lb;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "setVersionNumber: version number was invalid. Cannot set."

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 128
    :cond_0
    iput-object p1, p0, Lcom/amazon/identity/auth/device/lb;->tI:Lcom/amazon/identity/auth/device/lz;

    const/4 p1, 0x1

    return p1
.end method

.method public dX(Ljava/lang/String;)Z
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/amazon/identity/auth/device/lb;->sN:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method public eg(Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/amazon/identity/auth/device/lb;->bk:Ljava/lang/String;

    return-void
.end method

.method public es(Ljava/lang/String;)Z
    .locals 4

    .line 1070
    invoke-static {p1}, Lcom/amazon/identity/auth/device/lx;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1072
    sget-object v0, Lcom/amazon/identity/auth/device/lb;->TAG:Ljava/lang/String;

    const-string v3, "isValidRadioId: returning false because a null or empty radio id was given."

    invoke-static {v0, v3}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    .line 1076
    :cond_0
    invoke-static {p1}, Lcom/amazon/identity/auth/device/lx;->eG(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1078
    sget-object v0, Lcom/amazon/identity/auth/device/lb;->TAG:Ljava/lang/String;

    const-string v3, "isValidRadioId: returning false because a non alpha radio id number was given."

    invoke-static {v0, v3}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    .line 60
    sget-object p1, Lcom/amazon/identity/auth/device/lb;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "setRadioId: radio id was invalid. Cannot set."

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 64
    :cond_2
    iput-object p1, p0, Lcom/amazon/identity/auth/device/lb;->tG:Ljava/lang/String;

    return v1
.end method

.method public et(Ljava/lang/String;)Z
    .locals 4

    .line 1111
    invoke-static {p1}, Lcom/amazon/identity/auth/device/lx;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1113
    sget-object v0, Lcom/amazon/identity/auth/device/lb;->TAG:Ljava/lang/String;

    const-string v3, "isValidReason: returning false because a null or empty reason was given."

    invoke-static {v0, v3}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    .line 101
    sget-object p1, Lcom/amazon/identity/auth/device/lb;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "setReason: reason was invalid. Cannot set."

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 105
    :cond_1
    iput-object p1, p0, Lcom/amazon/identity/auth/device/lb;->mReason:Ljava/lang/String;

    return v2
.end method

.method public hq()Lcom/amazon/identity/auth/device/ma;
    .locals 8

    .line 193
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/lb;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    sget-object v0, Lcom/amazon/identity/auth/device/lb;->TAG:Ljava/lang/String;

    const-string v1, "getWebRequest: Cannot construct a WebRequest because the RegisterDeviceWithSecretRequest is invalid. (See previous warnings from RegisterDeviceWithSecretRequest::isValid for details.)"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ld;->rD:Lcom/amazon/identity/auth/device/ma;

    if-eqz v0, :cond_1

    return-object v0

    .line 206
    :cond_1
    new-instance v0, Lcom/amazon/identity/auth/device/ma;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/ma;-><init>()V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/ld;->rD:Lcom/amazon/identity/auth/device/ma;

    .line 208
    iget-object v1, p0, Lcom/amazon/identity/auth/device/lb;->sN:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v2, "Accept-Language"

    .line 210
    invoke-virtual {v0, v2, v1}, Lcom/amazon/identity/auth/device/ma;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_2
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ld;->rD:Lcom/amazon/identity/auth/device/ma;

    sget-object v1, Lcom/amazon/identity/kcpsdk/common/WebProtocol;->WebProtocolHttps:Lcom/amazon/identity/kcpsdk/common/WebProtocol;

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/ma;->a(Lcom/amazon/identity/kcpsdk/common/WebProtocol;)V

    .line 214
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ld;->rD:Lcom/amazon/identity/auth/device/ma;

    invoke-static {}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->cc()Lcom/amazon/identity/auth/device/env/EnvironmentUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->cl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/ma;->setHost(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ld;->rD:Lcom/amazon/identity/auth/device/ma;

    const-string v1, "/FirsProxy/getNewDeviceCredentials"

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/ma;->setPath(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ld;->rD:Lcom/amazon/identity/auth/device/ma;

    sget-object v1, Lcom/amazon/identity/kcpsdk/common/HttpVerb;->HttpVerbPost:Lcom/amazon/identity/kcpsdk/common/HttpVerb;

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/ma;->a(Lcom/amazon/identity/kcpsdk/common/HttpVerb;)V

    .line 218
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ld;->rD:Lcom/amazon/identity/auth/device/ma;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/ld;->bi:Ljava/lang/String;

    const-string v2, "deviceType"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/identity/auth/device/ma;->aw(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ld;->rD:Lcom/amazon/identity/auth/device/ma;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/ld;->sj:Ljava/lang/String;

    const-string v2, "deviceSerialNumber"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/identity/auth/device/ma;->aw(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ld;->rD:Lcom/amazon/identity/auth/device/ma;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/ld;->tK:Ljava/lang/String;

    const-string/jumbo v2, "secret"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/identity/auth/device/ma;->aw(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ld;->rD:Lcom/amazon/identity/auth/device/ma;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/lb;->tG:Ljava/lang/String;

    const-string/jumbo v2, "radioId"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/identity/auth/device/ma;->aw(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/amazon/identity/auth/device/lb;->tH:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 225
    iget-object v1, p0, Lcom/amazon/identity/auth/device/ld;->rD:Lcom/amazon/identity/auth/device/ma;

    const-string/jumbo v2, "secondaryRadioId"

    invoke-virtual {v1, v2, v0}, Lcom/amazon/identity/auth/device/ma;->aw(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_3
    iget-object v0, p0, Lcom/amazon/identity/auth/device/lb;->mReason:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 230
    iget-object v1, p0, Lcom/amazon/identity/auth/device/ld;->rD:Lcom/amazon/identity/auth/device/ma;

    const-string/jumbo v2, "reason"

    invoke-virtual {v1, v2, v0}, Lcom/amazon/identity/auth/device/ma;->aw(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :cond_4
    iget-object v0, p0, Lcom/amazon/identity/auth/device/lb;->tI:Lcom/amazon/identity/auth/device/lz;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/lz;->isValid()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 235
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ld;->rD:Lcom/amazon/identity/auth/device/ma;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/lb;->tI:Lcom/amazon/identity/auth/device/lz;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/lz;->getString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "softwareVersion"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/identity/auth/device/ma;->aw(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_5
    iget-object v0, p0, Lcom/amazon/identity/auth/device/lb;->bk:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 240
    iget-object v1, p0, Lcom/amazon/identity/auth/device/ld;->rD:Lcom/amazon/identity/auth/device/ma;

    const-string/jumbo v2, "softwareComponentId"

    invoke-virtual {v1, v2, v0}, Lcom/amazon/identity/auth/device/ma;->aw(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_6
    iget-object v0, p0, Lcom/amazon/identity/auth/device/lb;->sO:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/amazon/identity/auth/device/lb;->sP:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/amazon/identity/auth/device/lb;->sQ:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 245
    iget-object v1, p0, Lcom/amazon/identity/auth/device/ld;->rD:Lcom/amazon/identity/auth/device/ma;

    const-string/jumbo v2, "publicKeyData"

    invoke-virtual {v1, v2, v0}, Lcom/amazon/identity/auth/device/ma;->aw(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ld;->rD:Lcom/amazon/identity/auth/device/ma;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/lb;->sP:Ljava/lang/String;

    const-string/jumbo v2, "publicKeyFormat"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/identity/auth/device/ma;->aw(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ld;->rD:Lcom/amazon/identity/auth/device/ma;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/lb;->sQ:Ljava/lang/String;

    const-string/jumbo v2, "publicKeyAlgorithm"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/identity/auth/device/ma;->aw(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :cond_7
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/ld;->id()Ljava/lang/String;

    move-result-object v0

    .line 252
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 254
    iget-object v1, p0, Lcom/amazon/identity/auth/device/ld;->rD:Lcom/amazon/identity/auth/device/ma;

    const-string v2, "deviceRequestVerificationData"

    invoke-virtual {v1, v2, v0}, Lcom/amazon/identity/auth/device/ma;->aw(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :cond_8
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ld;->rD:Lcom/amazon/identity/auth/device/ma;

    const-string v1, "Content-Type"

    const-string/jumbo v2, "text/xml"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/identity/auth/device/ma;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/amazon/identity/auth/device/lb;->tf:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 263
    new-instance v0, Lcom/amazon/identity/auth/device/mf;

    new-array v2, v1, [Lcom/amazon/identity/auth/device/mg;

    const-string/jumbo v3, "request"

    invoke-direct {v0, v3, v2}, Lcom/amazon/identity/auth/device/mf;-><init>(Ljava/lang/String;[Lcom/amazon/identity/auth/device/mg;)V

    .line 264
    new-instance v2, Lcom/amazon/identity/auth/device/me;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/lb;->tf:Ljava/util/Map;

    invoke-direct {v2, v3}, Lcom/amazon/identity/auth/device/me;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v2}, Lcom/amazon/identity/auth/device/mf;->a(Lcom/amazon/identity/auth/device/mg;)Z

    .line 265
    iget-object v2, p0, Lcom/amazon/identity/auth/device/ld;->rD:Lcom/amazon/identity/auth/device/ma;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/mf;->iJ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/amazon/identity/auth/device/ma;->eJ(Ljava/lang/String;)V

    .line 268
    :cond_9
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ld;->rD:Lcom/amazon/identity/auth/device/ma;

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/ma;->m(Z)V

    .line 270
    sget-object v0, Lcom/amazon/identity/auth/device/lb;->TAG:Ljava/lang/String;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/ld;->bi:Ljava/lang/String;

    aput-object v3, v2, v1

    iget-object v3, p0, Lcom/amazon/identity/auth/device/lb;->mReason:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/amazon/identity/auth/device/lb;->tI:Lcom/amazon/identity/auth/device/lz;

    if-eqz v3, :cond_a

    .line 275
    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/lz;->getString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_a
    const-string v3, ""

    :goto_0
    const/4 v5, 0x2

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/amazon/identity/auth/device/lb;->bk:Ljava/lang/String;

    if-nez v3, :cond_b

    const-string v3, "None"

    :cond_b
    const/4 v6, 0x3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/amazon/identity/auth/device/lb;->sN:Ljava/lang/String;

    if-nez v3, :cond_c

    const-string v3, "Default"

    :cond_c
    const/4 v7, 0x4

    aput-object v3, v2, v7

    const-string v3, "getWebRequest: constructed a web request with:\nDevice Type: %s\nReason: %s\nVersion Number: %s\nSoftware Component Id: %s\nLocale: %s"

    .line 270
    invoke-static {v0, v3, v2}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v0, v7, [Ljava/lang/Object;

    .line 279
    iget-object v2, p0, Lcom/amazon/identity/auth/device/ld;->sj:Ljava/lang/String;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/amazon/identity/auth/device/lb;->tG:Ljava/lang/String;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/amazon/identity/auth/device/lb;->tH:Ljava/lang/String;

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/amazon/identity/auth/device/ld;->tK:Ljava/lang/String;

    aput-object v1, v0, v6

    const-string v1, "Device Serial Number: %s\nRadio Id: %s\nSecondary Radio Id: %s\nSecret: %s"

    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/il;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ld;->rD:Lcom/amazon/identity/auth/device/ma;

    return-object v0
.end method

.method public isValid()Z
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ld;->bi:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 150
    sget-object v0, Lcom/amazon/identity/auth/device/lb;->TAG:Ljava/lang/String;

    const-string v2, "isValid: returning false because a valid device type has not been set."

    invoke-static {v0, v2}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ld;->sj:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 156
    sget-object v0, Lcom/amazon/identity/auth/device/lb;->TAG:Ljava/lang/String;

    const-string v2, "isValid: returning false because a valid device serial number has not been set."

    invoke-static {v0, v2}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ld;->tK:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 162
    sget-object v0, Lcom/amazon/identity/auth/device/lb;->TAG:Ljava/lang/String;

    const-string v2, "isValid: returning false because a valid secret has not been set."

    invoke-static {v0, v2}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 166
    :cond_2
    iget-object v0, p0, Lcom/amazon/identity/auth/device/lb;->tG:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 168
    sget-object v0, Lcom/amazon/identity/auth/device/lb;->TAG:Ljava/lang/String;

    const-string v2, "isValid: returning false because a valid radio id has not been set."

    invoke-static {v0, v2}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public m(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/ly;",
            ">;)V"
        }
    .end annotation

    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/lb;->tf:Ljava/util/Map;

    return-void
.end method
