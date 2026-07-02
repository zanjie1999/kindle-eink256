.class public Lcom/amazon/identity/auth/device/ek;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.ek"

.field private static volatile lz:Lcom/amazon/identity/auth/device/ex;


# instance fields
.field private final lA:Ljava/lang/String;

.field private final lB:Landroid/content/pm/PackageManager;

.field private final lC:Z

.field private volatile lD:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, v0}, Lcom/amazon/identity/auth/device/ek;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    .line 80
    sget-object v0, Lcom/amazon/identity/auth/device/ek;->lz:Lcom/amazon/identity/auth/device/ex;

    if-nez v0, :cond_0

    .line 82
    sget-object v0, Lcom/amazon/identity/auth/device/ek;->TAG:Ljava/lang/String;

    const-string v1, "Trying to use default signature based package trust logic. This should be on 3P device"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    new-instance v0, Lcom/amazon/identity/auth/device/ez;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/ez;-><init>()V

    invoke-static {v0}, Lcom/amazon/identity/auth/device/ek;->a(Lcom/amazon/identity/auth/device/ex;)V

    .line 85
    :cond_0
    iput-object p1, p0, Lcom/amazon/identity/auth/device/ek;->mContext:Landroid/content/Context;

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/ek;->lA:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/ek;->lB:Landroid/content/pm/PackageManager;

    if-eqz p2, :cond_1

    .line 90
    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/framework/TrustedAppUtils;->b(Landroid/content/Context;Landroid/content/pm/PackageManager;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/ek;->lD:Ljava/util/Set;

    const/4 p1, 0x0

    .line 91
    iput-boolean p1, p0, Lcom/amazon/identity/auth/device/ek;->lC:Z

    return-void

    .line 95
    :cond_1
    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/framework/TrustedAppUtils;->a(Landroid/content/Context;Landroid/content/pm/PackageManager;)Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/identity/auth/device/ek;->lD:Ljava/util/Set;

    .line 96
    invoke-static {p1}, Lcom/amazon/identity/auth/device/framework/IsolatedModeSwitcher;->isAppInStaticIsolatedMode(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/identity/auth/device/ek;->lC:Z

    return-void

    .line 77
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(II)I
    .locals 1

    .line 588
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ek;->lB:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    .line 592
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ek;->a(Ljava/lang/Exception;)V

    .line 593
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ek;->lB:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result p1

    return p1
.end method

.method public static a(Ljava/lang/String;ILandroid/content/pm/PackageManager;)Landroid/content/pm/PackageInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 544
    :try_start_0
    invoke-virtual {p2, p0, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 552
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ek;->a(Ljava/lang/Exception;)V

    .line 553
    invoke-virtual {p2, p0, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    :goto_0
    return-object p0

    :catch_1
    move-exception p0

    .line 548
    throw p0
.end method

.method public static a(Landroid/net/Uri;Landroid/content/pm/PackageManager;)Landroid/content/pm/ProviderInfo;
    .locals 0

    .line 275
    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/dt;->a(Landroid/net/Uri;Landroid/content/pm/PackageManager;)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized a(Lcom/amazon/identity/auth/device/ex;)V
    .locals 4

    const-class v0, Lcom/amazon/identity/auth/device/ek;

    monitor-enter v0

    .line 114
    :try_start_0
    sput-object p0, Lcom/amazon/identity/auth/device/ek;->lz:Lcom/amazon/identity/auth/device/ex;

    .line 117
    sget-object v1, Lcom/amazon/identity/auth/device/ek;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Setting package trust logic as: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/amazon/identity/auth/device/ex;->getDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static a(Ljava/lang/Exception;)V
    .locals 3

    .line 627
    sget-object v0, Lcom/amazon/identity/auth/device/ek;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "PackageManager call failed; retrying. Error Message : %s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    new-array p0, v2, [Ljava/lang/String;

    const-string v0, "PackageManagerError"

    .line 628
    invoke-static {v0, p0}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/pm/ProviderInfo;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 581
    iget-boolean v0, p0, Landroid/content/pm/ProviderInfo;->enabled:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private a([Landroid/content/pm/Signature;)Z
    .locals 5

    .line 512
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ek;->lD:Ljava/util/Set;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 522
    :cond_0
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p1, v3

    .line 524
    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 534
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ek;->lB:Landroid/content/pm/PackageManager;

    invoke-static {p1, p2, v0}, Lcom/amazon/identity/auth/device/ek;->a(Ljava/lang/String;ILandroid/content/pm/PackageManager;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    return-object p1
.end method

.method public static b(Landroid/net/Uri;Landroid/content/pm/PackageManager;)Z
    .locals 0

    .line 2275
    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/dt;->a(Landroid/net/Uri;Landroid/content/pm/PackageManager;)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private bB(Ljava/lang/String;)Z
    .locals 3

    .line 298
    sget-object v0, Lcom/amazon/identity/auth/device/ek;->lz:Lcom/amazon/identity/auth/device/ex;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/ek;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/amazon/identity/auth/device/ex;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method private bF(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    const/16 v0, 0x40

    .line 503
    invoke-direct {p0, p1, v0}, Lcom/amazon/identity/auth/device/ek;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 504
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/ek;->a([Landroid/content/pm/Signature;)Z

    move-result p1

    return p1
.end method

.method private bG(Ljava/lang/String;)I
    .locals 2

    .line 601
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ek;->lB:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/ek;->lA:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    .line 605
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ek;->a(Ljava/lang/Exception;)V

    .line 606
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ek;->lB:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/ek;->lA:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private ee()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 615
    :try_start_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/ek;->lB:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 619
    invoke-static {v1}, Lcom/amazon/identity/auth/device/ek;->a(Ljava/lang/Exception;)V

    .line 620
    iget-object v1, p0, Lcom/amazon/identity/auth/device/ek;->lB:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 560
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x40

    .line 563
    :try_start_0
    invoke-static {p1, v0, p0}, Lcom/amazon/identity/auth/device/ek;->a(Ljava/lang/String;ILandroid/content/pm/PackageManager;)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public a(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    const/16 v0, 0x80

    .line 131
    :try_start_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/ek;->lB:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 139
    invoke-static {v1}, Lcom/amazon/identity/auth/device/ek;->a(Ljava/lang/Exception;)V

    .line 140
    iget-object v1, p0, Lcom/amazon/identity/auth/device/ek;->lB:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 147
    :cond_0
    iget-object v1, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/amazon/identity/auth/device/ek;->bC(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 149
    sget-object p1, Lcom/amazon/identity/auth/device/ek;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Cannot get ServiceInfo from package since it is not signed with the Amazon Cert."

    invoke-static {p1, v2, v1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_1
    return-object p1

    :catch_1
    move-exception p1

    .line 135
    throw p1
.end method

.method public a(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/XmlResourceParser;
    .locals 2

    if-nez p1, :cond_0

    .line 480
    sget-object p1, Lcom/amazon/identity/auth/device/ek;->TAG:Ljava/lang/String;

    const-string v0, "PackageItemInfo cannot be null in getParserForPackage"

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ek;->lB:Landroid/content/pm/PackageManager;

    const-string v1, "com.amazon.dcp.sso.AccountSubAuthenticator"

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageItemInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/net/Uri;)Landroid/content/pm/ProviderInfo;
    .locals 3

    .line 241
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ek;->lB:Landroid/content/pm/PackageManager;

    .line 1275
    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/dt;->a(Landroid/net/Uri;Landroid/content/pm/PackageManager;)Landroid/content/pm/ProviderInfo;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 246
    :cond_0
    iget-object v1, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/amazon/identity/auth/device/ek;->bC(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 248
    sget-object p1, Lcom/amazon/identity/auth/device/ek;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Package does not qualify as a trusted package."

    .line 249
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 248
    invoke-static {p1, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    return-object p1
.end method

.method public bC(Ljava/lang/String;)Z
    .locals 3

    .line 311
    sget-object v0, Lcom/amazon/identity/auth/device/ek;->lz:Lcom/amazon/identity/auth/device/ex;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/ek;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, v2}, Lcom/amazon/identity/auth/device/ex;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public bD(Ljava/lang/String;)I
    .locals 3

    .line 318
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ek;->lA:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/identity/auth/device/jh;->gT()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 324
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/identity/auth/device/ek;->lC:Z

    const/4 v2, -0x3

    if-eqz v0, :cond_1

    return v2

    .line 329
    :cond_1
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/ek;->bG(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 336
    :cond_2
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ek;->lD:Ljava/util/Set;

    if-nez v0, :cond_3

    return v2

    .line 343
    :cond_3
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/ek;->bF(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v1

    :catch_0
    const/4 p1, -0x4

    return p1
.end method

.method public bE(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 489
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/ek;->bC(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    .line 491
    invoke-direct {p0, p1, v0}, Lcom/amazon/identity/auth/device/ek;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    return-object p1

    .line 495
    :cond_0
    sget-object p1, Lcom/amazon/identity/auth/device/ek;->TAG:Ljava/lang/String;

    const-string v0, "Package is not trusted"

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ec()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 213
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/ek;->ed()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v3, 0x8

    .line 217
    :try_start_0
    invoke-direct {p0, v2, v3}, Lcom/amazon/identity/auth/device/ek;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 218
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    if-eqz v3, :cond_0

    .line 220
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 223
    invoke-static {v5}, Lcom/amazon/identity/auth/device/ek;->a(Landroid/content/pm/ProviderInfo;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 225
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    .line 232
    sget-object v3, Lcom/amazon/identity/auth/device/ek;->TAG:Ljava/lang/String;

    const-string v4, "Caught NameNotFoundException querying for package that existed a moment ago"

    invoke-static {v3, v4, v2}, Lcom/amazon/identity/auth/device/il;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public ed()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 280
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/ek;->ee()Ljava/util/List;

    move-result-object v0

    .line 282
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 283
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 287
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/amazon/identity/auth/device/ek;->bB(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 289
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public f(Landroid/content/Intent;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 162
    :try_start_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/ek;->lB:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 166
    invoke-static {v1}, Lcom/amazon/identity/auth/device/ek;->a(Ljava/lang/Exception;)V

    .line 167
    iget-object v1, p0, Lcom/amazon/identity/auth/device/ek;->lB:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 169
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 171
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 173
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/amazon/identity/auth/device/ek;->bB(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public getCallingPackageName()Ljava/lang/String;
    .locals 2

    .line 633
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ek;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 457
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/ek;->bB(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ek;->lB:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 469
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ek;->a(Ljava/lang/Exception;)V

    .line 470
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ek;->lB:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 465
    throw p1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public k(I)Z
    .locals 7

    .line 366
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 368
    invoke-static {}, Lcom/amazon/identity/auth/device/jh;->gT()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 372
    invoke-direct {p0, p1, v0}, Lcom/amazon/identity/auth/device/ek;->a(II)I

    move-result p1

    if-nez p1, :cond_0

    return v2

    :cond_0
    return v3

    :cond_1
    if-ne p1, v0, :cond_2

    return v2

    .line 381
    :cond_2
    iget-boolean v1, p0, Lcom/amazon/identity/auth/device/ek;->lC:Z

    if-eqz v1, :cond_3

    .line 383
    sget-object p1, Lcom/amazon/identity/auth/device/ek;->TAG:Ljava/lang/String;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    return v3

    .line 387
    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/amazon/identity/auth/device/ek;->a(II)I

    move-result v0

    if-nez v0, :cond_4

    return v2

    .line 394
    :cond_4
    iget-object v1, p0, Lcom/amazon/identity/auth/device/ek;->lD:Ljava/util/Set;

    if-nez v1, :cond_5

    return v3

    .line 402
    :cond_5
    :try_start_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/ek;->lB:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 406
    invoke-static {v1}, Lcom/amazon/identity/auth/device/ek;->a(Ljava/lang/Exception;)V

    .line 407
    iget-object v1, p0, Lcom/amazon/identity/auth/device/ek;->lB:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_6

    .line 411
    sget-object p1, Lcom/amazon/identity/auth/device/ek;->TAG:Ljava/lang/String;

    const-string v0, "Package name not found for the uid"

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 425
    :cond_6
    array-length v1, p1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_8

    aget-object v5, p1, v4

    .line 429
    :try_start_1
    invoke-direct {p0, v5}, Lcom/amazon/identity/auth/device/ek;->bF(Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v5, :cond_7

    const/4 p1, 0x1

    goto :goto_2

    .line 437
    :catch_1
    sget-object v5, Lcom/amazon/identity/auth/device/ek;->TAG:Ljava/lang/String;

    const-string v6, "Package name not found"

    invoke-static {v5, v6}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_8
    const/4 p1, 0x0

    :goto_2
    if-nez p1, :cond_9

    .line 443
    sget-object v1, Lcom/amazon/identity/auth/device/ek;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    .line 446
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "Other uid and my uid are do not have matching signatures (result: %d). The trusted app check also failed."

    .line 444
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 443
    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return p1
.end method

.method public queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ek;->lB:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 193
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ek;->a(Ljava/lang/Exception;)V

    .line 194
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ek;->lB:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 196
    :goto_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 198
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 200
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/amazon/identity/auth/device/ek;->bB(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object p2
.end method
