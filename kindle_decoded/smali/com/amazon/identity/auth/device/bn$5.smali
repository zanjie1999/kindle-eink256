.class final Lcom/amazon/identity/auth/device/bn$5;
.super Lcom/amazon/identity/auth/device/bl;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/bn;->a(Landroid/content/Context;Lcom/amazon/identity/auth/device/bl;)Lcom/amazon/identity/auth/device/bl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic hp:Lcom/amazon/identity/auth/device/bl;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/bl;)V
    .locals 0

    .line 800
    iput-object p1, p0, Lcom/amazon/identity/auth/device/bn$5;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/bn$5;->hp:Lcom/amazon/identity/auth/device/bl;

    invoke-direct {p0}, Lcom/amazon/identity/auth/device/bl;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/os/Bundle;)V
    .locals 3

    .line 816
    invoke-super {p0, p1}, Lcom/amazon/identity/auth/device/bl;->onError(Landroid/os/Bundle;)V

    const-string v0, "com.amazon.map.error.errorCode"

    .line 818
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->ACCOUNT_ALREADY_REGISTERED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/api/MAPError;->getErrorCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 822
    invoke-static {}, Lcom/amazon/identity/auth/device/bn;->ao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cleaning CBL code for ACCOUNT_ALREADY_REGISTERED error."

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    new-instance v0, Lcom/amazon/identity/auth/device/gm;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/bn$5;->val$context:Landroid/content/Context;

    const-string v2, "cbl_storage"

    invoke-direct {v0, v1, v2}, Lcom/amazon/identity/auth/device/gm;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/gm;->fG()Z

    .line 826
    :cond_0
    invoke-static {}, Lcom/amazon/identity/auth/device/bn;->ao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Register with link code was not successful."

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    iget-object v0, p0, Lcom/amazon/identity/auth/device/bn$5;->hp:Lcom/amazon/identity/auth/device/bl;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/bl;->onError(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 3

    .line 804
    invoke-super {p0, p1}, Lcom/amazon/identity/auth/device/bl;->onSuccess(Landroid/os/Bundle;)V

    .line 807
    invoke-static {}, Lcom/amazon/identity/auth/device/bn;->ao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Register with link code was successful. Clearing the cbl data in MAP"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    new-instance v0, Lcom/amazon/identity/auth/device/gm;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/bn$5;->val$context:Landroid/content/Context;

    const-string v2, "cbl_storage"

    invoke-direct {v0, v1, v2}, Lcom/amazon/identity/auth/device/gm;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 809
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/gm;->fG()Z

    .line 810
    iget-object v0, p0, Lcom/amazon/identity/auth/device/bn$5;->hp:Lcom/amazon/identity/auth/device/bl;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/bl;->onSuccess(Landroid/os/Bundle;)V

    return-void
.end method
