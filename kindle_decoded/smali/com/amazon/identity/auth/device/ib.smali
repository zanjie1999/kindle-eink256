.class public final Lcom/amazon/identity/auth/device/ib;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.ib"

.field private static volatile qP:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aA(Landroid/content/Context;)Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/ly;",
            ">;"
        }
    .end annotation

    .line 442
    invoke-static {p0}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object v0

    const-string/jumbo v1, "sso_platform"

    .line 444
    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/identity/auth/device/ds;

    .line 450
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/ds;->dr()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 452
    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    goto :goto_0

    .line 457
    :cond_0
    invoke-static {v0}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->E(Landroid/content/Context;)Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->cW()Ljava/util/Collection;

    move-result-object v1

    .line 460
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "dcp_device_info"

    .line 463
    invoke-virtual {v0, v3}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/identity/auth/device/ea;

    .line 465
    sget-object v4, Lcom/amazon/identity/auth/device/attribute/DeviceAttribute;->CentralDeviceType:Lcom/amazon/identity/auth/device/attribute/DeviceAttribute;

    .line 466
    invoke-static {v0, v4}, Lcom/amazon/identity/auth/device/it;->c(Landroid/content/Context;Lcom/amazon/identity/auth/device/attribute/DeviceAttribute;)Ljava/lang/String;

    move-result-object v0

    .line 467
    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/ea;->cq()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 468
    invoke-static {p0}, Lcom/amazon/identity/auth/device/ib;->aC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 470
    sget-object v4, Lcom/amazon/identity/auth/device/ib;->TAG:Ljava/lang/String;

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v8, 0x1

    aput-object v3, v6, v8

    const/4 v9, 0x2

    aput-object p0, v6, v9

    const-string v10, "Using the central device type: %s, software version: %s, and software component id: %s"

    .line 471
    invoke-static {v10, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 470
    invoke-static {v4, v6}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    new-instance v4, Lcom/amazon/identity/auth/device/ly;

    invoke-direct {v4, v3, p0}, Lcom/amazon/identity/auth/device/ly;-><init>(Ljava/lang/Long;Ljava/lang/String;)V

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/identity/auth/device/du;

    .line 481
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/du;->dC()Ljava/lang/Long;

    move-result-object v3

    .line 482
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/du;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 487
    :try_start_0
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/du;->getDeviceType()Ljava/lang/String;

    move-result-object v6

    .line 488
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/du;->dD()Ljava/lang/String;

    move-result-object v10
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/framework/RemoteMAPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    sget-object v11, Lcom/amazon/identity/auth/device/ib;->TAG:Ljava/lang/String;

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v4, v12, v7

    aput-object v6, v12, v8

    aput-object v3, v12, v9

    aput-object v10, v12, v5

    const-string v13, "The RemoteMapInfo returns softwareComponentId: %s, deviceType: %s, softwareVersion: %s, overrideDSN: %s"

    .line 499
    invoke-static {v13, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 498
    invoke-static {v11}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 506
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 508
    sget-object v3, Lcom/amazon/identity/auth/device/ib;->TAG:Ljava/lang/String;

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/du;->getPackageName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v7

    const-string v1, "%s is using override DSN. Skipping it."

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v3}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-nez v3, :cond_3

    .line 514
    sget-object v3, Lcom/amazon/identity/auth/device/ib;->TAG:Ljava/lang/String;

    new-array v10, v8, [Ljava/lang/Object;

    .line 516
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/du;->getPackageName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v7

    const-string v11, "%s is using null software version. Replacing the null with 0."

    .line 515
    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 514
    invoke-static {v3}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    const-wide/16 v10, 0x0

    .line 517
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 521
    :cond_3
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 523
    sget-object v3, Lcom/amazon/identity/auth/device/ib;->TAG:Ljava/lang/String;

    new-array v4, v8, [Ljava/lang/Object;

    .line 525
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/du;->getPackageName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v7

    const-string v1, "%s is using null or empty device type. This should be an integration error."

    .line 524
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 523
    invoke-static {v3}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    goto :goto_1

    .line 529
    :cond_4
    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 531
    sget-object v3, Lcom/amazon/identity/auth/device/ib;->TAG:Ljava/lang/String;

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/du;->getPackageName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v7

    const-string v1, "%s is using central device type."

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v3}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 535
    :cond_5
    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 538
    sget-object v1, Lcom/amazon/identity/auth/device/ib;->TAG:Ljava/lang/String;

    new-array v10, v8, [Ljava/lang/Object;

    aput-object v6, v10, v7

    const-string v11, "Multiple apps are using the device type %s. Choosing the app with the greatest software version."

    .line 539
    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 538
    invoke-static {v1, v10}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/identity/auth/device/ly;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/ly;->iy()Ljava/lang/Long;

    move-result-object v1

    .line 543
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v1, v10, v12

    if-gez v1, :cond_1

    .line 545
    new-instance v1, Lcom/amazon/identity/auth/device/ly;

    invoke-direct {v1, v3, v4}, Lcom/amazon/identity/auth/device/ly;-><init>(Ljava/lang/Long;Ljava/lang/String;)V

    invoke-interface {v2, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 551
    :cond_6
    new-instance v1, Lcom/amazon/identity/auth/device/ly;

    invoke-direct {v1, v3, v4}, Lcom/amazon/identity/auth/device/ly;-><init>(Ljava/lang/Long;Ljava/lang/String;)V

    invoke-interface {v2, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :catch_0
    move-exception v1

    .line 492
    sget-object v3, Lcom/amazon/identity/auth/device/ib;->TAG:Ljava/lang/String;

    new-array v4, v8, [Ljava/lang/Object;

    .line 494
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v7

    const-string v1, "Failed to query device type/override DSN for remoteMAPApp Package.Skipping it.Error Message : %s"

    .line 493
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 492
    invoke-static {v3, v1}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 555
    :cond_7
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 557
    sget-object v1, Lcom/amazon/identity/auth/device/ib;->TAG:Ljava/lang/String;

    new-array v3, v5, [Ljava/lang/Object;

    .line 559
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v7

    .line 560
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/identity/auth/device/ly;

    invoke-virtual {v4}, Lcom/amazon/identity/auth/device/ly;->iy()Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v8

    .line 561
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/identity/auth/device/ly;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ly;->iz()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v9

    const-string v0, "Using the deviceType-softwareVersion,softwareComponentId: %s - %s, %s"

    .line 558
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 557
    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    return-object v2
.end method

.method public static aB(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 613
    invoke-static {p0}, Lcom/amazon/identity/auth/device/mw;->aZ(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 615
    invoke-static {}, Lcom/amazon/identity/auth/device/mw;->iU()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 617
    sget-object p0, Lamazon/os/Build$VERSION;->DEVICE_TYPE_ID:Ljava/lang/String;

    return-object p0

    .line 621
    :cond_0
    new-instance p0, Lcom/amazon/identity/auth/device/eg;

    invoke-direct {p0}, Lcom/amazon/identity/auth/device/eg;-><init>()V

    const-string/jumbo v0, "ro.product.config.type"

    .line 622
    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/eg;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 623
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static aC(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 640
    invoke-static {p0}, Lcom/amazon/identity/platform/setting/PlatformSettings;->aV(Landroid/content/Context;)Lcom/amazon/identity/platform/setting/PlatformSettings;

    move-result-object v0

    const-string/jumbo v1, "ro.product.package_name"

    invoke-virtual {v0, v1}, Lcom/amazon/identity/platform/setting/PlatformSettings;->eT(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 645
    invoke-static {p0}, Lcom/amazon/identity/auth/device/mw;->aZ(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 647
    sget-object p0, Lcom/amazon/identity/auth/device/ib;->TAG:Ljava/lang/String;

    const-string v1, "Central Software Component Id is null.  DCP setting -device-/os_package_name not set for this device."

    invoke-static {p0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static aw(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 96
    invoke-static {p0}, Lcom/amazon/identity/auth/device/framework/IsolatedModeSwitcher;->isAppInStaticIsolatedMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "MAPDeviceType"

    .line 1132
    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/in;->v(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 99
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    sget-object v0, Lcom/amazon/identity/auth/device/ib;->TAG:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Overridden device type for the isolated app is "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    return-object p0

    :cond_0
    const-string p0, "A1MPSLFC7L5AFK"

    return-object p0

    .line 110
    :cond_1
    invoke-static {p0}, Lcom/amazon/identity/auth/device/ib;->ay(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ax(Landroid/content/Context;)Z
    .locals 1

    .line 118
    invoke-static {p0}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/identity/auth/device/mw;->f(Lcom/amazon/identity/auth/device/ed;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MAPDeviceType"

    .line 2132
    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/in;->v(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 119
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static ay(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 142
    invoke-static {p0}, Lcom/amazon/identity/auth/device/ib;->aB(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    sget-object p0, Lcom/amazon/identity/auth/device/ib;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Returning device type from system property: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    return-object v0

    .line 150
    :cond_0
    invoke-static {p0}, Lcom/amazon/identity/auth/device/mw;->bj(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    :try_start_0
    new-instance v0, Lcom/amazon/identity/auth/device/ec;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/ec;-><init>(Landroid/content/Context;)V

    const-string v1, "device_type"

    .line 155
    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/cd;->a(Lcom/amazon/identity/auth/device/ec;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/framework/RemoteMAPException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    return-object v0

    :catch_0
    move-exception v0

    .line 165
    sget-object v1, Lcom/amazon/identity/auth/device/ib;->TAG:Ljava/lang/String;

    const-string v2, "Unable to retrieve Device Type from Amazon Device Information Component, which is present. Falling back to 3P value."

    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2593
    :cond_1
    invoke-static {}, Lcom/amazon/identity/auth/device/jh;->gT()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    goto :goto_0

    .line 2598
    :cond_2
    invoke-static {p0}, Lcom/amazon/identity/auth/device/hu;->an(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 2603
    :cond_3
    invoke-static {p0}, Lcom/amazon/identity/auth/device/mw;->aY(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_10

    .line 3212
    sget-object v0, Lcom/amazon/identity/auth/device/ib;->qP:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 3214
    sget-object p0, Lcom/amazon/identity/auth/device/ib;->qP:Ljava/lang/String;

    goto/16 :goto_5

    .line 3570
    :cond_5
    invoke-static {p0}, Lcom/amazon/identity/auth/device/iy;->aI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/identity/auth/device/ib;->dg(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 3223
    new-instance v1, Lcom/amazon/identity/auth/device/ds;

    invoke-direct {v1, p0}, Lcom/amazon/identity/auth/device/ds;-><init>(Landroid/content/Context;)V

    const-string p0, "A1MPSLFC7L5AFK"

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    if-eqz v0, :cond_a

    .line 4319
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v3, 0x1e

    if-eq v0, v3, :cond_9

    const/16 v3, 0x59

    if-eq v0, v3, :cond_8

    const/16 v3, 0x25

    if-eq v0, v3, :cond_7

    const/16 v3, 0x26

    if-eq v0, v3, :cond_6

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const-string v0, "AXWOV4XZMCHP1"

    goto :goto_1

    :pswitch_1
    const-string v0, "A3KMUO14KJF686"

    goto :goto_1

    :pswitch_2
    const-string v0, "A831W44HZ8ZX9"

    goto :goto_1

    :pswitch_3
    const-string v0, "A1CJBQKTERGM4W"

    goto :goto_1

    :pswitch_4
    const-string v0, "ANDK8J66NR3L"

    goto :goto_1

    :pswitch_5
    const-string v0, "AX5Q0TWIKDVK1"

    goto :goto_1

    :cond_6
    const-string v0, "A2MJ2WHF2K4V21"

    goto :goto_1

    :cond_7
    const-string v0, "AC5DXSR5G8JPX"

    goto :goto_1

    :cond_8
    const-string v0, "A2TR7IN2V8NATY"

    goto :goto_1

    :cond_9
    const-string v0, "A1C8TH2NPKC3A1"

    :goto_1
    move-object v2, v0

    :cond_a
    :goto_2
    if-nez v2, :cond_f

    .line 4243
    invoke-static {}, Lcom/amazon/identity/auth/device/jq;->hb()Lcom/amazon/identity/auth/device/jq;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 4246
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/jq;->ha()Ljava/lang/String;

    move-result-object v2

    .line 4247
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 4249
    sget-object p0, Lcom/amazon/identity/auth/device/ib;->TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Returning device type using AmazonDeviceSecurity: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    goto :goto_3

    .line 4255
    :cond_b
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/ds;->dr()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_4

    .line 4259
    :cond_c
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/ds;->ds()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4261
    sget-object p0, Lcom/amazon/identity/auth/device/ib;->TAG:Ljava/lang/String;

    const-string v0, "Device has Grover v1 installed"

    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "A1PY8QQU9P0WJV"

    goto :goto_4

    .line 4264
    :cond_d
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/ds;->dt()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4266
    sget-object p0, Lcom/amazon/identity/auth/device/ib;->TAG:Ljava/lang/String;

    const-string v0, "Device has Canary installed"

    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "A17I2SKGZYX7FH"

    goto :goto_4

    .line 4269
    :cond_e
    invoke-static {}, Lcom/amazon/identity/auth/device/jh;->gT()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_4

    :cond_f
    :goto_3
    move-object p0, v2

    .line 3218
    :goto_4
    sput-object p0, Lcom/amazon/identity/auth/device/ib;->qP:Ljava/lang/String;

    goto :goto_5

    .line 182
    :cond_10
    :try_start_1
    invoke-static {p0}, Lcom/amazon/identity/auth/device/api/DeviceDataStore;->getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/api/DeviceDataStore;

    move-result-object p0

    const-string v0, "DeviceType"

    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/api/DeviceDataStore;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Lcom/amazon/identity/auth/device/api/DeviceDataStoreException; {:try_start_1 .. :try_end_1} :catch_1

    .line 193
    :goto_5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 195
    sget-object v0, Lcom/amazon/identity/auth/device/ib;->TAG:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Returning device type: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    return-object p0

    .line 199
    :cond_11
    invoke-static {}, Lcom/amazon/identity/auth/device/il;->gF()V

    .line 202
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "No central device type found!  This is likely a device configuration issue."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception p0

    .line 188
    sget-object v0, Lcom/amazon/identity/auth/device/ib;->TAG:Ljava/lang/String;

    const-string v1, "Could not get central device type"

    invoke-static {v0, v1, p0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 189
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static az(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 348
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/ib;->r(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static dg(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, "[0-9A-F]{4}[0-9A-Z]{12}"

    .line 575
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    const/4 v1, 0x4

    .line 579
    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 304
    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/ib;->s(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 305
    invoke-static {p0, p2}, Lcom/amazon/identity/auth/device/ib;->s(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 307
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method static m(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 375
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "App_Device_Type_For_Central_Device_Type_"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 376
    invoke-static {p0, p2, v0}, Lcom/amazon/identity/auth/device/in;->q(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Package: %s device type: %s picked from metadata (manifest)"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v0, :cond_0

    new-array p0, v4, [Ljava/lang/Object;

    aput-object p2, p0, v3

    aput-object v0, p0, v2

    .line 379
    invoke-static {v1, p0}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const-string v0, "MAPDeviceType"

    .line 387
    invoke-static {p0, p2, v0}, Lcom/amazon/identity/auth/device/in;->q(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    new-array p1, v4, [Ljava/lang/Object;

    aput-object p2, p1, v3

    aput-object p0, p1, v2

    .line 390
    invoke-static {v1, p1}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0

    :cond_1
    new-array p0, v4, [Ljava/lang/Object;

    aput-object p2, p0, v3

    aput-object p1, p0, v2

    const-string p2, "No device type override found for the app %s. Will use the central device type %s"

    .line 397
    invoke-static {p2, p0}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1
.end method

.method public static n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 667
    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/ib;->p(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 669
    invoke-static {p0}, Lcom/amazon/identity/auth/device/ib;->aC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p2
.end method

.method public static p(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 286
    sget-object v0, Lcom/amazon/identity/auth/device/attribute/DeviceAttribute;->CentralDeviceType:Lcom/amazon/identity/auth/device/attribute/DeviceAttribute;

    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/it;->c(Landroid/content/Context;Lcom/amazon/identity/auth/device/attribute/DeviceAttribute;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static q(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 291
    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/ib;->s(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 297
    :cond_0
    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/ib;->p(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static r(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 366
    invoke-static {p0}, Lcom/amazon/identity/auth/device/ib;->ay(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 365
    invoke-static {p0, v0, p1}, Lcom/amazon/identity/auth/device/ib;->m(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static s(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 406
    sget-object v0, Lcom/amazon/identity/auth/device/ib;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v4, "%s is trying to get device type"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 409
    sget-object p1, Lcom/amazon/identity/auth/device/ib;->TAG:Ljava/lang/String;

    const-string v0, "Not specify package name, get central device type."

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    sget-object p1, Lcom/amazon/identity/auth/device/attribute/DeviceAttribute;->CentralDeviceType:Lcom/amazon/identity/auth/device/attribute/DeviceAttribute;

    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/it;->c(Landroid/content/Context;Lcom/amazon/identity/auth/device/attribute/DeviceAttribute;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 413
    :cond_0
    invoke-static {p0}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->E(Landroid/content/Context;)Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->bm(Ljava/lang/String;)Lcom/amazon/identity/auth/device/du;

    move-result-object p1

    if-nez p1, :cond_1

    .line 418
    sget-object p1, Lcom/amazon/identity/auth/device/ib;->TAG:Ljava/lang/String;

    const-string v0, "Cannot get remote map information even including the calling app itself! This could happen only the calling app is IMP!"

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    sget-object p1, Lcom/amazon/identity/auth/device/attribute/DeviceAttribute;->CentralDeviceType:Lcom/amazon/identity/auth/device/attribute/DeviceAttribute;

    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/it;->c(Landroid/content/Context;Lcom/amazon/identity/auth/device/attribute/DeviceAttribute;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 424
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/du;->getDeviceType()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/framework/RemoteMAPException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 428
    sget-object p1, Lcom/amazon/identity/auth/device/ib;->TAG:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v3

    const-string p0, "Failed to get device type for the Package. Error Message: %s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
