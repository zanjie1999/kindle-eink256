.class Lcom/amazon/identity/auth/device/bn$2;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/bn;->e(Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic H:Ljava/lang/String;

.field final synthetic N:Lcom/amazon/identity/auth/device/ej;

.field final synthetic fl:Ljava/lang/String;

.field final synthetic hj:Ljava/lang/String;

.field final synthetic hk:Landroid/os/Bundle;

.field final synthetic hl:Lcom/amazon/identity/auth/device/bn;

.field final synthetic hm:J


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/bn;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;Ljava/lang/String;JLandroid/os/Bundle;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/amazon/identity/auth/device/bn$2;->hl:Lcom/amazon/identity/auth/device/bn;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/bn$2;->H:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/bn$2;->fl:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/identity/auth/device/bn$2;->N:Lcom/amazon/identity/auth/device/ej;

    iput-object p5, p0, Lcom/amazon/identity/auth/device/bn$2;->hj:Ljava/lang/String;

    iput-wide p6, p0, Lcom/amazon/identity/auth/device/bn$2;->hm:J

    iput-object p8, p0, Lcom/amazon/identity/auth/device/bn$2;->hk:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/amazon/identity/auth/device/api/Callback;)Landroid/os/Bundle;
    .locals 11

    .line 286
    iget-object v0, p0, Lcom/amazon/identity/auth/device/bn$2;->hl:Lcom/amazon/identity/auth/device/bn;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/bn;->b(Lcom/amazon/identity/auth/device/bn;)Lcom/amazon/identity/auth/device/f;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/identity/auth/device/bn$2;->H:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/amazon/identity/auth/device/f;->isAccountRegistered(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    const-string v2, "The directedID passed in the generatePreAuthorizedLinkCode API is not registered on this device"

    .line 288
    invoke-static {v0, v2, p1}, Lcom/amazon/identity/auth/device/bn;->a(ILjava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;)V

    return-object v1

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/bn$2;->fl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    invoke-static {}, Lcom/amazon/identity/auth/device/bn;->ao()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Generating refresh token"

    invoke-static {v0, v2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/amazon/identity/auth/device/bn$2;->hl:Lcom/amazon/identity/auth/device/bn;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/bn$2;->H:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/amazon/identity/auth/device/bn;->a(Lcom/amazon/identity/auth/device/bn;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 303
    :cond_1
    invoke-static {}, Lcom/amazon/identity/auth/device/bn;->ao()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Generating refresh token for actor id"

    invoke-static {v0, v2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/amazon/identity/auth/device/bn$2;->hl:Lcom/amazon/identity/auth/device/bn;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/bn$2;->H:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/bn$2;->fl:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/identity/auth/device/bn$2;->N:Lcom/amazon/identity/auth/device/ej;

    invoke-static {v0, v2, v3, v4}, Lcom/amazon/identity/auth/device/bn;->a(Lcom/amazon/identity/auth/device/bn;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v5, v0

    .line 307
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    const-string v2, "Could not get the auth token for the customer to authorize the link code"

    .line 309
    invoke-static {v0, v2, p1}, Lcom/amazon/identity/auth/device/bn;->a(ILjava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;)V

    return-object v1

    .line 315
    :cond_2
    iget-object v2, p0, Lcom/amazon/identity/auth/device/bn$2;->hl:Lcom/amazon/identity/auth/device/bn;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/bn$2;->H:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/identity/auth/device/bn$2;->hj:Ljava/lang/String;

    iget-wide v6, p0, Lcom/amazon/identity/auth/device/bn$2;->hm:J

    iget-object v8, p0, Lcom/amazon/identity/auth/device/bn$2;->fl:Ljava/lang/String;

    iget-object v10, p0, Lcom/amazon/identity/auth/device/bn$2;->N:Lcom/amazon/identity/auth/device/ej;

    move-object v9, p1

    invoke-static/range {v2 .. v10}, Lcom/amazon/identity/auth/device/bn;->a(Lcom/amazon/identity/auth/device/bn;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V

    return-object v1
.end method
