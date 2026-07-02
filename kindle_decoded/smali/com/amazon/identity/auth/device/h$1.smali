.class Lcom/amazon/identity/auth/device/h$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/x$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/h;->b(Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;Landroid/os/Bundle;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic G:Z

.field final synthetic H:Ljava/lang/String;

.field final synthetic I:Landroid/accounts/Account;

.field final synthetic J:Ljava/util/Set;

.field final synthetic K:Landroid/os/Bundle;

.field final synthetic L:Lcom/amazon/identity/auth/device/h;

.field final synthetic k:Lcom/amazon/identity/auth/device/api/Callback;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/h;ZLjava/lang/String;Landroid/accounts/Account;Ljava/util/Set;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)V
    .locals 0

    .line 1915
    iput-object p1, p0, Lcom/amazon/identity/auth/device/h$1;->L:Lcom/amazon/identity/auth/device/h;

    iput-boolean p2, p0, Lcom/amazon/identity/auth/device/h$1;->G:Z

    iput-object p3, p0, Lcom/amazon/identity/auth/device/h$1;->H:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/identity/auth/device/h$1;->I:Landroid/accounts/Account;

    iput-object p5, p0, Lcom/amazon/identity/auth/device/h$1;->J:Ljava/util/Set;

    iput-object p6, p0, Lcom/amazon/identity/auth/device/h$1;->K:Landroid/os/Bundle;

    iput-object p7, p0, Lcom/amazon/identity/auth/device/h$1;->k:Lcom/amazon/identity/auth/device/api/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 8

    const-string v0, "booleanResult"

    .line 1919
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1923
    invoke-static {}, Lcom/amazon/identity/auth/device/h;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Device deregistration success"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1927
    :cond_0
    invoke-static {}, Lcom/amazon/identity/auth/device/h;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Device deregistration failed"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    .line 1930
    :goto_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/h$1;->L:Lcom/amazon/identity/auth/device/h;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/h;->a(Lcom/amazon/identity/auth/device/h;)Lcom/amazon/identity/auth/device/ed;

    move-result-object v1

    iget-boolean v2, p0, Lcom/amazon/identity/auth/device/h$1;->G:Z

    iget-object v3, p0, Lcom/amazon/identity/auth/device/h$1;->H:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/identity/auth/device/h$1;->I:Landroid/accounts/Account;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/amazon/identity/auth/device/h$1;->J:Ljava/util/Set;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/h$1;->K:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    const-string v7, "com.amazon.dcp.sso.extra.client_event_context"

    .line 1936
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    move-object v7, v0

    .line 1930
    invoke-static/range {v1 .. v7}, Lcom/amazon/identity/auth/device/l;->a(Landroid/content/Context;ZLjava/lang/String;Landroid/accounts/Account;Ljava/lang/String;Ljava/util/Set;Landroid/os/Bundle;)V

    .line 1941
    iget-object v0, p0, Lcom/amazon/identity/auth/device/h$1;->L:Lcom/amazon/identity/auth/device/h;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/h;->a(Lcom/amazon/identity/auth/device/h;)Lcom/amazon/identity/auth/device/ed;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/identity/auth/device/framework/IsolatedModeSwitcher;->switchAppToSSOModeIfNecessary(Landroid/content/Context;)V

    .line 1955
    iget-object v0, p0, Lcom/amazon/identity/auth/device/h$1;->L:Lcom/amazon/identity/auth/device/h;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/h$1;->k:Lcom/amazon/identity/auth/device/api/Callback;

    invoke-static {v0, v1, p1}, Lcom/amazon/identity/auth/device/h;->a(Lcom/amazon/identity/auth/device/h;Lcom/amazon/identity/auth/device/api/Callback;Z)V

    return-void
.end method
