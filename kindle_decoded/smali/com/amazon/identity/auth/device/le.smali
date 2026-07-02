.class public Lcom/amazon/identity/auth/device/le;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.le"


# instance fields
.field private rD:Lcom/amazon/identity/auth/device/ma;

.field private sC:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ew(Ljava/lang/String;)Z
    .locals 1

    .line 25
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    sget-object p1, Lcom/amazon/identity/auth/device/le;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "setDeviceName: device name was invalid. Cannot be set."

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 31
    :cond_0
    iput-object p1, p0, Lcom/amazon/identity/auth/device/le;->sC:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method public hq()Lcom/amazon/identity/auth/device/ma;
    .locals 3

    .line 37
    iget-object v0, p0, Lcom/amazon/identity/auth/device/le;->sC:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 39
    sget-object v0, Lcom/amazon/identity/auth/device/le;->TAG:Ljava/lang/String;

    const-string v1, "getWebRequest: Cannot construct a WebRequest because the RenameDeviceRequest is invalid. (See previous warnings from RenameDeviceRequest::isValidDeviceName for details.)"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/le;->rD:Lcom/amazon/identity/auth/device/ma;

    if-eqz v0, :cond_1

    return-object v0

    .line 49
    :cond_1
    new-instance v0, Lcom/amazon/identity/auth/device/ma;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/ma;-><init>()V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/le;->rD:Lcom/amazon/identity/auth/device/ma;

    .line 51
    sget-object v1, Lcom/amazon/identity/kcpsdk/common/WebProtocol;->WebProtocolHttps:Lcom/amazon/identity/kcpsdk/common/WebProtocol;

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/ma;->a(Lcom/amazon/identity/kcpsdk/common/WebProtocol;)V

    .line 52
    iget-object v0, p0, Lcom/amazon/identity/auth/device/le;->rD:Lcom/amazon/identity/auth/device/ma;

    invoke-static {}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->cc()Lcom/amazon/identity/auth/device/env/EnvironmentUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->cl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/ma;->setHost(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/amazon/identity/auth/device/le;->rD:Lcom/amazon/identity/auth/device/ma;

    const-string v1, "/FirsProxy/renameFiona"

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/ma;->setPath(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/amazon/identity/auth/device/le;->rD:Lcom/amazon/identity/auth/device/ma;

    sget-object v1, Lcom/amazon/identity/kcpsdk/common/HttpVerb;->HttpVerbGet:Lcom/amazon/identity/kcpsdk/common/HttpVerb;

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/ma;->a(Lcom/amazon/identity/kcpsdk/common/HttpVerb;)V

    .line 55
    iget-object v0, p0, Lcom/amazon/identity/auth/device/le;->rD:Lcom/amazon/identity/auth/device/ma;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/le;->sC:Ljava/lang/String;

    const-string/jumbo v2, "nickname"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/identity/auth/device/ma;->aw(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/amazon/identity/auth/device/le;->rD:Lcom/amazon/identity/auth/device/ma;

    const-string v1, "Content-Type"

    const-string/jumbo v2, "text/xml"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/identity/auth/device/ma;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/amazon/identity/auth/device/le;->rD:Lcom/amazon/identity/auth/device/ma;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/ma;->m(Z)V

    .line 59
    sget-object v0, Lcom/amazon/identity/auth/device/le;->TAG:Ljava/lang/String;

    const-string v2, "getWebRequest: getWebRequest: constructed a web request."

    invoke-static {v0, v2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 60
    iget-object v2, p0, Lcom/amazon/identity/auth/device/le;->sC:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "Device new name: %s"

    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/il;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    iget-object v0, p0, Lcom/amazon/identity/auth/device/le;->rD:Lcom/amazon/identity/auth/device/ma;

    return-object v0
.end method
