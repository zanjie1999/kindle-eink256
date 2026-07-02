.class Lcom/amazon/identity/auth/device/bn$4;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/bn;->f(Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic H:Ljava/lang/String;

.field final synthetic N:Lcom/amazon/identity/auth/device/ej;

.field final synthetic hj:Ljava/lang/String;

.field final synthetic hk:Landroid/os/Bundle;

.field final synthetic hl:Lcom/amazon/identity/auth/device/bn;

.field final synthetic ho:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/bn;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)V
    .locals 0

    .line 537
    iput-object p1, p0, Lcom/amazon/identity/auth/device/bn$4;->hl:Lcom/amazon/identity/auth/device/bn;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/bn$4;->H:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/bn$4;->hj:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/identity/auth/device/bn$4;->ho:Ljava/lang/String;

    iput-object p5, p0, Lcom/amazon/identity/auth/device/bn$4;->hk:Landroid/os/Bundle;

    iput-object p6, p0, Lcom/amazon/identity/auth/device/bn$4;->N:Lcom/amazon/identity/auth/device/ej;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/amazon/identity/auth/device/api/Callback;)Landroid/os/Bundle;
    .locals 10

    .line 542
    iget-object v0, p0, Lcom/amazon/identity/auth/device/bn$4;->hl:Lcom/amazon/identity/auth/device/bn;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/bn;->b(Lcom/amazon/identity/auth/device/bn;)Lcom/amazon/identity/auth/device/f;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/identity/auth/device/bn$4;->H:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/amazon/identity/auth/device/f;->isAccountRegistered(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    const-string v2, "The directedID passed in the authorizeLinkCode API is not registered on this device"

    .line 544
    invoke-static {v0, v2, p1}, Lcom/amazon/identity/auth/device/bn;->a(ILjava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;)V

    return-object v1

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/bn$4;->hl:Lcom/amazon/identity/auth/device/bn;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/bn$4;->H:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/amazon/identity/auth/device/bn;->a(Lcom/amazon/identity/auth/device/bn;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 552
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    const-string v2, "Could not get the auth token for the customer to authorize the link code"

    .line 554
    invoke-static {v0, v2, p1}, Lcom/amazon/identity/auth/device/bn;->a(ILjava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;)V

    return-object v1

    .line 560
    :cond_1
    iget-object v3, p0, Lcom/amazon/identity/auth/device/bn$4;->hl:Lcom/amazon/identity/auth/device/bn;

    iget-object v4, p0, Lcom/amazon/identity/auth/device/bn$4;->H:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazon/identity/auth/device/bn$4;->hj:Ljava/lang/String;

    iget-object v6, p0, Lcom/amazon/identity/auth/device/bn$4;->ho:Ljava/lang/String;

    iget-object v9, p0, Lcom/amazon/identity/auth/device/bn$4;->N:Lcom/amazon/identity/auth/device/ej;

    move-object v8, p1

    invoke-static/range {v3 .. v9}, Lcom/amazon/identity/auth/device/bn;->a(Lcom/amazon/identity/auth/device/bn;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V

    return-object v1
.end method
