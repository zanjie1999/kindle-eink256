.class public Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer$MAPApplicationCacheInvalidator;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.framework.MAPApplicationInformationQueryer"

.field private static final jX:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/amazon/identity/auth/device/du;",
            ">;"
        }
    .end annotation
.end field

.field private static jY:Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;


# instance fields
.field private final cm:Lcom/amazon/identity/auth/device/ek;

.field private jZ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/du;",
            ">;"
        }
    .end annotation
.end field

.field private ka:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private kb:Z

.field private final o:Lcom/amazon/identity/auth/device/ed;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 123
    new-instance v0, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer$1;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer$1;-><init>()V

    sput-object v0, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->jX:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 156
    new-instance v0, Lcom/amazon/identity/auth/device/ek;

    invoke-direct {v0, p1}, Lcom/amazon/identity/auth/device/ek;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;-><init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/ek;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/ek;)V
    .locals 0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->o:Lcom/amazon/identity/auth/device/ed;

    .line 163
    iput-object p2, p0, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->cm:Lcom/amazon/identity/auth/device/ek;

    .line 164
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->jZ:Ljava/util/Map;

    .line 165
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->ka:Ljava/util/Map;

    const/4 p1, 0x1

    .line 166
    iput-boolean p1, p0, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->kb:Z

    return-void
.end method

.method public static declared-synchronized E(Landroid/content/Context;)Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;
    .locals 2

    const-class v0, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;

    monitor-enter v0

    .line 171
    :try_start_0
    sget-object v1, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->jY:Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/amazon/identity/auth/device/jh;->gT()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    :cond_0
    new-instance v1, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;

    invoke-direct {v1, p0}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->jY:Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;

    .line 176
    :cond_1
    sget-object p0, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->jY:Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->cY()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized bo(Ljava/lang/String;)V
    .locals 9

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 222
    :try_start_0
    iget-object v2, p0, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->cm:Lcom/amazon/identity/auth/device/ek;

    .line 223
    invoke-virtual {v2, p1}, Lcom/amazon/identity/auth/device/ek;->bE(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 224
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    if-nez v3, :cond_0

    .line 226
    sget-object v2, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->TAG:Ljava/lang/String;

    const-string v3, "Cannot get package information for "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 227
    iget-object v2, p0, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->jZ:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    monitor-exit p0

    return-void

    .line 230
    :cond_0
    :try_start_1
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 235
    invoke-static {v5}, Lcom/amazon/identity/auth/device/ek;->a(Landroid/content/pm/ProviderInfo;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 237
    sget-object v6, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->TAG:Ljava/lang/String;

    const-string v7, "Content Provider for %s is not enabled"

    new-array v8, v1, [Ljava/lang/Object;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    aput-object v5, v8, v0

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v6}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    goto :goto_2

    .line 241
    :cond_1
    iget-object v6, v5, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-eqz v6, :cond_2

    const-string v7, "com.amazon.identity.auth.device.MapInfoProvider."

    .line 242
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 244
    new-instance v2, Lcom/amazon/identity/auth/device/du;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {v2, v3, v5}, Lcom/amazon/identity/auth/device/du;-><init>(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 245
    iget-object v3, p0, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->jZ:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x0

    .line 1519
    :try_start_2
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/du;->getDeviceType()Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catch Lcom/amazon/identity/auth/device/framework/RemoteMAPException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1523
    :catch_0
    :try_start_3
    sget-object v4, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->TAG:Ljava/lang/String;

    const-string v5, "Couldn\'t determine override device type/DSN for remoteMAPInfo Package"

    invoke-static {v4, v5}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    .line 1526
    :goto_1
    sget-object v4, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->TAG:Ljava/lang/String;

    const-string v5, "Get map info for %s, device type: %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/du;->getPackageName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v0

    aput-object v3, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v4}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 247
    monitor-exit p0

    return-void

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception v2

    .line 258
    :try_start_4
    sget-object v3, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->TAG:Ljava/lang/String;

    const-string v4, "Tried to get MAP info for untrusted package. Error message : %s"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "MAPPackageIncorrectlySigned"

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v0

    .line 259
    invoke-static {v2, v1}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_3

    :catch_2
    move-exception v2

    .line 253
    sget-object v3, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->TAG:Ljava/lang/String;

    const-string v4, "Tried to get MAP info for non-existant package. Error message : %s"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "MAPPackageNameNotFound"

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v0

    .line 254
    invoke-static {v2, v1}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 262
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->jZ:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 263
    monitor-exit p0

    return-void

    :goto_4
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized bq(Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    .line 340
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->ka:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->ka:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    :goto_0
    monitor-exit p0

    return p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized cY()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 345
    :try_start_0
    iput-boolean v0, p0, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->kb:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized cZ()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/du;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 430
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->jZ:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->kb:Z

    if-eqz v0, :cond_7

    .line 432
    :cond_0
    invoke-static {}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer$MAPApplicationCacheInvalidator;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_1

    .line 437
    sget-object v0, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer$MAPApplicationCacheInvalidator;->F(Landroid/content/Context;)V

    .line 2449
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2453
    iget-object v1, p0, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/mw;->f(Lcom/amazon/identity/auth/device/ed;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2455
    iget-object v1, p0, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2456
    invoke-direct {p0, v1}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->bo(Ljava/lang/String;)V

    .line 2457
    iget-object v2, p0, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->jZ:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/identity/auth/device/du;

    if-eqz v2, :cond_2

    .line 2461
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2465
    :cond_2
    new-instance v2, Lcom/amazon/identity/auth/device/du;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {v2, v3}, Lcom/amazon/identity/auth/device/du;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2471
    :cond_3
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->da()Ljava/util/List;

    move-result-object v1

    .line 2473
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ProviderInfo;

    .line 2475
    iget-object v3, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->bq(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2478
    iget-object v3, p0, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->jZ:Ljava/util/Map;

    iget-object v4, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/identity/auth/device/du;

    if-eqz v3, :cond_4

    .line 2481
    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2486
    :cond_5
    iget-object v3, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    new-instance v4, Lcom/amazon/identity/auth/device/du;

    iget-object v5, p0, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {v4, v5, v2}, Lcom/amazon/identity/auth/device/du;-><init>(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 440
    :cond_6
    :goto_1
    iput-object v0, p0, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->jZ:Ljava/util/Map;

    const/4 v0, 0x0

    .line 441
    iput-boolean v0, p0, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->kb:Z

    .line 444
    :cond_7
    iget-object v0, p0, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->jZ:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private da()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    .line 495
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 498
    iget-object v1, p0, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->cm:Lcom/amazon/identity/auth/device/ek;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/ek;->ec()Ljava/util/List;

    move-result-object v1

    .line 500
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ProviderInfo;

    .line 502
    iget-object v3, v2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-eqz v3, :cond_0

    const-string v4, "com.amazon.identity.auth.device.MapInfoProvider."

    .line 503
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 508
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public declared-synchronized O()V
    .locals 1

    monitor-enter p0

    .line 307
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->jZ:Ljava/util/Map;

    const/4 v0, 0x1

    .line 308
    iput-boolean v0, p0, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->kb:Z

    .line 309
    iget-object v0, p0, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->ka:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized bm(Ljava/lang/String;)Lcom/amazon/identity/auth/device/du;
    .locals 3

    monitor-enter p0

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->jZ:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/identity/auth/device/du;

    if-nez v0, :cond_0

    .line 182
    iget-boolean v0, p0, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->kb:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->bq(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    sget-object v0, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->TAG:Ljava/lang/String;

    const-string v1, "Populate change for remote MAP info."

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    sget-object v0, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CacheContainsPartialResults? "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->kb:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->bo(Ljava/lang/String;)V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->jZ:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/du;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized bn(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 198
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->bm(Ljava/lang/String;)Lcom/amazon/identity/auth/device/du;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 203
    :try_start_1
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/du;->dD()Ljava/lang/String;

    move-result-object p1

    .line 204
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_1
    .catch Lcom/amazon/identity/auth/device/framework/RemoteMAPException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    .line 206
    monitor-exit p0

    return-object p1

    .line 211
    :catch_0
    :try_start_2
    sget-object p1, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->TAG:Ljava/lang/String;

    const-string v1, "Unable to get device serial number for the calling package."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 212
    monitor-exit p0

    return-object v0

    .line 215
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized bp(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 314
    :try_start_0
    sget-object v0, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->TAG:Ljava/lang/String;

    const-string v1, "Trying to invalidateCacheForSinglePackage:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->jZ:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->bq(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->jZ:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/identity/auth/device/du;

    .line 320
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/du;->dB()V

    .line 321
    sget-object v0, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->TAG:Ljava/lang/String;

    const-string v2, "The package info for %s is locked for usage. Will clean it later."

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    monitor-exit p0

    return-void

    .line 325
    :cond_0
    :try_start_1
    sget-object v0, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->TAG:Ljava/lang/String;

    const-string v2, "Cleaning app info cache for package:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->jZ:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    iput-boolean v1, p0, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->kb:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 334
    :cond_1
    :try_start_2
    sget-object p1, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->TAG:Ljava/lang/String;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 336
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized br(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    if-nez p1, :cond_0

    .line 367
    monitor-exit p0

    return-void

    .line 370
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->bm(Ljava/lang/String;)Lcom/amazon/identity/auth/device/du;

    .line 372
    iget-object v0, p0, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->ka:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->ka:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v1, v0

    .line 381
    :cond_1
    sget-object v0, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Locking package info for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". The locker count is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->ka:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized bs(Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    if-nez p1, :cond_0

    .line 395
    monitor-exit p0

    return-void

    .line 398
    :cond_0
    :try_start_0
    sget-object v0, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->TAG:Ljava/lang/String;

    const-string v1, "Unlocking package info for: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->ka:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 401
    iget-object v0, p0, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->ka:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 402
    sget-object v1, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Previous lock count:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ". for package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-gtz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sub-int/2addr v0, v1

    .line 412
    :goto_0
    iget-object v2, p0, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->ka:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    sget-object v2, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Current lock count:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ". for package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    if-nez v0, :cond_2

    .line 416
    iget-object v0, p0, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->jZ:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/identity/auth/device/du;

    if-eqz v0, :cond_2

    .line 417
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/du;->dA()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 419
    sget-object v0, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->TAG:Ljava/lang/String;

    const-string v2, "Remove package cache for package:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->jZ:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    iput-boolean v1, p0, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->kb:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized cW()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/amazon/identity/auth/device/du;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 288
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->cZ()Ljava/util/Map;

    move-result-object v0

    .line 290
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized cX()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/du;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 295
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->cZ()Ljava/util/Map;

    move-result-object v0

    .line 297
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 298
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 300
    sget-object v0, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->jX:Ljava/util/Comparator;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
