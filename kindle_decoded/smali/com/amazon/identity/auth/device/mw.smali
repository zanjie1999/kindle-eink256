.class public final Lcom/amazon/identity/auth/device/mw;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.mw"

.field private static volatile vA:Ljava/lang/Boolean;

.field private static volatile vB:Ljava/lang/Boolean;

.field private static volatile vC:Ljava/lang/Boolean;

.field private static volatile vD:Ljava/lang/Boolean;

.field private static volatile vE:Ljava/lang/Boolean;

.field private static final vF:Ljava/lang/Object;

.field private static final vv:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final vw:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final vx:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static vy:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/net/Uri;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static vz:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 57
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 61
    sput-object v0, Lcom/amazon/identity/auth/device/mw;->vv:Ljava/util/Set;

    const-string v1, "com.amazon.dcp"

    const-string v2, "com.amazon.sso"

    const-string v3, "com.amazon.canary"

    const-string v4, "com.amazon.fv"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 70
    sput-object v0, Lcom/amazon/identity/auth/device/mw;->vw:Ljava/util/Set;

    const-string v1, "com.amazon.imp"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 92
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/amazon/identity/auth/device/mw;->vx:Ljava/util/concurrent/atomic/AtomicReference;

    .line 95
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/amazon/identity/auth/device/mw;->vy:Ljava/util/concurrent/ConcurrentHashMap;

    .line 99
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/amazon/identity/auth/device/mw;->vz:Ljava/util/concurrent/ConcurrentHashMap;

    .line 102
    sput-object v1, Lcom/amazon/identity/auth/device/mw;->vA:Ljava/lang/Boolean;

    .line 105
    sput-object v1, Lcom/amazon/identity/auth/device/mw;->vB:Ljava/lang/Boolean;

    .line 106
    sput-object v1, Lcom/amazon/identity/auth/device/mw;->vC:Ljava/lang/Boolean;

    .line 107
    sput-object v1, Lcom/amazon/identity/auth/device/mw;->vD:Ljava/lang/Boolean;

    .line 110
    sput-object v1, Lcom/amazon/identity/auth/device/mw;->vE:Ljava/lang/Boolean;

    .line 113
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/amazon/identity/auth/device/mw;->vF:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static E(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 284
    sget-object v0, Lcom/amazon/identity/auth/device/mw;->vz:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 2300
    new-instance v0, Lcom/amazon/identity/auth/device/ek;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/ek;-><init>(Landroid/content/Context;)V

    .line 2301
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/amazon/identity/auth/device/ek;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 2303
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 v1, 0x1

    .line 288
    :cond_0
    sget-object p0, Lcom/amazon/identity/auth/device/mw;->vz:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 291
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 295
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static a(Lcom/amazon/identity/auth/device/hu$a;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 143
    :cond_0
    sget-object v1, Lcom/amazon/identity/auth/device/mw;->vv:Ljava/util/Set;

    iget-object p0, p0, Lcom/amazon/identity/auth/device/hu$a;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public static aW(Landroid/content/Context;)Z
    .locals 0

    .line 121
    invoke-static {p0}, Lcom/amazon/identity/auth/device/hu;->am(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static aX(Landroid/content/Context;)Z
    .locals 0

    .line 126
    invoke-static {p0}, Lcom/amazon/identity/auth/device/hu;->ao(Landroid/content/Context;)Lcom/amazon/identity/auth/device/hu$a;

    move-result-object p0

    .line 127
    invoke-static {p0}, Lcom/amazon/identity/auth/device/mw;->a(Lcom/amazon/identity/auth/device/hu$a;)Z

    move-result p0

    return p0
.end method

.method public static aY(Landroid/content/Context;)Z
    .locals 1

    .line 148
    invoke-static {p0}, Lcom/amazon/identity/auth/device/hu;->ao(Landroid/content/Context;)Lcom/amazon/identity/auth/device/hu$a;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 154
    :cond_0
    sget-object v0, Lcom/amazon/identity/auth/device/mw;->vv:Ljava/util/Set;

    iget-object p0, p0, Lcom/amazon/identity/auth/device/hu$a;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static aZ(Landroid/content/Context;)Z
    .locals 2

    .line 162
    sget-object v0, Lcom/amazon/identity/auth/device/mw;->vx:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1217
    invoke-static {p0}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/identity/auth/device/mw;->f(Lcom/amazon/identity/auth/device/ed;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1223
    :cond_0
    invoke-static {}, Lcom/amazon/identity/auth/device/mw;->iS()Z

    move-result p0

    .line 1226
    :goto_0
    sget-object v0, Lcom/amazon/identity/auth/device/mw;->vx:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 167
    :cond_1
    sget-object p0, Lcom/amazon/identity/auth/device/mw;->vx:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static al(Landroid/content/Context;)Z
    .locals 1

    .line 242
    new-instance v0, Lcom/amazon/identity/auth/device/ds;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/ds;-><init>(Landroid/content/Context;)V

    .line 243
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ds;->di()Z

    move-result p0

    return p0
.end method

.method public static ar(Landroid/content/Context;)Z
    .locals 0

    .line 401
    invoke-static {p0}, Lcom/amazon/identity/auth/device/hu;->ar(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 2

    .line 254
    sget-object v0, Lcom/amazon/identity/auth/device/mw;->vy:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 2275
    new-instance v0, Lcom/amazon/identity/auth/device/ek;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/ek;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/ek;->b(Landroid/net/Uri;)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 258
    :goto_0
    sget-object v0, Lcom/amazon/identity/auth/device/mw;->vy:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 261
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 265
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static ba(Landroid/content/Context;)Z
    .locals 1

    .line 173
    invoke-static {p0}, Lcom/amazon/identity/auth/device/mw;->aZ(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2126
    invoke-static {p0}, Lcom/amazon/identity/auth/device/hu;->ao(Landroid/content/Context;)Lcom/amazon/identity/auth/device/hu$a;

    move-result-object p0

    .line 2127
    invoke-static {p0}, Lcom/amazon/identity/auth/device/mw;->a(Lcom/amazon/identity/auth/device/hu$a;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static bb(Landroid/content/Context;)Z
    .locals 1

    .line 182
    invoke-static {}, Lcom/amazon/identity/auth/device/mw;->iS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2132
    invoke-static {p0}, Lcom/amazon/identity/auth/device/hu;->aq(Landroid/content/Context;)Lcom/amazon/identity/auth/device/hu$a;

    move-result-object p0

    .line 2133
    invoke-static {p0}, Lcom/amazon/identity/auth/device/mw;->a(Lcom/amazon/identity/auth/device/hu$a;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static bc(Landroid/content/Context;)Z
    .locals 0

    .line 234
    invoke-static {p0}, Lcom/amazon/identity/auth/device/hu;->am(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static bd(Landroid/content/Context;)Z
    .locals 1

    .line 308
    invoke-static {p0}, Lcom/amazon/identity/auth/device/hu;->ao(Landroid/content/Context;)Lcom/amazon/identity/auth/device/hu$a;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 315
    :cond_0
    sget-object v0, Lcom/amazon/identity/auth/device/mw;->vw:Ljava/util/Set;

    iget-object p0, p0, Lcom/amazon/identity/auth/device/hu$a;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static be(Landroid/content/Context;)Z
    .locals 0

    .line 320
    invoke-static {p0}, Lcom/amazon/identity/auth/device/mw;->bf(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static bf(Landroid/content/Context;)Z
    .locals 1

    .line 325
    invoke-static {p0}, Lcom/amazon/identity/auth/device/mw;->aZ(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static bg(Landroid/content/Context;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 335
    invoke-static {p0}, Lcom/amazon/identity/auth/device/iy;->aI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "D01E"

    .line 336
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 337
    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "kindle fire"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static bh(Landroid/content/Context;)Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 350
    sget-object v0, Lcom/amazon/identity/auth/device/mw;->vA:Ljava/lang/Boolean;

    if-nez v0, :cond_4

    .line 352
    sget-object v0, Lcom/amazon/identity/auth/device/mw;->vF:Ljava/lang/Object;

    monitor-enter v0

    .line 354
    :try_start_0
    sget-object v1, Lcom/amazon/identity/auth/device/mw;->vA:Ljava/lang/Boolean;

    if-nez v1, :cond_3

    .line 2367
    invoke-static {p0}, Lcom/amazon/identity/auth/device/mw;->aZ(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2372
    :cond_0
    invoke-static {p0}, Lcom/amazon/identity/auth/device/hu;->ao(Landroid/content/Context;)Lcom/amazon/identity/auth/device/hu$a;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v3, "com.amazon.dcp"

    .line 2381
    iget-object v1, v1, Lcom/amazon/identity/auth/device/hu$a;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "com.amazon.dcp"

    .line 2386
    invoke-static {p0, v1}, Lcom/amazon/identity/auth/device/jj;->D(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_2

    const/16 v1, 0x622

    .line 2388
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-gt v1, p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 356
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/amazon/identity/auth/device/mw;->vA:Ljava/lang/Boolean;

    .line 358
    :cond_3
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 361
    :cond_4
    :goto_1
    sget-object p0, Lcom/amazon/identity/auth/device/mw;->vA:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static bi(Landroid/content/Context;)Z
    .locals 1

    .line 396
    invoke-static {p0}, Lcom/amazon/identity/auth/device/mw;->aZ(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/amazon/identity/auth/device/hu;->am(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static bj(Landroid/content/Context;)Z
    .locals 1

    .line 419
    sget-object v0, Lcom/amazon/device/information/contract/DeviceInformationContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/mw;->b(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public static bk(Landroid/content/Context;)Z
    .locals 3

    .line 428
    invoke-static {p0}, Lcom/amazon/identity/auth/device/hu;->au(Landroid/content/Context;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 429
    iget-object v1, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const-string v2, "com.amazon.fv"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 431
    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/jj;->D(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x5

    if-lt p0, v0, :cond_0

    .line 437
    sget-object p0, Lcom/amazon/identity/auth/device/mw;->TAG:Ljava/lang/String;

    const-string v0, "Device has Grover with version 3 or later"

    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static bl(Landroid/content/Context;)Z
    .locals 1

    .line 450
    invoke-static {p0}, Lcom/amazon/identity/auth/device/hu;->au(Landroid/content/Context;)Landroid/accounts/AuthenticatorDescription;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 451
    iget-object p0, p0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const-string v0, "com.amazon.canary"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static bm(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 463
    invoke-static {p0}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p0

    const-string v0, "dcp_device_info"

    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/device/ea;

    .line 464
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/ea;->dR()Ljava/lang/String;

    move-result-object p0

    .line 465
    sget-object v0, Lcom/amazon/identity/auth/device/mw;->TAG:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Device dsn: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    return-object p0
.end method

.method public static bn(Landroid/content/Context;)Z
    .locals 3

    .line 537
    sget-object v0, Lcom/amazon/identity/auth/device/mw;->vD:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 541
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 544
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 546
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v1, "com.fireos.sdk.amazon_profile_service"

    .line 550
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    .line 554
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 556
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 560
    :cond_1
    sput-object v0, Lcom/amazon/identity/auth/device/mw;->vD:Ljava/lang/Boolean;

    .line 561
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static bo(Landroid/content/Context;)Z
    .locals 5

    .line 567
    invoke-static {p0}, Lcom/amazon/identity/auth/device/mw;->bn(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 572
    :cond_0
    sget-object v0, Lcom/amazon/identity/auth/device/mw;->vE:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 576
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 579
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 581
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_3

    const/16 v3, 0xb

    const-string v4, "com.fireos.sdk.amazon_profile_service"

    .line 583
    invoke-virtual {v2, v4, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "com.amazon.permission.SET_PROFILE"

    .line 585
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 588
    :cond_3
    sput-object v0, Lcom/amazon/identity/auth/device/mw;->vE:Ljava/lang/Boolean;

    .line 590
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static f(Lcom/amazon/identity/auth/device/ed;)Z
    .locals 1

    .line 406
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/ed;->dV()Lcom/amazon/identity/auth/device/co;

    move-result-object p0

    sget-object v0, Lcom/amazon/identity/auth/device/features/Feature;->IsolateApplication:Lcom/amazon/identity/auth/device/features/Feature;

    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/co;->a(Lcom/amazon/identity/auth/device/features/Feature;)Z

    move-result p0

    return p0
.end method

.method public static iS()Z
    .locals 2

    .line 192
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Amazon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v0, "com.amazon.acos.util.AmazonBuild"

    .line 200
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 201
    sget-object v0, Lcom/amazon/identity/auth/device/mw;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 206
    :catch_0
    sget-object v0, Lcom/amazon/identity/auth/device/mw;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static iT()Z
    .locals 6

    .line 471
    sget-object v0, Lcom/amazon/identity/auth/device/mw;->vB:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 475
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 478
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :try_start_0
    const-string v1, "com.amazon.android.os.MultipleProfileHelper"

    .line 482
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "myProfileId"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    .line 483
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "getCallingProfileId"

    new-array v4, v3, [Ljava/lang/Class;

    .line 484
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "getForegroundProfileId"

    new-array v4, v3, [Ljava/lang/Class;

    .line 485
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "isSameApp"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    .line 486
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v3

    const/4 v3, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v3

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 488
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 489
    sget-object v1, Lcom/amazon/identity/auth/device/mw;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 497
    :catch_0
    sget-object v1, Lcom/amazon/identity/auth/device/mw;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    goto :goto_0

    .line 493
    :catch_1
    sget-object v1, Lcom/amazon/identity/auth/device/mw;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 499
    :goto_0
    sput-object v0, Lcom/amazon/identity/auth/device/mw;->vB:Ljava/lang/Boolean;

    .line 500
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static iU()Z
    .locals 2

    .line 505
    sget-object v0, Lcom/amazon/identity/auth/device/mw;->vC:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 509
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 512
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :try_start_0
    const-string v1, "amazon.os.Build.VERSION"

    .line 516
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 518
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 519
    sget-object v1, Lcom/amazon/identity/auth/device/mw;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 523
    :catch_0
    sget-object v1, Lcom/amazon/identity/auth/device/mw;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 525
    :goto_0
    sput-object v0, Lcom/amazon/identity/auth/device/mw;->vC:Ljava/lang/Boolean;

    .line 526
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized iV()Z
    .locals 3

    const-class v0, Lcom/amazon/identity/auth/device/mw;

    monitor-enter v0

    .line 531
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
