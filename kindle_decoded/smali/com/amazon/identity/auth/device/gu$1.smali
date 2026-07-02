.class Lcom/amazon/identity/auth/device/gu$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/gu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic H:Ljava/lang/String;

.field final synthetic N:Lcom/amazon/identity/auth/device/ej;

.field final synthetic W:Lcom/amazon/identity/auth/device/bl;

.field final synthetic nU:Ljava/lang/String;

.field final synthetic oV:Landroid/accounts/Account;

.field final synthetic oW:Lcom/amazon/identity/auth/device/gu;

.field final synthetic val$options:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/gu;Ljava/lang/String;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/bl;Lcom/amazon/identity/auth/device/ej;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/amazon/identity/auth/device/gu$1;->oW:Lcom/amazon/identity/auth/device/gu;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/gu$1;->nU:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/gu$1;->oV:Landroid/accounts/Account;

    iput-object p4, p0, Lcom/amazon/identity/auth/device/gu$1;->H:Ljava/lang/String;

    iput-object p5, p0, Lcom/amazon/identity/auth/device/gu$1;->val$options:Landroid/os/Bundle;

    iput-object p6, p0, Lcom/amazon/identity/auth/device/gu$1;->W:Lcom/amazon/identity/auth/device/bl;

    iput-object p7, p0, Lcom/amazon/identity/auth/device/gu$1;->N:Lcom/amazon/identity/auth/device/ej;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 181
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gu$1;->oW:Lcom/amazon/identity/auth/device/gu;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/gu$1;->nU:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/gu$1;->oV:Landroid/accounts/Account;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/gu$1;->H:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/identity/auth/device/gu$1;->val$options:Landroid/os/Bundle;

    iget-object v5, p0, Lcom/amazon/identity/auth/device/gu$1;->W:Lcom/amazon/identity/auth/device/bl;

    iget-object v6, p0, Lcom/amazon/identity/auth/device/gu$1;->N:Lcom/amazon/identity/auth/device/ej;

    invoke-static/range {v0 .. v6}, Lcom/amazon/identity/auth/device/gu;->a(Lcom/amazon/identity/auth/device/gu;Ljava/lang/String;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/bl;Lcom/amazon/identity/auth/device/ej;)V

    return-void
.end method
