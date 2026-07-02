.class public Lcom/amazon/identity/auth/device/bootstrapSSO/BootstrapSSOService;
.super Landroid/app/Service;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final ha:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/amazon/identity/auth/device/bootstrapSSO/BootstrapSSOService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/bootstrapSSO/BootstrapSSOService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 29
    new-instance v0, Lcom/amazon/identity/auth/device/bootstrapSSO/BootstrapSSOService$1;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/bootstrapSSO/BootstrapSSOService$1;-><init>(Lcom/amazon/identity/auth/device/bootstrapSSO/BootstrapSSOService;)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/bootstrapSSO/BootstrapSSOService;->ha:Landroid/os/IBinder;

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 4

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v0, 0x0

    .line 117
    :try_start_0
    invoke-virtual {p1, p3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 121
    sget-object v2, Lcom/amazon/identity/auth/device/bootstrapSSO/BootstrapSSOService;->TAG:Ljava/lang/String;

    const-string v3, "PackageManager call failed; retrying"

    invoke-static {v2, v3, v1}, Lcom/amazon/identity/auth/device/il;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "PackageManagerError"

    .line 122
    invoke-static {v2, v1}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 123
    invoke-virtual {p1, p3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_0

    .line 128
    sget-object p1, Lcom/amazon/identity/auth/device/bootstrapSSO/BootstrapSSOService;->TAG:Ljava/lang/String;

    const-string p2, "Could not get packages for uid"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    new-array p1, v0, [Ljava/lang/String;

    const-string p2, "PackageManagerErrorAfterRetry"

    .line 129
    invoke-static {p2, p1}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    return v0

    .line 133
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private c(ILjava/lang/String;)Landroid/os/Bundle;
    .locals 3

    .line 103
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "bootstrapSuccess"

    const/4 v2, 0x0

    .line 104
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "com.amazon.dcp.sso.ErrorCode"

    .line 105
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "com.amazon.dcp.sso.ErrorMessage"

    .line 106
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static p(Landroid/content/Context;)Z
    .locals 0

    .line 98
    invoke-static {p0}, Lcom/amazon/identity/auth/device/framework/IsolatedModeSwitcher;->isAppInStaticIsolatedMode(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/amazon/identity/auth/device/api/MAPAccountManager;Ljava/lang/String;Lcom/amazon/identity/auth/device/bg;)Landroid/os/Bundle;
    .locals 8

    .line 49
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->getPrimaryAccount()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    .line 52
    sget-object p1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;->NO_ACCOUNT:Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;->value()I

    move-result p1

    const-string p2, "No Account Registered"

    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/bootstrapSSO/BootstrapSSOService;->c(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 55
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, p1, p3, v0}, Lcom/amazon/identity/auth/device/bootstrapSSO/BootstrapSSOService;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 57
    sget-object p1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;->FRAUDULENT_PACKAGE:Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;->value()I

    move-result p1

    const-string p2, "Package name does not match caller"

    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/bootstrapSSO/BootstrapSSOService;->c(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 60
    :cond_1
    invoke-static {p1, p3}, Lcom/amazon/identity/auth/device/bj;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 61
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 63
    sget-object p1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;->NO_SIGNATURE:Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;->value()I

    move-result p1

    const-string p2, "Signature couldn\'t be obtained"

    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/bootstrapSSO/BootstrapSSOService;->c(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v1, "BootstrapSSO"

    .line 66
    invoke-static {v1}, Lcom/amazon/identity/auth/device/ej;->by(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ej;

    move-result-object v6

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/amazon/identity/auth/device/bj;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 68
    new-instance v7, Lcom/amazon/identity/auth/device/bh;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/amazon/identity/auth/device/bh;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    new-instance p1, Lcom/amazon/identity/auth/device/bl;

    invoke-direct {p1}, Lcom/amazon/identity/auth/device/bl;-><init>()V

    .line 70
    invoke-virtual {p4, p2, v7, p1, v6}, Lcom/amazon/identity/auth/device/bg;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/bh;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V

    .line 74
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/bl;->bs()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "bootstrapSuccess"

    const/4 p3, 0x1

    .line 75
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 91
    sget-object p2, Lcom/amazon/identity/auth/device/bootstrapSSO/BootstrapSSOService;->TAG:Ljava/lang/String;

    const-string p3, "Unexpected error calling bootstrap"

    invoke-static {p2, p3, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    sget-object p1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;->UNCATEGORIZED_ERROR:Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;->value()I

    move-result p1

    invoke-direct {p0, p1, p3}, Lcom/amazon/identity/auth/device/bootstrapSSO/BootstrapSSOService;->c(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    .line 85
    sget-object p2, Lcom/amazon/identity/auth/device/bootstrapSSO/BootstrapSSOService;->TAG:Ljava/lang/String;

    const-string p3, "Bootstrap call was interrupted"

    invoke-static {p2, p3, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    sget-object p1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;->UNCATEGORIZED_ERROR:Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;->value()I

    move-result p1

    invoke-direct {p0, p1, p3}, Lcom/amazon/identity/auth/device/bootstrapSSO/BootstrapSSOService;->c(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :catch_2
    move-exception p1

    .line 80
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;->getErrorBundle()Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 43
    sget-object p1, Lcom/amazon/identity/auth/device/bootstrapSSO/BootstrapSSOService;->TAG:Ljava/lang/String;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 44
    iget-object p1, p0, Lcom/amazon/identity/auth/device/bootstrapSSO/BootstrapSSOService;->ha:Landroid/os/IBinder;

    return-object p1
.end method
