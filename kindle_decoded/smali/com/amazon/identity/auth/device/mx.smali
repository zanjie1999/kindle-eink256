.class public final Lcom/amazon/identity/auth/device/mx;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/platform/weblab/MAPWeblabClient;


# static fields
.field private static final TAG:Ljava/lang/String; = "mx"

.field private static vG:Lcom/amazon/identity/auth/device/mx;

.field private static volatile vH:Ljava/lang/Boolean;


# instance fields
.field private ar:Lcom/amazon/identity/auth/device/ea;

.field private volatile mClient:Lcom/amazon/weblab/mobile/IMobileWeblabClient;

.field private vI:Lcom/amazon/identity/auth/device/env/EnvironmentUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->cc()Lcom/amazon/identity/auth/device/env/EnvironmentUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/mx;->vI:Lcom/amazon/identity/auth/device/env/EnvironmentUtils;

    .line 54
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object v0

    const-string v1, "dcp_device_info"

    .line 55
    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/identity/auth/device/ea;

    iput-object v0, p0, Lcom/amazon/identity/auth/device/mx;->ar:Lcom/amazon/identity/auth/device/ea;

    .line 56
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/mx;->bq(Landroid/content/Context;)Lcom/amazon/weblab/mobile/IMobileWeblabClient;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/mx;->mClient:Lcom/amazon/weblab/mobile/IMobileWeblabClient;

    return-void
.end method

.method public static declared-synchronized bp(Landroid/content/Context;)Lcom/amazon/identity/auth/device/mx;
    .locals 2

    const-class v0, Lcom/amazon/identity/auth/device/mx;

    monitor-enter v0

    .line 72
    :try_start_0
    sget-object v1, Lcom/amazon/identity/auth/device/mx;->vG:Lcom/amazon/identity/auth/device/mx;

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/amazon/identity/auth/device/mx;->bu(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    .line 74
    new-instance v1, Lcom/amazon/identity/auth/device/mx;

    invoke-direct {v1, p0}, Lcom/amazon/identity/auth/device/mx;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/amazon/identity/auth/device/mx;->vG:Lcom/amazon/identity/auth/device/mx;

    .line 76
    :cond_0
    sget-object p0, Lcom/amazon/identity/auth/device/mx;->vG:Lcom/amazon/identity/auth/device/mx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized bu(Landroid/content/Context;)Z
    .locals 13

    const-class v0, Ljava/lang/String;

    const-class v1, Lcom/amazon/identity/auth/device/mx;

    monitor-enter v1

    .line 227
    :try_start_0
    sget-object v2, Lcom/amazon/identity/auth/device/mx;->vH:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 229
    sget-object p0, Lcom/amazon/identity/auth/device/mx;->vH:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return p0

    .line 231
    :cond_0
    :try_start_1
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_2
    const-string v5, "com.amazon.weblab.mobile.settings.MobileWeblabClientAttributes"

    .line 236
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x5

    new-array v7, v6, [Ljava/lang/Class;

    aput-object v0, v7, v4

    aput-object v0, v7, v3

    const/4 v8, 0x2

    aput-object v0, v7, v8

    .line 237
    const-class v9, Lcom/amazon/weblab/mobile/settings/MobileWeblabOS;

    const/4 v10, 0x3

    aput-object v9, v7, v10

    const/4 v9, 0x4

    aput-object v0, v7, v9

    invoke-virtual {v5, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    const-string v7, "addWeblab"

    new-array v11, v8, [Ljava/lang/Class;

    aput-object v0, v11, v4

    aput-object v0, v11, v3

    .line 242
    invoke-virtual {v5, v7, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v5, "com.amazon.weblab.mobile.settings.MobileWeblabRuntimeConfiguration"

    .line 248
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    new-array v7, v3, [Ljava/lang/Class;

    aput-object v0, v7, v4

    .line 249
    invoke-virtual {v5, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    const-string/jumbo v7, "setEndpoint"

    new-array v11, v3, [Ljava/lang/Class;

    .line 250
    const-class v12, Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;

    aput-object v12, v11, v4

    invoke-virtual {v5, v7, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string/jumbo v7, "setUpdateAtInitEnabled"

    new-array v11, v3, [Ljava/lang/Class;

    .line 252
    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v12, v11, v4

    invoke-virtual {v5, v7, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v5, "com.amazon.weblab.mobile.MobileWeblabClientFactory"

    .line 257
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v7, "createMobileWeblabClient"

    const/4 v11, 0x6

    new-array v11, v11, [Ljava/lang/Class;

    .line 258
    const-class v12, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;

    aput-object v12, v11, v4

    const-class v12, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;

    aput-object v12, v11, v3

    aput-object v0, v11, v8

    aput-object v0, v11, v10

    aput-object v0, v11, v9

    const-class v8, Landroid/content/Context;

    aput-object v8, v11, v6

    invoke-virtual {v5, v7, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v5, "com.amazon.weblab.mobile.IMobileWeblabClient"

    .line 268
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "getWeblab"

    new-array v7, v3, [Ljava/lang/Class;

    aput-object v0, v7, v4

    .line 269
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v0, "com.amazon.weblab.mobile.IMobileWeblab"

    .line 274
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v5, "getTreatmentAndRecordTrigger"

    new-array v6, v4, [Ljava/lang/Class;

    .line 275
    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v0, "com.amazon.weblab.mobile.IMobileWeblabTreatmentAndTriggerResult"

    .line 279
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v5, "getTreatment"

    new-array v6, v4, [Ljava/lang/Class;

    .line 280
    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 282
    sget-object v0, Lcom/amazon/identity/auth/device/mx;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 284
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 298
    :try_start_3
    sget-object v5, Lcom/amazon/identity/auth/device/mx;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Other exception occurs: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 299
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 298
    invoke-static {v5, v6, v0}, Lcom/amazon/identity/auth/device/il;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 293
    sget-object v5, Lcom/amazon/identity/auth/device/mx;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "MobileWeblabAndroidClient API changed "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 294
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 293
    invoke-static {v5, v6, v0}, Lcom/amazon/identity/auth/device/il;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 288
    sget-object v5, Lcom/amazon/identity/auth/device/mx;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "MobileWeblabAndroidClient is not supported: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 289
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 288
    invoke-static {v5, v0}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/amazon/identity/auth/device/mn;->aR(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/amazon/identity/auth/device/mx;->vH:Ljava/lang/Boolean;

    .line 303
    sget-object p0, Lcom/amazon/identity/auth/device/mx;->TAG:Ljava/lang/String;

    .line 304
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v2, "Current App support weblab? %b"

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v5, Lcom/amazon/identity/auth/device/mx;->vH:Ljava/lang/Boolean;

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 303
    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    sget-object p0, Lcom/amazon/identity/auth/device/mx;->vH:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0
.end method

.method private eV(Ljava/lang/String;)Lcom/amazon/identity/platform/weblab/Weblab;
    .locals 3

    .line 326
    :try_start_0
    invoke-static {p1}, Lcom/amazon/identity/platform/weblab/Weblab;->eW(Ljava/lang/String;)Lcom/amazon/identity/platform/weblab/Weblab;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 330
    sget-object v1, Lcom/amazon/identity/auth/device/mx;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "Error while converting weblab "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/amazon/identity/auth/device/il;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method bq(Landroid/content/Context;)Lcom/amazon/weblab/mobile/IMobileWeblabClient;
    .locals 6

    .line 81
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/mx;->bt(Landroid/content/Context;)Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;

    move-result-object v0

    .line 82
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/mx;->bs(Landroid/content/Context;)Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;

    move-result-object v1

    .line 83
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/mx;->iW()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/identity/auth/device/mx;->vI:Lcom/amazon/identity/auth/device/env/EnvironmentUtils;

    .line 84
    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->cn()Ljava/lang/String;

    move-result-object v3

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v4, 0x0

    .line 81
    invoke-static/range {v0 .. v5}, Lcom/amazon/weblab/mobile/MobileWeblabClientFactory;->createMobileWeblabClient(Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/amazon/weblab/mobile/IMobileWeblabClient;

    move-result-object p1

    .line 87
    sget-object v0, Lcom/amazon/identity/auth/device/mx;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/amazon/weblab/mobile/IMobileWeblabClient;->getIMobileWeblabClientAttributes()Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-interface {p1}, Lcom/amazon/weblab/mobile/IMobileWeblabClient;->getMarketplace()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "Weblab instance: %s, weblab market: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    return-object p1
.end method

.method br(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 95
    invoke-static {p1}, Lcom/amazon/identity/auth/device/mw;->bc(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 101
    :cond_0
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ib;->aw(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 103
    :goto_0
    sget-object v0, Lcom/amazon/identity/auth/device/mx;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Weblab APP name is: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    return-object p1
.end method

.method bs(Landroid/content/Context;)Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;
    .locals 2

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "mapweblab"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    .line 124
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    sget-object v0, Lcom/amazon/identity/auth/device/mx;->TAG:Ljava/lang/String;

    const-string v1, "can not create weblab folder"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_0
    new-instance v0, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;

    .line 134
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;-><init>(Ljava/lang/String;)V

    .line 135
    sget-object p1, Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;->PROD:Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;

    invoke-virtual {v0, p1}, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;->setEndpoint(Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;)V

    const/4 p1, 0x1

    .line 136
    invoke-virtual {v0, p1}, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;->setUpdateAtInitEnabled(Z)V

    return-object v0
.end method

.method bt(Landroid/content/Context;)Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;
    .locals 7

    .line 143
    invoke-static {p1}, Lcom/amazon/identity/auth/device/mw;->ba(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    sget-object v0, Lcom/amazon/identity/auth/device/mx;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 148
    sget-object v0, Lcom/amazon/weblab/mobile/settings/MobileWeblabOS;->FIRE_OS:Lcom/amazon/weblab/mobile/settings/MobileWeblabOS;

    goto :goto_0

    .line 153
    :cond_0
    sget-object v0, Lcom/amazon/identity/auth/device/mx;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 155
    sget-object v0, Lcom/amazon/weblab/mobile/settings/MobileWeblabOS;->ANDROID:Lcom/amazon/weblab/mobile/settings/MobileWeblabOS;

    :goto_0
    move-object v5, v0

    .line 157
    new-instance v0, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;

    .line 158
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/mx;->br(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 160
    invoke-static {}, Lcom/amazon/identity/auth/device/hs;->gv()Ljava/lang/String;

    move-result-object v4

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 162
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const-string v2, "MAP_ANDROID_ID"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/weblab/mobile/settings/MobileWeblabOS;Ljava/lang/String;)V

    .line 163
    invoke-static {}, Lcom/amazon/identity/platform/weblab/Weblab;->iX()[Lcom/amazon/identity/platform/weblab/Weblab;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 165
    invoke-virtual {v3}, Lcom/amazon/identity/platform/weblab/Weblab;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/amazon/identity/platform/weblab/Weblab;->iY()Lcom/amazon/identity/platform/weblab/Weblab$Treatment;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->addWeblab(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method eU(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 313
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    .line 315
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public getTreatmentAndRecordTrigger(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 173
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/mx;->eV(Ljava/lang/String;)Lcom/amazon/identity/platform/weblab/Weblab;

    move-result-object v0

    if-nez v0, :cond_0

    .line 176
    sget-object p1, Lcom/amazon/identity/auth/device/mx;->TAG:Ljava/lang/String;

    const-string v0, "Cannot converting weblab, return C"

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    sget-object p1, Lcom/amazon/identity/platform/weblab/Weblab$Treatment;->C:Lcom/amazon/identity/platform/weblab/Weblab$Treatment;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 190
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/mx;->mClient:Lcom/amazon/weblab/mobile/IMobileWeblabClient;

    invoke-virtual {v0}, Lcom/amazon/identity/platform/weblab/Weblab;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/weblab/mobile/IMobileWeblabClient;->getWeblab(Ljava/lang/String;)Lcom/amazon/weblab/mobile/IMobileWeblab;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/weblab/mobile/IMobileWeblab;->getTreatmentAndRecordTrigger()Lcom/amazon/weblab/mobile/IMobileWeblabTreatmentAndTriggerResult;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/weblab/mobile/IMobileWeblabTreatmentAndTriggerResult;->getFutureMobileWeblabTrigger()Ljava/util/concurrent/Future;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 193
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    .line 194
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v5, v6, v7}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/weblab/mobile/model/MobileWeblabTriggerResult;

    .line 195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 196
    sget-object v3, Lcom/amazon/identity/auth/device/mx;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "MAP weblab trigger result: "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 197
    sget-object v3, Lcom/amazon/identity/auth/device/mx;->TAG:Ljava/lang/String;

    const-string v4, "MAP weblab updating time cost in milli sec: "

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v3}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    const-string v3, "MAP_WeblabTriggerResult_"

    .line 198
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "MAP_WeblabTimeCost_"

    .line 199
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 201
    :cond_1
    iget-object v1, p0, Lcom/amazon/identity/auth/device/mx;->mClient:Lcom/amazon/weblab/mobile/IMobileWeblabClient;

    invoke-virtual {v0}, Lcom/amazon/identity/platform/weblab/Weblab;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/amazon/weblab/mobile/IMobileWeblabClient;->getWeblab(Ljava/lang/String;)Lcom/amazon/weblab/mobile/IMobileWeblab;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/weblab/mobile/IMobileWeblab;->getTreatmentAndRecordTrigger()Lcom/amazon/weblab/mobile/IMobileWeblabTreatmentAndTriggerResult;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/weblab/mobile/IMobileWeblabTreatmentAndTriggerResult;->getTreatment()Ljava/lang/String;

    move-result-object v1

    .line 202
    sget-object v3, Lcom/amazon/identity/auth/device/mx;->TAG:Ljava/lang/String;

    const-string v4, "MAP weblab value for %s: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v2

    const/4 p1, 0x1

    aput-object v1, v5, p1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v3}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    const-string p1, "MAP_WeblabValue_"

    .line 203
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 218
    invoke-virtual {v0}, Lcom/amazon/identity/platform/weblab/Weblab;->iY()Lcom/amazon/identity/platform/weblab/Weblab$Treatment;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    .line 219
    sget-object v1, Lcom/amazon/identity/auth/device/mx;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Exception when trying to get the weblab, fall back to default: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    .line 208
    :catch_1
    invoke-virtual {v0}, Lcom/amazon/identity/platform/weblab/Weblab;->iY()Lcom/amazon/identity/platform/weblab/Weblab$Treatment;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    .line 209
    sget-object v0, Lcom/amazon/identity/auth/device/mx;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Timeout in weblab service call, returning default value: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "MAPWeblabTimeOut"

    invoke-static {v0, v1, v2, v3}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method iW()Ljava/lang/String;
    .locals 4

    .line 110
    iget-object v0, p0, Lcom/amazon/identity/auth/device/mx;->ar:Lcom/amazon/identity/auth/device/ea;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ea;->dR()Ljava/lang/String;

    move-result-object v0

    .line 111
    sget-object v1, Lcom/amazon/identity/auth/device/mx;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "The dsn for session id: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/mx;->eU(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    sget-object v1, Lcom/amazon/identity/auth/device/mx;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Session ID: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    return-object v0
.end method
