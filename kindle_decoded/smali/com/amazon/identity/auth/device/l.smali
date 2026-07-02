.class public final Lcom/amazon/identity/auth/device/l;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "l"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;)Landroid/content/Intent;
    .locals 1

    .line 136
    invoke-static {p2}, Lcom/amazon/identity/auth/device/iw;->dx(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    if-eqz p3, :cond_0

    .line 140
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    if-eqz p1, :cond_1

    .line 144
    iget-object p3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v0, "com.amazon.dcp.sso.extra.account.name"

    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string p3, "com.amazon.dcp.sso.extra.account.type"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const-string p1, "com.amazon.dcp.sso.extra.account.directed_id"

    .line 147
    invoke-virtual {p2, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p4, :cond_2

    const-string p0, "com.amazon.identity.auth.device.accountManager.newaccount"

    .line 151
    invoke-virtual {p2, p0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2
    if-eqz p5, :cond_3

    const-string p0, "com.amazon.dcp.sso.extra.client_event_context"

    .line 156
    invoke-virtual {p2, p0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_3
    return-object p2
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Landroid/os/Bundle;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v5, p6

    .line 215
    invoke-static/range {v0 .. v5}, Lcom/amazon/identity/auth/device/l;->a(Ljava/lang/String;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p2

    .line 217
    invoke-static {p0}, Lcom/amazon/identity/auth/device/aa;->f(Landroid/content/Context;)Lcom/amazon/identity/auth/device/z;

    move-result-object p0

    const-string p3, "com.amazon.dcp.sso.permission.account.changed"

    invoke-interface {p0, p1, p5, p2, p3}, Lcom/amazon/identity/auth/device/z;->a(Ljava/lang/String;Ljava/util/Set;Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;ZLjava/lang/String;Landroid/accounts/Account;Ljava/lang/String;Ljava/util/Set;Landroid/os/Bundle;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/lang/String;",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 97
    new-instance v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    invoke-direct {v1, p0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/amazon/identity/auth/device/fk;->i(Landroid/content/Context;Ljava/lang/String;)V

    const-string v4, "com.amazon.identity.auth.account.removed.on.device"

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v7, p6

    .line 1240
    invoke-static/range {v2 .. v7}, Lcom/amazon/identity/auth/device/l;->a(Ljava/lang/String;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    .line 1241
    invoke-static {v1, p5}, Lcom/amazon/identity/auth/device/l;->a(Landroid/content/Intent;Ljava/util/Set;)V

    .line 1242
    invoke-static {p0}, Lcom/amazon/identity/auth/device/aa;->f(Landroid/content/Context;)Lcom/amazon/identity/auth/device/z;

    move-result-object v2

    const-string v3, "com.amazon.identity.permission.MULTIPLE_PROFILE_AWARE"

    .line 1243
    invoke-interface {v2, v1, v3}, Lcom/amazon/identity/auth/device/z;->a(Landroid/content/Intent;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v3, "com.amazon.dcp.sso.action.account.removed"

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 108
    invoke-static/range {v0 .. v6}, Lcom/amazon/identity/auth/device/l;->a(Landroid/content/Context;Ljava/lang/String;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Landroid/os/Bundle;)V

    return-void

    :cond_0
    const-string v3, "com.amazon.dcp.sso.action.secondary.account.removed"

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 118
    invoke-static/range {v0 .. v6}, Lcom/amazon/identity/auth/device/l;->a(Landroid/content/Context;Ljava/lang/String;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Landroid/os/Bundle;)V

    return-void
.end method

.method private static a(Landroid/content/Intent;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p1, "com.amazon.identity.auth.extra.account.profiles"

    .line 252
    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/ab;Lcom/amazon/identity/auth/device/z;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 6

    .line 2196
    invoke-virtual {p1, p0, p3}, Lcom/amazon/identity/auth/device/ab;->a(Lcom/amazon/identity/auth/device/ed;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p3

    move-object v2, p4

    move v4, p5

    move-object v5, p6

    .line 2198
    invoke-static/range {v0 .. v5}, Lcom/amazon/identity/auth/device/l;->a(Ljava/lang/String;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    .line 2200
    invoke-static {p1, p0}, Lcom/amazon/identity/auth/device/l;->a(Landroid/content/Intent;Ljava/util/Set;)V

    const-string p0, "com.amazon.identity.permission.MULTIPLE_PROFILE_AWARE"

    .line 2201
    invoke-interface {p2, p1, p0}, Lcom/amazon/identity/auth/device/z;->a(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/ab;Lcom/amazon/identity/auth/device/z;Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 8

    .line 45
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->getAccount()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/fk;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 46
    new-instance v0, Lcom/amazon/identity/auth/device/l$1;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/amazon/identity/auth/device/l$1;-><init>(Lcom/amazon/identity/auth/device/ed;Ljava/lang/String;Lcom/amazon/identity/auth/device/ab;Lcom/amazon/identity/auth/device/z;ZLandroid/os/Bundle;)V

    invoke-static {v0}, Lcom/amazon/identity/auth/device/jf;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/z;Ljava/lang/String;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 0

    .line 3171
    invoke-static/range {p1 .. p6}, Lcom/amazon/identity/auth/device/l;->a(Ljava/lang/String;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p2

    const-string p3, "com.amazon.dcp.sso.permission.account.changed"

    .line 3173
    invoke-interface {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/z;->a(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Lcom/amazon/identity/auth/device/l;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 4

    .line 30
    sget-object v0, Lcom/amazon/identity/auth/device/l;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%s sends broadcast for account for package changed"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 31
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->getAccount()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/fk;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    invoke-static {p0}, Lcom/amazon/identity/auth/device/aa;->f(Landroid/content/Context;)Lcom/amazon/identity/auth/device/z;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.amazon.identity.action.ACCOUNT_FOR_PACKAGE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string v2, "com.amazon.dcp.sso.permission.account.changed"

    invoke-interface {p0, v1, v0, v2}, Lcom/amazon/identity/auth/device/z;->a(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method
