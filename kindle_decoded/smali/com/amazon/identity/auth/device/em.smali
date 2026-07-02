.class public Lcom/amazon/identity/auth/device/em;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.em"


# instance fields
.field private final aZ:Lcom/amazon/identity/auth/device/ds;

.field private final lE:Lcom/amazon/identity/auth/device/utils/ReflectionHelper;

.field private final lF:Ljava/lang/Object;

.field private final o:Lcom/amazon/identity/auth/device/ed;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/identity/auth/device/ed;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/amazon/identity/auth/device/utils/ReflectionHelper;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/utils/ReflectionHelper;-><init>()V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/em;->lE:Lcom/amazon/identity/auth/device/utils/ReflectionHelper;

    .line 32
    iput-object p1, p0, Lcom/amazon/identity/auth/device/em;->o:Lcom/amazon/identity/auth/device/ed;

    const-string/jumbo v0, "user"

    .line 34
    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/em;->lF:Ljava/lang/Object;

    .line 36
    iget-object p1, p0, Lcom/amazon/identity/auth/device/em;->o:Lcom/amazon/identity/auth/device/ed;

    const-string/jumbo v0, "sso_platform"

    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/ds;

    iput-object p1, p0, Lcom/amazon/identity/auth/device/em;->aZ:Lcom/amazon/identity/auth/device/ds;

    return-void
.end method

.method private eh()V
    .locals 2

    .line 107
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/em;->R()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 109
    :cond_0
    sget-object v0, Lcom/amazon/identity/auth/device/em;->TAG:Ljava/lang/String;

    const-string v1, "checkIsUserManagerSupportedOnThisPlatform failed. IMP is going to crash. This issue is tracked in SSO-150 and FWK-10172"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This platform does not support UserManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public R()Z
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/amazon/identity/auth/device/em;->aZ:Lcom/amazon/identity/auth/device/ds;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ds;->dp()Z

    move-result v0

    .line 42
    iget-object v1, p0, Lcom/amazon/identity/auth/device/em;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/hu;->al(Landroid/content/Context;)Z

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ef()Lcom/amazon/identity/auth/device/da;
    .locals 1

    .line 93
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/em;->eh()V

    .line 95
    invoke-static {}, Lcom/amazon/identity/auth/device/da;->cx()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/em;->l(I)Lcom/amazon/identity/auth/device/da;

    move-result-object v0

    return-object v0
.end method

.method public eg()Lcom/amazon/identity/auth/device/da;
    .locals 1

    .line 100
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/em;->eh()V

    .line 102
    invoke-static {}, Lcom/amazon/identity/auth/device/da;->cA()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/em;->l(I)Lcom/amazon/identity/auth/device/da;

    move-result-object v0

    return-object v0
.end method

.method public l(I)Lcom/amazon/identity/auth/device/da;
    .locals 7

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/em;->lE:Lcom/amazon/identity/auth/device/utils/ReflectionHelper;

    const-string v1, "getUserInfo"

    iget-object v2, p0, Lcom/amazon/identity/auth/device/em;->lF:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-array v3, v3, [Ljava/lang/Object;

    .line 66
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v6

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/amazon/identity/auth/device/utils/ReflectionHelper;->a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 67
    invoke-static {p1}, Lcom/amazon/identity/auth/device/da;->c(Ljava/lang/Object;)Lcom/amazon/identity/auth/device/da;

    move-result-object p1
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/utils/ReflectionHelper$CannotCallMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 71
    sget-object v0, Lcom/amazon/identity/auth/device/em;->TAG:Ljava/lang/String;

    const-string v1, "Cannot get user info for my user id"

    invoke-static {v0, v1, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method
