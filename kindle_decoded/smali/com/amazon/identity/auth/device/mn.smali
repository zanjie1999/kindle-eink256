.class public final Lcom/amazon/identity/auth/device/mn;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "mn"

.field private static mz:Landroid/content/Context;

.field private static vc:Lcom/amazon/identity/auth/device/mr;

.field private static volatile vd:Ljava/lang/Boolean;

.field private static volatile ve:Ljava/lang/Boolean;

.field private static volatile vf:Ljava/lang/Boolean;

.field private static volatile vg:Ljava/lang/Boolean;

.field private static final vh:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Lcom/amazon/identity/auth/device/eg;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/eg;-><init>()V

    const-string v1, "com.amazon.map.verbose.metrics"

    .line 44
    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/eg;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "yes"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/amazon/identity/auth/device/mn;->vh:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static P(Landroid/content/Context;)V
    .locals 0

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/amazon/identity/auth/device/mn;->mz:Landroid/content/Context;

    return-void
.end method

.method public static a(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;)Lcom/amazon/identity/auth/device/api/Callback;
    .locals 8

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    move-object v2, p0

    move-object v6, p2

    move-object v7, p3

    .line 582
    invoke-static/range {v0 .. v7}, Lcom/amazon/identity/auth/device/mn;->a(Lcom/amazon/identity/auth/device/ej;Lcom/amazon/identity/auth/device/ms;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/gv;Lcom/amazon/identity/auth/device/ed;ZLjava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;)Lcom/amazon/identity/auth/device/api/Callback;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/amazon/identity/auth/device/ej;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/Callback;
    .locals 1

    const/4 v0, 0x0

    .line 238
    invoke-static {p0, v0, p1}, Lcom/amazon/identity/auth/device/mn;->a(Lcom/amazon/identity/auth/device/ej;Lcom/amazon/identity/auth/device/ms;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/Callback;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/amazon/identity/auth/device/ej;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/gv;)Lcom/amazon/identity/auth/device/api/Callback;
    .locals 1

    const/4 v0, 0x0

    .line 243
    invoke-static {p0, v0, p1, p2}, Lcom/amazon/identity/auth/device/mn;->a(Lcom/amazon/identity/auth/device/ej;Lcom/amazon/identity/auth/device/ms;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/gv;)Lcom/amazon/identity/auth/device/api/Callback;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/amazon/identity/auth/device/ej;Lcom/amazon/identity/auth/device/ms;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/Callback;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 263
    invoke-static {p0, p1, p2, v0, v1}, Lcom/amazon/identity/auth/device/mn;->a(Lcom/amazon/identity/auth/device/ej;Lcom/amazon/identity/auth/device/ms;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ed;Z)Lcom/amazon/identity/auth/device/api/Callback;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/amazon/identity/auth/device/ej;Lcom/amazon/identity/auth/device/ms;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ed;)Lcom/amazon/identity/auth/device/api/Callback;
    .locals 1

    const/4 v0, 0x0

    .line 306
    invoke-static {p0, p1, p2, p3, v0}, Lcom/amazon/identity/auth/device/mn;->a(Lcom/amazon/identity/auth/device/ej;Lcom/amazon/identity/auth/device/ms;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ed;Z)Lcom/amazon/identity/auth/device/api/Callback;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/amazon/identity/auth/device/ej;Lcom/amazon/identity/auth/device/ms;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ed;Z)Lcom/amazon/identity/auth/device/api/Callback;
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    .line 331
    invoke-static/range {v0 .. v5}, Lcom/amazon/identity/auth/device/mn;->a(Lcom/amazon/identity/auth/device/ej;Lcom/amazon/identity/auth/device/ms;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/gv;Lcom/amazon/identity/auth/device/ed;Z)Lcom/amazon/identity/auth/device/api/Callback;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/amazon/identity/auth/device/ej;Lcom/amazon/identity/auth/device/ms;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/gv;)Lcom/amazon/identity/auth/device/api/Callback;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 287
    invoke-static/range {v0 .. v5}, Lcom/amazon/identity/auth/device/mn;->a(Lcom/amazon/identity/auth/device/ej;Lcom/amazon/identity/auth/device/ms;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/gv;Lcom/amazon/identity/auth/device/ed;Z)Lcom/amazon/identity/auth/device/api/Callback;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/amazon/identity/auth/device/ej;Lcom/amazon/identity/auth/device/ms;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/gv;Lcom/amazon/identity/auth/device/ed;Z)Lcom/amazon/identity/auth/device/api/Callback;
    .locals 8

    .line 341
    sget-object v7, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->UNRECOGNIZED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const-string v6, "com.amazon.dcp.sso.ErrorCode"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v7}, Lcom/amazon/identity/auth/device/mn;->a(Lcom/amazon/identity/auth/device/ej;Lcom/amazon/identity/auth/device/ms;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/gv;Lcom/amazon/identity/auth/device/ed;ZLjava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;)Lcom/amazon/identity/auth/device/api/Callback;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/amazon/identity/auth/device/ej;Lcom/amazon/identity/auth/device/ms;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/gv;Lcom/amazon/identity/auth/device/ed;ZLjava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;)Lcom/amazon/identity/auth/device/api/Callback;
    .locals 10

    .line 601
    new-instance v9, Lcom/amazon/identity/auth/device/mn$2;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p0

    move v3, p5

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/amazon/identity/auth/device/mn$2;-><init>(Lcom/amazon/identity/auth/device/ms;Lcom/amazon/identity/auth/device/ej;ZLcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/gv;Lcom/amazon/identity/auth/device/ed;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;)V

    return-object v9
.end method

.method public static a(Lcom/amazon/identity/auth/device/ms;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/Callback;
    .locals 1

    .line 202
    new-instance v0, Lcom/amazon/identity/auth/device/mn$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/identity/auth/device/mn$1;-><init>(Lcom/amazon/identity/auth/device/ms;Lcom/amazon/identity/auth/device/api/Callback;)V

    return-object v0
.end method

.method public static aA(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;
    .locals 1

    .line 123
    sget-boolean v0, Lcom/amazon/identity/auth/device/mn;->vh:Z

    if-eqz v0, :cond_0

    .line 125
    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/mn;->az(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object p0

    return-object p0

    .line 129
    :cond_0
    new-instance p0, Lcom/amazon/identity/auth/device/ms$b;

    invoke-direct {p0}, Lcom/amazon/identity/auth/device/ms$b;-><init>()V

    return-object p0
.end method

.method public static aB(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 179
    sget-object v0, Lcom/amazon/identity/auth/device/mn;->mz:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/mn;->aP(Landroid/content/Context;)Lcom/amazon/identity/auth/device/mr;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "MAP_3P"

    .line 180
    invoke-interface {v0, p1, p0, v1}, Lcom/amazon/identity/auth/device/mr;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static aC(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 188
    sget-object v0, Lcom/amazon/identity/auth/device/mn;->mz:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/mn;->aP(Landroid/content/Context;)Lcom/amazon/identity/auth/device/mr;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "MAP_FireOS"

    .line 189
    invoke-interface {v0, p1, p0, v1}, Lcom/amazon/identity/auth/device/mr;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized aP(Landroid/content/Context;)Lcom/amazon/identity/auth/device/mr;
    .locals 3

    const-class v0, Lcom/amazon/identity/auth/device/mn;

    monitor-enter v0

    if-nez p0, :cond_0

    .line 59
    :try_start_0
    sget-object p0, Lcom/amazon/identity/auth/device/mn;->TAG:Ljava/lang/String;

    const-string v1, "MetricsHelper has not been init yet. MAP will not be able to emit metrics"

    invoke-static {p0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    new-instance p0, Lcom/amazon/identity/auth/device/mq;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/amazon/identity/auth/device/mq;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 62
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MAPClientLib"

    invoke-static {p0, v1, v2}, Lcom/amazon/identity/auth/device/mn;->s(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/mr;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static aQ(Landroid/content/Context;)Z
    .locals 6

    .line 395
    sget-object v0, Lcom/amazon/identity/auth/device/mn;->vf:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 398
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 401
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 402
    invoke-static {p0}, Lcom/amazon/identity/auth/device/mn;->aS(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    :try_start_0
    const-string p0, "com.amazon.client.metrics.thirdparty.PeriodicMetricReporter"

    .line 406
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v1, "com.amazon.client.metrics.thirdparty.PeriodicMetricReporterImpl"

    .line 407
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string/jumbo v1, "startRecordingPeriodically"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    .line 409
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-class v5, Ljava/util/concurrent/TimeUnit;

    aput-object v5, v2, v3

    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v1, "getMetricEvent"

    new-array v2, v4, [Ljava/lang/Class;

    .line 410
    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 412
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 413
    sget-object p0, Lcom/amazon/identity/auth/device/mn;->TAG:Ljava/lang/String;

    const-string v1, "ThirdParty Periodic metrics is supported"

    invoke-static {p0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 421
    :catch_0
    sget-object p0, Lcom/amazon/identity/auth/device/mn;->TAG:Ljava/lang/String;

    const-string v1, "ThirdParty Periodic metrics library is too old"

    invoke-static {p0, v1}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 417
    :catch_1
    sget-object p0, Lcom/amazon/identity/auth/device/mn;->TAG:Ljava/lang/String;

    const-string v1, "ThirdParty Periodic metrics not supported"

    invoke-static {p0, v1}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    :cond_1
    :goto_0
    sput-object v0, Lcom/amazon/identity/auth/device/mn;->vf:Ljava/lang/Boolean;

    .line 426
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static aR(Landroid/content/Context;)Z
    .locals 0

    .line 469
    invoke-static {p0}, Lcom/amazon/identity/auth/device/mn;->aS(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/amazon/identity/auth/device/mn;->iQ()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static aS(Landroid/content/Context;)Z
    .locals 6

    .line 474
    const-class v0, Ljava/lang/String;

    sget-object v1, Lcom/amazon/identity/auth/device/mn;->vd:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 477
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 480
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :try_start_0
    const-string v2, "com.amazon.client.metrics.thirdparty.AndroidMetricsFactoryImpl"

    .line 483
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v2, "com.amazon.client.metrics.thirdparty.MetricsFactory"

    .line 484
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "createConcurrentMetricEvent"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    .line 488
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 490
    invoke-static {}, Lcom/amazon/identity/auth/device/mw;->iS()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 492
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 493
    invoke-static {}, Lcom/amazon/identity/auth/device/il;->gG()V

    goto :goto_0

    .line 499
    :cond_1
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 500
    sget-object v0, Lcom/amazon/identity/auth/device/mn;->TAG:Ljava/lang/String;

    const-string v2, "ThirdParty DCP metrics is supported"

    invoke-static {v0, v2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 510
    :catch_0
    sget-object v0, Lcom/amazon/identity/auth/device/mn;->TAG:Ljava/lang/String;

    const-string v2, "ThirdParty DCP metrics is too old"

    invoke-static {v0, v2}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 506
    :catch_1
    sget-object v0, Lcom/amazon/identity/auth/device/mn;->TAG:Ljava/lang/String;

    const-string v2, "ThirdParty DCP metrics not supported"

    invoke-static {v0, v2}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    :goto_0
    sput-object v1, Lcom/amazon/identity/auth/device/mn;->vd:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/amazon/identity/auth/device/jh;->gT()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/amazon/identity/auth/device/mw;->aZ(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 518
    invoke-static {}, Lcom/amazon/identity/auth/device/il;->gG()V

    .line 519
    sget-object p0, Lcom/amazon/identity/auth/device/mn;->TAG:Ljava/lang/String;

    const-string v0, "ThirdParty Metrics component is not integrated. Please integrate with latest metrics component."

    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lcom/amazon/identity/auth/device/mn;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static az(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;
    .locals 1

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 110
    sget-object p1, Lcom/amazon/identity/auth/device/mn;->mz:Landroid/content/Context;

    .line 111
    invoke-static {p1}, Lcom/amazon/identity/auth/device/mn;->aP(Landroid/content/Context;)Lcom/amazon/identity/auth/device/mr;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1175
    invoke-interface {p1, p0}, Lcom/amazon/identity/auth/device/mr;->eM(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object p0

    goto :goto_0

    .line 1179
    :cond_0
    new-instance p0, Lcom/amazon/identity/auth/device/ms$b;

    invoke-direct {p0}, Lcom/amazon/identity/auth/device/ms$b;-><init>()V

    .line 112
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/ms;->start()V

    return-object p0
.end method

.method public static b(Lcom/amazon/identity/auth/device/api/RegistrationType;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, "NullRegType"

    return-object p0

    .line 567
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs b(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 145
    sget-object v0, Lcom/amazon/identity/auth/device/mn;->mz:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/mn;->aP(Landroid/content/Context;)Lcom/amazon/identity/auth/device/mr;

    move-result-object v0

    .line 146
    invoke-interface {v0, p0, p1}, Lcom/amazon/identity/auth/device/mr;->b(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized eR(Ljava/lang/String;)Lcom/amazon/identity/auth/device/mr;
    .locals 3

    const-class v0, Lcom/amazon/identity/auth/device/mn;

    monitor-enter v0

    .line 347
    :try_start_0
    sget-object v1, Lcom/amazon/identity/auth/device/mn;->mz:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 349
    sget-object p0, Lcom/amazon/identity/auth/device/mn;->TAG:Ljava/lang/String;

    const-string v1, "MetricsHelper has not been init yet. MAP will not be able to emit metrics"

    invoke-static {p0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    new-instance p0, Lcom/amazon/identity/auth/device/mq;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/amazon/identity/auth/device/mq;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 352
    :cond_0
    :try_start_1
    sget-object v1, Lcom/amazon/identity/auth/device/mn;->mz:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 353
    sget-object v2, Lcom/amazon/identity/auth/device/mn;->mz:Landroid/content/Context;

    invoke-static {v2, v1, p0}, Lcom/amazon/identity/auth/device/mn;->t(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/mr;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static iP()Z
    .locals 6

    .line 431
    sget-object v0, Lcom/amazon/identity/auth/device/mn;->vg:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 434
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 437
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 438
    invoke-static {}, Lcom/amazon/identity/auth/device/mn;->iQ()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.amazon.client.metrics.PeriodicMetricReporter"

    .line 442
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "com.amazon.client.metrics.PeriodicMetricReporterImpl"

    .line 443
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string/jumbo v2, "startRecordingPeriodically"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    .line 445
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v0

    const/4 v4, 0x1

    const-class v5, Ljava/util/concurrent/TimeUnit;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "getMetricEvent"

    new-array v3, v0, [Ljava/lang/Class;

    .line 446
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 448
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 449
    sget-object v2, Lcom/amazon/identity/auth/device/mn;->TAG:Ljava/lang/String;

    const-string v3, "FireOS Periodic metrics is supported"

    invoke-static {v2, v3}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 458
    :catch_0
    sget-object v1, Lcom/amazon/identity/auth/device/mn;->TAG:Ljava/lang/String;

    const-string v2, "FireOS Periodic metrics library is too old"

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 453
    :catch_1
    sget-object v1, Lcom/amazon/identity/auth/device/mn;->TAG:Ljava/lang/String;

    const-string v2, "FireOS Periodic metrics not supported"

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 464
    :cond_1
    :goto_0
    sput-object v0, Lcom/amazon/identity/auth/device/mn;->vg:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static iQ()Z
    .locals 6

    .line 526
    const-class v0, Ljava/lang/String;

    sget-object v1, Lcom/amazon/identity/auth/device/mn;->ve:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 529
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 532
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :try_start_0
    const-string v2, "com.amazon.client.metrics.AndroidMetricsFactoryImpl"

    .line 535
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v2, "com.amazon.client.metrics.MetricsFactory"

    .line 536
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "createConcurrentMetricEvent"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    .line 540
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 542
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 543
    sget-object v0, Lcom/amazon/identity/auth/device/mn;->TAG:Ljava/lang/String;

    const-string v2, "FireOS DCP metrics is supported"

    invoke-static {v0, v2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 551
    :catch_0
    sget-object v0, Lcom/amazon/identity/auth/device/mn;->TAG:Ljava/lang/String;

    const-string v2, "FireOS DCP metrics is too old"

    invoke-static {v0, v2}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 547
    :catch_1
    sget-object v0, Lcom/amazon/identity/auth/device/mn;->TAG:Ljava/lang/String;

    const-string v2, "FireOS DCP metrics not supported"

    invoke-static {v0, v2}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    :goto_0
    sput-object v1, Lcom/amazon/identity/auth/device/mn;->ve:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/amazon/identity/auth/device/jh;->gT()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/amazon/identity/auth/device/mn;->mz:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/mw;->aZ(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 559
    invoke-static {}, Lcom/amazon/identity/auth/device/il;->gG()V

    .line 560
    sget-object v0, Lcom/amazon/identity/auth/device/mn;->TAG:Ljava/lang/String;

    const-string v2, "FireOS Metrics component is not integrated. Please integrate with latest metrics component."

    invoke-static {v0, v2}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static varargs incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 167
    sget-object v0, Lcom/amazon/identity/auth/device/mn;->mz:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/mn;->aP(Landroid/content/Context;)Lcom/amazon/identity/auth/device/mr;

    move-result-object v0

    .line 168
    invoke-interface {v0, p0, p1}, Lcom/amazon/identity/auth/device/mr;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 169
    invoke-interface {v0}, Lcom/amazon/identity/auth/device/mr;->iL()V

    return-void
.end method

.method private static declared-synchronized s(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/mr;
    .locals 3

    const-class v0, Lcom/amazon/identity/auth/device/mn;

    monitor-enter v0

    .line 67
    :try_start_0
    sget-object v1, Lcom/amazon/identity/auth/device/mn;->vc:Lcom/amazon/identity/auth/device/mr;

    .line 69
    instance-of v2, v1, Lcom/amazon/identity/auth/device/mu;

    if-nez v2, :cond_2

    instance-of v2, v1, Lcom/amazon/identity/auth/device/mk;

    if-eqz v2, :cond_0

    goto :goto_1

    .line 74
    :cond_0
    invoke-static {}, Lcom/amazon/identity/auth/device/jh;->gT()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    sget-object p0, Lcom/amazon/identity/auth/device/mn;->TAG:Ljava/lang/String;

    const-string p1, "Running in unit test, creating logging metrics collector"

    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    new-instance p0, Lcom/amazon/identity/auth/device/mq;

    const-string p1, "UnitTest"

    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/mq;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/amazon/identity/auth/device/mn;->t(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/mr;

    move-result-object p0

    .line 84
    :goto_0
    sput-object p0, Lcom/amazon/identity/auth/device/mn;->vc:Lcom/amazon/identity/auth/device/mr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit v0

    return-object p0

    .line 71
    :cond_2
    :goto_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized t(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/mr;
    .locals 3

    const-class v0, Lcom/amazon/identity/auth/device/mn;

    monitor-enter v0

    if-eqz p0, :cond_1

    .line 363
    :try_start_0
    invoke-static {p0}, Lcom/amazon/identity/auth/device/mn;->aS(Landroid/content/Context;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_0

    .line 367
    :try_start_1
    sget-object v1, Lcom/amazon/identity/auth/device/mn;->TAG:Ljava/lang/String;

    const-string v2, "Using the ThirdPartyPlatformDCPMetricsCollector"

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    new-instance v1, Lcom/amazon/identity/auth/device/mu;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/identity/auth/device/mu;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 372
    :try_start_2
    sget-object p1, Lcom/amazon/identity/auth/device/mn;->TAG:Ljava/lang/String;

    const-string p2, "Error initializing ThirdPartyPlatformDCPMetricsCollector"

    invoke-static {p1, p2, p0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 375
    :cond_0
    invoke-static {}, Lcom/amazon/identity/auth/device/mn;->iQ()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v1, :cond_1

    .line 379
    :try_start_3
    sget-object v1, Lcom/amazon/identity/auth/device/mn;->TAG:Ljava/lang/String;

    const-string v2, "Using the FireOSPlatformDCPMetricsCollector"

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    new-instance v1, Lcom/amazon/identity/auth/device/mk;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/identity/auth/device/mk;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception p0

    .line 384
    :try_start_4
    sget-object p1, Lcom/amazon/identity/auth/device/mn;->TAG:Ljava/lang/String;

    const-string p2, "Error initializing FireOSPlatformDCPMetricsCollector"

    invoke-static {p1, p2, p0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 389
    :cond_1
    :goto_0
    sget-object p0, Lcom/amazon/identity/auth/device/mn;->TAG:Ljava/lang/String;

    const-string p1, "Using the PlatformLoggingMetricsCollector"

    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    new-instance p0, Lcom/amazon/identity/auth/device/mq;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/mq;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit v0

    return-object p0

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method
