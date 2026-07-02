.class final Lcom/amazon/identity/auth/device/l$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/l;->a(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/ab;Lcom/amazon/identity/auth/device/z;Ljava/lang/String;ZLandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic H:Ljava/lang/String;

.field final synthetic aM:Lcom/amazon/identity/auth/device/ed;

.field final synthetic aN:Lcom/amazon/identity/auth/device/ab;

.field final synthetic aO:Lcom/amazon/identity/auth/device/z;

.field final synthetic aP:Ljava/lang/String;

.field final synthetic ag:Landroid/os/Bundle;

.field final synthetic ah:Z


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/ed;Ljava/lang/String;Lcom/amazon/identity/auth/device/ab;Lcom/amazon/identity/auth/device/z;ZLandroid/os/Bundle;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/amazon/identity/auth/device/l$1;->aM:Lcom/amazon/identity/auth/device/ed;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/l$1;->H:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/l$1;->aN:Lcom/amazon/identity/auth/device/ab;

    iput-object p4, p0, Lcom/amazon/identity/auth/device/l$1;->aO:Lcom/amazon/identity/auth/device/z;

    iput-boolean p5, p0, Lcom/amazon/identity/auth/device/l$1;->ah:Z

    iput-object p6, p0, Lcom/amazon/identity/auth/device/l$1;->ag:Landroid/os/Bundle;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/amazon/identity/auth/device/l$1;->aP:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 51
    iget-object v0, p0, Lcom/amazon/identity/auth/device/l$1;->aM:Lcom/amazon/identity/auth/device/ed;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/l$1;->H:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/hr;->o(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v4

    .line 54
    iget-object v5, p0, Lcom/amazon/identity/auth/device/l$1;->aM:Lcom/amazon/identity/auth/device/ed;

    iget-object v6, p0, Lcom/amazon/identity/auth/device/l$1;->aN:Lcom/amazon/identity/auth/device/ab;

    iget-object v7, p0, Lcom/amazon/identity/auth/device/l$1;->aO:Lcom/amazon/identity/auth/device/z;

    iget-object v8, p0, Lcom/amazon/identity/auth/device/l$1;->H:Ljava/lang/String;

    iget-boolean v10, p0, Lcom/amazon/identity/auth/device/l$1;->ah:Z

    iget-object v11, p0, Lcom/amazon/identity/auth/device/l$1;->ag:Landroid/os/Bundle;

    const-string v9, "com.amazon.identity.auth.account.added.on.device"

    invoke-static/range {v5 .. v11}, Lcom/amazon/identity/auth/device/l;->a(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/ab;Lcom/amazon/identity/auth/device/z;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 62
    iget-object v0, p0, Lcom/amazon/identity/auth/device/l$1;->aN:Lcom/amazon/identity/auth/device/ab;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/l$1;->H:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/ab;->Q(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 64
    invoke-static {}, Lcom/amazon/identity/auth/device/l;->access$100()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/l$1;->aM:Lcom/amazon/identity/auth/device/ed;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "%s sends primary account add broadcast"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 65
    iget-object v2, p0, Lcom/amazon/identity/auth/device/l$1;->aO:Lcom/amazon/identity/auth/device/z;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/l$1;->H:Ljava/lang/String;

    iget-object v6, p0, Lcom/amazon/identity/auth/device/l$1;->aP:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/amazon/identity/auth/device/l$1;->ah:Z

    iget-object v8, p0, Lcom/amazon/identity/auth/device/l$1;->ag:Landroid/os/Bundle;

    const-string v5, "com.amazon.dcp.sso.action.account.added"

    invoke-static/range {v2 .. v8}, Lcom/amazon/identity/auth/device/l;->a(Lcom/amazon/identity/auth/device/z;Ljava/lang/String;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;)V

    return-void

    .line 75
    :cond_0
    invoke-static {}, Lcom/amazon/identity/auth/device/l;->access$100()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/l$1;->aM:Lcom/amazon/identity/auth/device/ed;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "%s sends secondary account add broadcast"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 76
    iget-object v2, p0, Lcom/amazon/identity/auth/device/l$1;->aO:Lcom/amazon/identity/auth/device/z;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/l$1;->H:Ljava/lang/String;

    iget-object v6, p0, Lcom/amazon/identity/auth/device/l$1;->aP:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/amazon/identity/auth/device/l$1;->ah:Z

    iget-object v8, p0, Lcom/amazon/identity/auth/device/l$1;->ag:Landroid/os/Bundle;

    const-string v5, "com.amazon.dcp.sso.action.secondary.account.added"

    invoke-static/range {v2 .. v8}, Lcom/amazon/identity/auth/device/l;->a(Lcom/amazon/identity/auth/device/z;Ljava/lang/String;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;)V

    return-void
.end method
