.class public Lcom/amazon/identity/auth/device/bi;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/bi$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.bi"


# instance fields
.field private final dW:Ljava/util/Timer;

.field private final g:Lcom/amazon/identity/auth/device/api/Callback;

.field private final gT:Landroid/content/Intent;

.field private final gU:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final gV:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final gW:Ljava/util/concurrent/ExecutorService;

.field private final gX:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/api/Callback;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/amazon/identity/auth/device/bi$1;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/bi$1;-><init>(Lcom/amazon/identity/auth/device/bi;)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/bi;->gX:Landroid/content/ServiceConnection;

    .line 72
    iput-object p1, p0, Lcom/amazon/identity/auth/device/bi;->mContext:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcom/amazon/identity/auth/device/bi;->g:Lcom/amazon/identity/auth/device/api/Callback;

    .line 74
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/bi;->gU:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 75
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.amazon.identity.action.BOOTSTRAP_SSO"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/bi;->gT:Landroid/content/Intent;

    .line 76
    new-instance p1, Ljava/util/Timer;

    const-class v0, Lcom/amazon/identity/auth/device/bi;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/bi;->dW:Ljava/util/Timer;

    .line 77
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/bi;->gV:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    .line 78
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/bi;->gW:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/bi;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/amazon/identity/auth/device/bi;->gV:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private a(Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;Ljava/lang/String;)V
    .locals 2

    .line 157
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/bi;->br()V

    .line 159
    iget-object v0, p0, Lcom/amazon/identity/auth/device/bi;->gU:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 162
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;->value()I

    move-result p1

    const-string v1, "com.amazon.dcp.sso.ErrorCode"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "com.amazon.dcp.sso.ErrorMessage"

    .line 163
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object p1, p0, Lcom/amazon/identity/auth/device/bi;->g:Lcom/amazon/identity/auth/device/api/Callback;

    invoke-interface {p1, v0}, Lcom/amazon/identity/auth/device/api/Callback;->onError(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/bi;Landroid/os/Bundle;)V
    .locals 2

    .line 2170
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/bi;->br()V

    .line 2172
    iget-object v0, p0, Lcom/amazon/identity/auth/device/bi;->gU:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const-string v1, "bootstrapSuccess"

    .line 2174
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2175
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 2179
    iget-object p0, p0, Lcom/amazon/identity/auth/device/bi;->g:Lcom/amazon/identity/auth/device/api/Callback;

    invoke-interface {p0, p1}, Lcom/amazon/identity/auth/device/api/Callback;->onSuccess(Landroid/os/Bundle;)V

    return-void

    .line 2183
    :cond_0
    iget-object p0, p0, Lcom/amazon/identity/auth/device/bi;->g:Lcom/amazon/identity/auth/device/api/Callback;

    invoke-interface {p0, p1}, Lcom/amazon/identity/auth/device/api/Callback;->onError(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/bi;Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/bi;->a(Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/bi;Lcom/amazon/identity/auth/device/bootstrapSSO/IBootstrapSSOService;)V
    .locals 2

    .line 1190
    iget-object v0, p0, Lcom/amazon/identity/auth/device/bi;->gW:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/identity/auth/device/bi$3;

    invoke-direct {v1, p0, p1}, Lcom/amazon/identity/auth/device/bi$3;-><init>(Lcom/amazon/identity/auth/device/bi;Lcom/amazon/identity/auth/device/bootstrapSSO/IBootstrapSSOService;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lcom/amazon/identity/auth/device/bi;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/amazon/identity/auth/device/bi;)Landroid/content/Intent;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/amazon/identity/auth/device/bi;->gT:Landroid/content/Intent;

    return-object p0
.end method

.method private br()V
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/amazon/identity/auth/device/bi;->gV:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/amazon/identity/auth/device/bi;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/bi;->gX:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/amazon/identity/auth/device/bi;)Landroid/content/Context;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/amazon/identity/auth/device/bi;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic d(Lcom/amazon/identity/auth/device/bi;)Ljava/util/Timer;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/amazon/identity/auth/device/bi;->dW:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic e(Lcom/amazon/identity/auth/device/bi;)Landroid/content/ServiceConnection;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/amazon/identity/auth/device/bi;->gX:Landroid/content/ServiceConnection;

    return-object p0
.end method


# virtual methods
.method public bq()V
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/amazon/identity/auth/device/bi;->gU:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 85
    iget-object v0, p0, Lcom/amazon/identity/auth/device/bi;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MAPBootstrapSSOTargetApplication"

    invoke-static {v0, v1, v2}, Lcom/amazon/identity/auth/device/in;->o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/identity/auth/device/bi;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/framework/IsolatedModeSwitcher;->isAppInStaticIsolatedMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;->BOOTSTRAP_NOT_ALLOWED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;

    const-string v1, "Bootstrap not allowed for your application. Currently it is allowed for applications explicitly declaring meta-data \"MAPBootstrapSSOTargetApplication\" in manifest, or for isolated applications"

    invoke-direct {p0, v0, v1}, Lcom/amazon/identity/auth/device/bi;->a(Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;Ljava/lang/String;)V

    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/bi;->gW:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/identity/auth/device/bi$2;

    invoke-direct {v1, p0}, Lcom/amazon/identity/auth/device/bi$2;-><init>(Lcom/amazon/identity/auth/device/bi;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method protected d(Ljava/util/List;)Landroid/content/pm/ServiceInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/ServiceInfo;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/amazon/identity/auth/device/bi;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/be;->l(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 127
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 139
    iget-object v3, p0, Lcom/amazon/identity/auth/device/bi;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 143
    iget-object v3, p0, Lcom/amazon/identity/auth/device/bi;->mContext:Landroid/content/Context;

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/amazon/identity/auth/device/bj;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 145
    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 147
    iget-object p1, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    return-object p1

    :cond_3
    return-object v1

    .line 129
    :cond_4
    :goto_0
    sget-object p1, Lcom/amazon/identity/auth/device/bi;->TAG:Ljava/lang/String;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    return-object v1
.end method
