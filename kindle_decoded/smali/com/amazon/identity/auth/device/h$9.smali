.class Lcom/amazon/identity/auth/device/h$9;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/h;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/ij;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic H:Ljava/lang/String;

.field final synthetic L:Lcom/amazon/identity/auth/device/h;

.field final synthetic V:Lcom/amazon/identity/auth/device/ij;

.field final synthetic W:Lcom/amazon/identity/auth/device/bl;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/h;Ljava/lang/String;Lcom/amazon/identity/auth/device/ij;Lcom/amazon/identity/auth/device/bl;)V
    .locals 0

    .line 712
    iput-object p1, p0, Lcom/amazon/identity/auth/device/h$9;->L:Lcom/amazon/identity/auth/device/h;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/h$9;->H:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/h$9;->V:Lcom/amazon/identity/auth/device/ij;

    iput-object p4, p0, Lcom/amazon/identity/auth/device/h$9;->W:Lcom/amazon/identity/auth/device/bl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    .line 728
    iget-object v0, p0, Lcom/amazon/identity/auth/device/h$9;->W:Lcom/amazon/identity/auth/device/bl;

    .line 731
    invoke-virtual {p3}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v3

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    .line 728
    invoke-static/range {v0 .. v5}, Lcom/amazon/identity/auth/device/m;->a(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 716
    iget-object p1, p0, Lcom/amazon/identity/auth/device/h$9;->L:Lcom/amazon/identity/auth/device/h;

    iget-object p2, p0, Lcom/amazon/identity/auth/device/h$9;->H:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/h$9;->V:Lcom/amazon/identity/auth/device/ij;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ij;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0, p3}, Lcom/amazon/identity/auth/device/h;->a(Lcom/amazon/identity/auth/device/h;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 718
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 719
    iget-object p2, p0, Lcom/amazon/identity/auth/device/h$9;->L:Lcom/amazon/identity/auth/device/h;

    invoke-static {p2}, Lcom/amazon/identity/auth/device/h;->a(Lcom/amazon/identity/auth/device/h;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p2

    iget-object p3, p0, Lcom/amazon/identity/auth/device/h$9;->H:Ljava/lang/String;

    invoke-static {p2, p3, p1}, Lcom/amazon/identity/auth/device/hr;->c(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 720
    iget-object p2, p0, Lcom/amazon/identity/auth/device/h$9;->L:Lcom/amazon/identity/auth/device/h;

    invoke-static {p2}, Lcom/amazon/identity/auth/device/h;->b(Lcom/amazon/identity/auth/device/h;)Lcom/amazon/identity/auth/device/gc;

    move-result-object p2

    iget-object p3, p0, Lcom/amazon/identity/auth/device/h$9;->H:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/h$9;->V:Lcom/amazon/identity/auth/device/ij;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ij;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lcom/amazon/identity/auth/device/gc;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "authtoken"

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    iget-object p2, p0, Lcom/amazon/identity/auth/device/h$9;->W:Lcom/amazon/identity/auth/device/bl;

    invoke-virtual {p2, p1}, Lcom/amazon/identity/auth/device/bl;->onSuccess(Landroid/os/Bundle;)V

    return-void
.end method

.method public t(Ljava/lang/String;)V
    .locals 1

    .line 740
    iget-object v0, p0, Lcom/amazon/identity/auth/device/h$9;->W:Lcom/amazon/identity/auth/device/bl;

    invoke-static {v0, p1}, Lcom/amazon/identity/auth/device/m;->a(Lcom/amazon/identity/auth/device/api/Callback;Ljava/lang/String;)V

    return-void
.end method
