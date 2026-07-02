.class public Lcom/amazon/identity/auth/device/kg;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.kg"


# instance fields
.field private bQ:Landroid/os/Bundle;

.field private rD:Lcom/amazon/identity/auth/device/ma;

.field private rW:Z

.field private rX:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public O(Landroid/os/Bundle;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/amazon/identity/auth/device/kg;->bQ:Landroid/os/Bundle;

    return-void
.end method

.method public hp()V
    .locals 1

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/amazon/identity/auth/device/kg;->rW:Z

    return-void
.end method

.method public hq()Lcom/amazon/identity/auth/device/ma;
    .locals 7

    .line 42
    iget-object v0, p0, Lcom/amazon/identity/auth/device/kg;->rD:Lcom/amazon/identity/auth/device/ma;

    if-eqz v0, :cond_0

    return-object v0

    .line 47
    :cond_0
    new-instance v0, Lcom/amazon/identity/auth/device/ma;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/ma;-><init>()V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/kg;->rD:Lcom/amazon/identity/auth/device/ma;

    .line 49
    sget-object v1, Lcom/amazon/identity/kcpsdk/common/WebProtocol;->WebProtocolHttps:Lcom/amazon/identity/kcpsdk/common/WebProtocol;

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/ma;->a(Lcom/amazon/identity/kcpsdk/common/WebProtocol;)V

    .line 50
    iget-object v0, p0, Lcom/amazon/identity/auth/device/kg;->rD:Lcom/amazon/identity/auth/device/ma;

    invoke-static {}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->cc()Lcom/amazon/identity/auth/device/env/EnvironmentUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->cl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/ma;->setHost(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/amazon/identity/auth/device/kg;->rD:Lcom/amazon/identity/auth/device/ma;

    const-string v1, "/FirsProxy/disownFiona"

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/ma;->setPath(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/amazon/identity/auth/device/kg;->rD:Lcom/amazon/identity/auth/device/ma;

    sget-object v1, Lcom/amazon/identity/kcpsdk/common/HttpVerb;->HttpVerbGet:Lcom/amazon/identity/kcpsdk/common/HttpVerb;

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/ma;->a(Lcom/amazon/identity/kcpsdk/common/HttpVerb;)V

    .line 54
    iget-boolean v0, p0, Lcom/amazon/identity/auth/device/kg;->rW:Z

    const-string/jumbo v1, "true"

    const-string v2, "false"

    const-string v3, "contentDeleted"

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/amazon/identity/auth/device/kg;->rD:Lcom/amazon/identity/auth/device/ma;

    invoke-virtual {v0, v3, v1}, Lcom/amazon/identity/auth/device/ma;->aw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/amazon/identity/auth/device/kg;->rD:Lcom/amazon/identity/auth/device/ma;

    invoke-virtual {v0, v3, v2}, Lcom/amazon/identity/auth/device/ma;->aw(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :goto_0
    iget-boolean v0, p0, Lcom/amazon/identity/auth/device/kg;->rX:Z

    const-string v3, "deregisterExisting"

    if-eqz v0, :cond_2

    .line 65
    iget-object v0, p0, Lcom/amazon/identity/auth/device/kg;->rD:Lcom/amazon/identity/auth/device/ma;

    invoke-virtual {v0, v3, v1}, Lcom/amazon/identity/auth/device/ma;->aw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 69
    :cond_2
    iget-object v0, p0, Lcom/amazon/identity/auth/device/kg;->rD:Lcom/amazon/identity/auth/device/ma;

    invoke-virtual {v0, v3, v2}, Lcom/amazon/identity/auth/device/ma;->aw(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :goto_1
    iget-object v0, p0, Lcom/amazon/identity/auth/device/kg;->bQ:Landroid/os/Bundle;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    const-string v3, "deregistration_metadata"

    .line 74
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 77
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 80
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 83
    iget-object v6, p0, Lcom/amazon/identity/auth/device/kg;->rD:Lcom/amazon/identity/auth/device/ma;

    invoke-virtual {v6, v4, v5}, Lcom/amazon/identity/auth/device/ma;->aw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 87
    :cond_3
    sget-object v5, Lcom/amazon/identity/auth/device/kg;->TAG:Ljava/lang/String;

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v4, v6, v1

    const-string v4, "Not setting the value of key %s to the deregistration request as the type is unsupported."

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 93
    :cond_4
    sget-object v0, Lcom/amazon/identity/auth/device/kg;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 97
    :cond_5
    iget-object v0, p0, Lcom/amazon/identity/auth/device/kg;->rD:Lcom/amazon/identity/auth/device/ma;

    const-string v3, "Content-Type"

    const-string/jumbo v4, "text/xml"

    invoke-virtual {v0, v3, v4}, Lcom/amazon/identity/auth/device/ma;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/amazon/identity/auth/device/kg;->rD:Lcom/amazon/identity/auth/device/ma;

    invoke-virtual {v0, v2}, Lcom/amazon/identity/auth/device/ma;->m(Z)V

    .line 101
    sget-object v0, Lcom/amazon/identity/auth/device/kg;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/amazon/identity/auth/device/kg;->rW:Z

    if-eqz v3, :cond_6

    const-string v3, "Yes"

    goto :goto_3

    :cond_6
    const-string v3, "No"

    :goto_3
    aput-object v3, v2, v1

    const-string v1, "DeregisterDeviceRequest: getWebRequest: constructed a web request with:\nContent Deleted: %s"

    invoke-static {v0, v1, v2}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    iget-object v0, p0, Lcom/amazon/identity/auth/device/kg;->rD:Lcom/amazon/identity/auth/device/ma;

    return-object v0
.end method

.method public j(Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/amazon/identity/auth/device/kg;->rX:Z

    return-void
.end method
