.class Lcom/amazon/identity/auth/device/i$1;
.super Lcom/amazon/identity/auth/device/i$b;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/i$a;Lcom/amazon/identity/auth/device/ej;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic H:Ljava/lang/String;

.field final synthetic ax:Lcom/amazon/identity/auth/device/i;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/i;Lcom/amazon/identity/auth/device/i$a;Ljava/lang/String;)V
    .locals 0

    .line 2218
    iput-object p1, p0, Lcom/amazon/identity/auth/device/i$1;->ax:Lcom/amazon/identity/auth/device/i;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/i$1;->H:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/amazon/identity/auth/device/i$b;-><init>(Lcom/amazon/identity/auth/device/i$a;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;)V
    .locals 0

    return-void
.end method

.method protected b(Lcom/amazon/identity/auth/device/ky;)Lcom/amazon/identity/auth/device/i$c;
    .locals 4

    .line 2222
    new-instance v0, Lcom/amazon/identity/auth/device/e;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/e;-><init>()V

    .line 2224
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ky;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/e;->b(Ljava/lang/String;)V

    .line 2225
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ky;->hQ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/e;->c(Ljava/lang/String;)V

    .line 2226
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ky;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/e;->d(Ljava/lang/String;)V

    .line 2227
    iget-object v1, p0, Lcom/amazon/identity/auth/device/i$1;->ax:Lcom/amazon/identity/auth/device/i;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/i;->a(Lcom/amazon/identity/auth/device/i;)Lcom/amazon/identity/auth/device/ed;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/identity/auth/device/i$1;->H:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ky;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/amazon/identity/auth/device/ax;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 2229
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ky;->getEmail()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2232
    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/e;->o(Ljava/lang/String;)V

    goto :goto_0

    .line 2236
    :cond_0
    invoke-static {}, Lcom/amazon/identity/auth/device/i;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Was not able to updated device email since it was not returned"

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 2238
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ky;->hN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/e;->e(Ljava/lang/String;)V

    .line 2239
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ky;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/e;->f(Ljava/lang/String;)V

    .line 2241
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ky;->getDirectedId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/e;->setDirectedId(Ljava/lang/String;)V

    .line 2243
    new-instance v1, Lcom/amazon/identity/auth/device/gb;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ky;->hP()Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/amazon/identity/auth/device/gb;-><init>(Ljava/util/List;)V

    .line 2244
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/gb;->fb()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/e;->g(Ljava/lang/String;)V

    .line 2245
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/gb;->fc()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/e;->h(Ljava/lang/String;)V

    .line 2247
    new-instance p1, Lcom/amazon/identity/auth/device/i$c;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/e;->b()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/amazon/identity/auth/device/i$c;-><init>(Landroid/os/Bundle;)V

    return-object p1
.end method

.method protected i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
