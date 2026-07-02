.class Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;->signCorpus([BLandroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic W:Lcom/amazon/identity/auth/device/bl;

.field final synthetic fR:[B

.field final synthetic gb:Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;[BLcom/amazon/identity/auth/device/bl;)V
    .locals 0

    .line 587
    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod$1;->gb:Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod$1;->fR:[B

    iput-object p3, p0, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod$1;->W:Lcom/amazon/identity/auth/device/bl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/os/Bundle;)V
    .locals 2

    .line 632
    sget-object v0, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;->TAG:Ljava/lang/String;

    const-string v1, "Unknown error during signCorpus execution."

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod$1;->W:Lcom/amazon/identity/auth/device/bl;

    invoke-static {v0, v1, p1}, Lcom/amazon/identity/auth/device/hm;->a(Lcom/amazon/identity/auth/device/bl;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 3

    const-string/jumbo v0, "value_key"

    .line 592
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 596
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod$1;->gb:Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod$1;->fR:[B

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;->a([B)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage$BackwardsCompatibleDataStorageException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 600
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage$BackwardsCompatibleDataStorageException;->eE()Lcom/amazon/identity/auth/device/fl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 603
    iget-object p1, p0, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod$1;->W:Lcom/amazon/identity/auth/device/bl;

    .line 606
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/fl;->eC()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "The account db is corrupted"

    .line 603
    invoke-static {p1, v1, v0}, Lcom/amazon/identity/auth/device/hm;->a(Lcom/amazon/identity/auth/device/bl;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_2

    if-nez v0, :cond_1

    goto :goto_1

    .line 619
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "adp_signature"

    .line 620
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "adp_token"

    .line 622
    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    iget-object p1, p0, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod$1;->W:Lcom/amazon/identity/auth/device/bl;

    invoke-virtual {p1, v1}, Lcom/amazon/identity/auth/device/bl;->onSuccess(Landroid/os/Bundle;)V

    return-void

    .line 613
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod$1;->W:Lcom/amazon/identity/auth/device/bl;

    const/4 v0, 0x2

    const-string v1, "The account is not valid or no longer registered."

    invoke-static {p1, v0, v1}, Lcom/amazon/identity/auth/device/hm;->a(Lcom/amazon/identity/auth/device/bl;ILjava/lang/String;)V

    return-void
.end method
