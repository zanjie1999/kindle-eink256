.class Lcom/amazon/identity/auth/accounts/SessionUserChangedToAccountForPackageChangedAdpater$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/accounts/SessionUserChangedToAccountForPackageChangedAdpater;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cB:Lcom/amazon/identity/auth/accounts/SessionUserChangedToAccountForPackageChangedAdpater;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/accounts/SessionUserChangedToAccountForPackageChangedAdpater;Landroid/content/Context;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/amazon/identity/auth/accounts/SessionUserChangedToAccountForPackageChangedAdpater$1;->cB:Lcom/amazon/identity/auth/accounts/SessionUserChangedToAccountForPackageChangedAdpater;

    iput-object p2, p0, Lcom/amazon/identity/auth/accounts/SessionUserChangedToAccountForPackageChangedAdpater$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 37
    invoke-static {}, Lcom/amazon/identity/auth/accounts/SessionUserChangedToAccountForPackageChangedAdpater;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/amazon/identity/auth/accounts/SessionUserChangedToAccountForPackageChangedAdpater$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object v0

    const-string/jumbo v1, "sso_platform"

    .line 41
    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/identity/auth/device/ds;

    .line 43
    invoke-static {v1}, Lcom/amazon/identity/auth/accounts/SessionUserChangedToAccountForPackageChangedAdpater;->a(Lcom/amazon/identity/auth/device/ds;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 45
    invoke-static {}, Lcom/amazon/identity/auth/accounts/SessionUserChangedToAccountForPackageChangedAdpater;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    return-void

    .line 49
    :cond_0
    invoke-static {v0}, Lcom/amazon/identity/auth/device/l;->c(Landroid/content/Context;)V

    return-void
.end method
