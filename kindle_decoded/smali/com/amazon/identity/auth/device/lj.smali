.class public Lcom/amazon/identity/auth/device/lj;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.lj"


# instance fields
.field private bk:Ljava/lang/String;

.field private mReason:Ljava/lang/String;

.field private rD:Lcom/amazon/identity/auth/device/ma;

.field private rU:Ljava/lang/String;

.field private tX:Lcom/amazon/identity/auth/device/lz;

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
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Lcom/amazon/identity/auth/device/lj;->getDefaultUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/lj;->rU:Ljava/lang/String;

    return-void
.end method

.method public static ey(Ljava/lang/String;)Z
    .locals 0

    .line 54
    invoke-static {p0}, Lcom/amazon/identity/auth/device/ma;->isValidUrl(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static getDefaultUrl()Ljava/lang/String;
    .locals 2

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->cc()Lcom/amazon/identity/auth/device/env/EnvironmentUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->cl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/FirsProxy/getDeviceCredentials"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public c(Lcom/amazon/identity/auth/device/lz;)Z
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/amazon/identity/auth/device/lj;->tX:Lcom/amazon/identity/auth/device/lz;

    const/4 p1, 0x1

    return p1
.end method

.method public eg(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/amazon/identity/auth/device/lj;->bk:Ljava/lang/String;

    return-void
.end method

.method public et(Ljava/lang/String;)Z
    .locals 4

    .line 1072
    invoke-static {p1}, Lcom/amazon/identity/auth/device/lx;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1074
    sget-object v0, Lcom/amazon/identity/auth/device/lj;->TAG:Ljava/lang/String;

    const-string v3, "isValidReason: returning false because a null or empty reason was given."

    invoke-static {v0, v3}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    .line 61
    sget-object p1, Lcom/amazon/identity/auth/device/lj;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "setReason: reason was invalid. Cannot be set."

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 65
    :cond_1
    iput-object p1, p0, Lcom/amazon/identity/auth/device/lj;->mReason:Ljava/lang/String;

    return v2
.end method

.method public ex(Ljava/lang/String;)Z
    .locals 1

    .line 1054
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ma;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    sget-object p1, Lcom/amazon/identity/auth/device/lj;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "setURL: url is invalid. Cannot be set. Invalidating default URL to prevent it from being used."

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lcom/amazon/identity/auth/device/lj;->rU:Ljava/lang/String;

    const/4 p1, 0x0

    return p1

    .line 48
    :cond_0
    iput-object p1, p0, Lcom/amazon/identity/auth/device/lj;->rU:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method public hq()Lcom/amazon/identity/auth/device/ma;
    .locals 4

    .line 126
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/lj;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    sget-object v0, Lcom/amazon/identity/auth/device/lj;->TAG:Ljava/lang/String;

    const-string v1, "getWebRequest: Cannot construct a WebRequest because the UpdateDeviceCredentialsRequest is invalid. (See previous warnings from UpdateDeviceCredentialsRequest::isValid for details.)"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/lj;->rD:Lcom/amazon/identity/auth/device/ma;

    if-eqz v0, :cond_1

    return-object v0

    .line 138
    :cond_1
    new-instance v0, Lcom/amazon/identity/auth/device/ma;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/ma;-><init>()V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/lj;->rD:Lcom/amazon/identity/auth/device/ma;

    .line 139
    iget-object v1, p0, Lcom/amazon/identity/auth/device/lj;->rU:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/ma;->dK(Ljava/lang/String;)Z

    .line 140
    iget-object v0, p0, Lcom/amazon/identity/auth/device/lj;->rD:Lcom/amazon/identity/auth/device/ma;

    sget-object v1, Lcom/amazon/identity/kcpsdk/common/HttpVerb;->HttpVerbGet:Lcom/amazon/identity/kcpsdk/common/HttpVerb;

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/ma;->a(Lcom/amazon/identity/kcpsdk/common/HttpVerb;)V

    .line 142
    iget-object v0, p0, Lcom/amazon/identity/auth/device/lj;->mReason:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 144
    iget-object v1, p0, Lcom/amazon/identity/auth/device/lj;->rD:Lcom/amazon/identity/auth/device/ma;

    const-string/jumbo v2, "reason"

    invoke-virtual {v1, v2, v0}, Lcom/amazon/identity/auth/device/ma;->aw(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_2
    iget-object v0, p0, Lcom/amazon/identity/auth/device/lj;->tX:Lcom/amazon/identity/auth/device/lz;

    if-eqz v0, :cond_3

    .line 149
    iget-object v1, p0, Lcom/amazon/identity/auth/device/lj;->rD:Lcom/amazon/identity/auth/device/ma;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/lz;->getString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "softwareVersion"

    invoke-virtual {v1, v2, v0}, Lcom/amazon/identity/auth/device/ma;->aw(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_3
    iget-object v0, p0, Lcom/amazon/identity/auth/device/lj;->bk:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 154
    iget-object v1, p0, Lcom/amazon/identity/auth/device/lj;->rD:Lcom/amazon/identity/auth/device/ma;

    const-string/jumbo v2, "softwareComponentId"

    invoke-virtual {v1, v2, v0}, Lcom/amazon/identity/auth/device/ma;->aw(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_4
    iget-object v0, p0, Lcom/amazon/identity/auth/device/lj;->rD:Lcom/amazon/identity/auth/device/ma;

    const-string v1, "Content-Type"

    const-string/jumbo v2, "text/xml"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/identity/auth/device/ma;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/amazon/identity/auth/device/lj;->tf:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 163
    new-instance v0, Lcom/amazon/identity/auth/device/mf;

    new-array v2, v1, [Lcom/amazon/identity/auth/device/mg;

    const-string/jumbo v3, "request"

    invoke-direct {v0, v3, v2}, Lcom/amazon/identity/auth/device/mf;-><init>(Ljava/lang/String;[Lcom/amazon/identity/auth/device/mg;)V

    .line 164
    new-instance v2, Lcom/amazon/identity/auth/device/me;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/lj;->tf:Ljava/util/Map;

    invoke-direct {v2, v3}, Lcom/amazon/identity/auth/device/me;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v2}, Lcom/amazon/identity/auth/device/mf;->a(Lcom/amazon/identity/auth/device/mg;)Z

    .line 165
    iget-object v2, p0, Lcom/amazon/identity/auth/device/lj;->rD:Lcom/amazon/identity/auth/device/ma;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/mf;->iJ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/amazon/identity/auth/device/ma;->eJ(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/amazon/identity/auth/device/lj;->rD:Lcom/amazon/identity/auth/device/ma;

    sget-object v2, Lcom/amazon/identity/kcpsdk/common/HttpVerb;->HttpVerbPost:Lcom/amazon/identity/kcpsdk/common/HttpVerb;

    invoke-virtual {v0, v2}, Lcom/amazon/identity/auth/device/ma;->a(Lcom/amazon/identity/kcpsdk/common/HttpVerb;)V

    .line 173
    :cond_5
    iget-object v0, p0, Lcom/amazon/identity/auth/device/lj;->rD:Lcom/amazon/identity/auth/device/ma;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/amazon/identity/auth/device/ma;->m(Z)V

    .line 175
    sget-object v0, Lcom/amazon/identity/auth/device/lj;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/lj;->mReason:Ljava/lang/String;

    aput-object v3, v2, v1

    const-string v1, "getWebRequest: constructed a web request with:\nReason: %s"

    invoke-static {v0, v1, v2}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    iget-object v0, p0, Lcom/amazon/identity/auth/device/lj;->rD:Lcom/amazon/identity/auth/device/ma;

    return-object v0
.end method

.method public isValid()Z
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/amazon/identity/auth/device/lj;->rU:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/lx;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    sget-object v0, Lcom/amazon/identity/auth/device/lj;->TAG:Ljava/lang/String;

    const-string v1, "isValid: returning false because a valid url has not been set."

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
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

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/lj;->tf:Ljava/util/Map;

    return-void
.end method
