.class public final Lcom/amazon/identity/auth/device/framework/IsolatedModeSwitcher;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.framework.IsolatedModeSwitcher"

.field static volatile jV:Ljava/lang/Boolean;

.field private static volatile jW:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static doesAppNeedToSwitchToSSOMode(Landroid/content/Context;)Z
    .locals 1

    .line 225
    invoke-static {p0}, Lcom/amazon/identity/auth/device/framework/IsolatedModeSwitcher;->isAppInRuntimeIsolatedMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;-><init>(Landroid/content/Context;)V

    .line 229
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->getAccount()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 231
    sget-object p0, Lcom/amazon/identity/auth/device/framework/IsolatedModeSwitcher;->TAG:Ljava/lang/String;

    const-string v0, "No account detected in isolated mode."

    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static doesAppSupportRuntimeIsolatedMode(Landroid/content/Context;)Z
    .locals 2

    .line 209
    sget-object v0, Lcom/amazon/identity/auth/device/framework/IsolatedModeSwitcher;->jV:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 212
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MAPRuntimeIsolateForAccountPool"

    .line 211
    invoke-static {p0, v0, v1}, Lcom/amazon/identity/auth/device/in;->q(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/amazon/identity/auth/device/framework/IsolatedModeSwitcher;->jV:Ljava/lang/Boolean;

    .line 215
    :cond_0
    sget-object p0, Lcom/amazon/identity/auth/device/framework/IsolatedModeSwitcher;->jV:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 217
    sget-object p0, Lcom/amazon/identity/auth/device/framework/IsolatedModeSwitcher;->TAG:Ljava/lang/String;

    const-string v0, "Application supports runtime isolated mode switch."

    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_1
    sget-object p0, Lcom/amazon/identity/auth/device/framework/IsolatedModeSwitcher;->jV:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static declared-synchronized isAppInIsolatedMode(Landroid/content/Context;)Z
    .locals 2

    const-class v0, Lcom/amazon/identity/auth/device/framework/IsolatedModeSwitcher;

    monitor-enter v0

    .line 124
    :try_start_0
    invoke-static {p0}, Lcom/amazon/identity/auth/device/framework/IsolatedModeSwitcher;->isAppInStaticIsolatedMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    sget-object p0, Lcom/amazon/identity/auth/device/framework/IsolatedModeSwitcher;->TAG:Ljava/lang/String;

    const-string v1, "The application is in static isolated mode"

    invoke-static {p0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    .line 129
    monitor-exit v0

    return p0

    .line 133
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/amazon/identity/auth/device/framework/IsolatedModeSwitcher;->isAppInRuntimeIsolatedMode(Landroid/content/Context;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static isAppInRuntimeIsolatedMode(Landroid/content/Context;)Z
    .locals 3

    .line 110
    invoke-static {p0}, Lcom/amazon/identity/auth/device/framework/IsolatedModeSwitcher;->doesAppSupportRuntimeIsolatedMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    new-instance v0, Lcom/amazon/identity/auth/device/gm;

    const-string/jumbo v1, "runtime_isolated_mode"

    invoke-direct {v0, p0, v1}, Lcom/amazon/identity/auth/device/gm;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p0, "isolated"

    .line 114
    invoke-virtual {v0, p0}, Lcom/amazon/identity/auth/device/gm;->ct(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 115
    sget-object v0, Lcom/amazon/identity/auth/device/framework/IsolatedModeSwitcher;->TAG:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Restoring current runtime isolated mode: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isAppInStaticIsolatedMode(Landroid/content/Context;)Z
    .locals 7

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MAPIsolateApplication"

    .line 53
    invoke-static {p0, v0, v1}, Lcom/amazon/identity/auth/device/in;->o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 62
    :cond_0
    sget-object v0, Lcom/amazon/identity/auth/device/framework/IsolatedModeSwitcher;->jW:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 64
    sget-object p0, Lcom/amazon/identity/auth/device/framework/IsolatedModeSwitcher;->jW:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 67
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MAPIsolateApplicationOnDevice"

    .line 66
    invoke-static {p0, v0, v2}, Lcom/amazon/identity/auth/device/in;->p(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 70
    invoke-static {v0}, Lcom/amazon/identity/auth/device/hw;->f(Ljava/util/Collection;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_7

    .line 72
    new-instance v2, Lcom/amazon/identity/auth/device/ds;

    invoke-direct {v2, p0}, Lcom/amazon/identity/auth/device/ds;-><init>(Landroid/content/Context;)V

    .line 73
    sget-object v4, Lcom/amazon/identity/auth/device/framework/IsolatedModeSwitcher;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "App needs isolation on devices: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "FireOS"

    .line 76
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {p0}, Lcom/amazon/identity/auth/device/mw;->bb(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 78
    invoke-static {v1, v5}, Lcom/amazon/identity/auth/device/framework/IsolatedModeSwitcher;->setAppInStaticIsolatedModeAndReturn(ZLjava/lang/String;)Z

    move-result p0

    return p0

    :cond_3
    const-string v5, "Canary"

    .line 80
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/ds;->dv()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 82
    invoke-static {v1, v5}, Lcom/amazon/identity/auth/device/framework/IsolatedModeSwitcher;->setAppInStaticIsolatedModeAndReturn(ZLjava/lang/String;)Z

    move-result p0

    return p0

    :cond_4
    const-string v5, "Grover"

    .line 84
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/ds;->du()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 86
    invoke-static {v1, v5}, Lcom/amazon/identity/auth/device/framework/IsolatedModeSwitcher;->setAppInStaticIsolatedModeAndReturn(ZLjava/lang/String;)Z

    move-result p0

    return p0

    :cond_5
    const-string v5, "3P"

    .line 88
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/ds;->dw()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 90
    invoke-static {v1, v5}, Lcom/amazon/identity/auth/device/framework/IsolatedModeSwitcher;->setAppInStaticIsolatedModeAndReturn(ZLjava/lang/String;)Z

    move-result p0

    return p0

    :cond_6
    const/4 p0, 0x0

    .line 93
    invoke-static {v3, p0}, Lcom/amazon/identity/auth/device/framework/IsolatedModeSwitcher;->setAppInStaticIsolatedModeAndReturn(ZLjava/lang/String;)Z

    move-result p0

    return p0

    :cond_7
    return v3
.end method

.method private static preActionOnSwitch(Landroid/content/Context;Z)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 243
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 244
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/amazon/identity/auth/device/bootstrapSSO/BootstrapSSOService;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 245
    invoke-virtual {v1, v2, p1, v0}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-array p0, v0, [Ljava/lang/Object;

    const/4 p1, 0x0

    const-string v0, "BootstrapSSOService"

    aput-object v0, p0, p1

    const-string p1, "Component Class %s not found in manifest"

    .line 249
    invoke-static {p1, p0}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static setAppInStaticIsolatedModeAndReturn(ZLjava/lang/String;)Z
    .locals 4

    if-eqz p0, :cond_0

    .line 100
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    sget-object v0, Lcom/amazon/identity/auth/device/framework/IsolatedModeSwitcher;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "Current platform is %s, entering static isolation mode"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Lcom/amazon/identity/auth/device/framework/IsolatedModeSwitcher;->jW:Ljava/lang/Boolean;

    return p0
.end method

.method public static declared-synchronized switchAppToIsolatedModeIfNecessary(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    const-class v0, Lcom/amazon/identity/auth/device/framework/IsolatedModeSwitcher;

    monitor-enter v0

    .line 139
    :try_start_0
    invoke-static {p0}, Lcom/amazon/identity/auth/device/framework/IsolatedModeSwitcher;->doesAppSupportRuntimeIsolatedMode(Landroid/content/Context;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 141
    monitor-exit v0

    return-void

    .line 144
    :cond_0
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 147
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MAPRuntimeIsolateForAccountPool"

    .line 146
    invoke-static {p0, v1, v2}, Lcom/amazon/identity/auth/device/in;->q(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "The account is in account pool: %s. Runtime isolated mode needed for account pool: %s."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v5, 0x1

    aput-object v1, v3, v5

    .line 149
    invoke-static {v2, v3}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 152
    sget-object p0, Lcom/amazon/identity/auth/device/framework/IsolatedModeSwitcher;->TAG:Ljava/lang/String;

    const-string p1, "Keep application in SSO mode."

    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    monitor-exit v0

    return-void

    .line 157
    :cond_1
    :try_start_2
    sget-object p1, Lcom/amazon/identity/auth/device/framework/IsolatedModeSwitcher;->TAG:Ljava/lang/String;

    const-string v2, "The application is entering isolated mode."

    invoke-static {p1, v2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-static {p0, v5}, Lcom/amazon/identity/auth/device/framework/IsolatedModeSwitcher;->preActionOnSwitch(Landroid/content/Context;Z)V

    .line 161
    invoke-static {p0, v5}, Lcom/amazon/identity/auth/device/framework/IsolatedModeSwitcher;->writeIsolatedModeStateIntoStorage(Landroid/content/Context;Z)V

    .line 163
    new-instance p1, Lcom/amazon/identity/auth/device/cq;

    invoke-direct {p1, p0}, Lcom/amazon/identity/auth/device/cq;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/amazon/identity/auth/device/cp;->a(Lcom/amazon/identity/auth/device/co;)Lcom/amazon/identity/auth/device/cp;

    move-result-object p1

    sget-object v2, Lcom/amazon/identity/auth/device/features/Feature;->IsolateApplication:Lcom/amazon/identity/auth/device/features/Feature;

    invoke-virtual {p1, v2, p0}, Lcom/amazon/identity/auth/device/cp;->a(Lcom/amazon/identity/auth/device/features/Feature;Landroid/content/Context;)V

    .line 165
    invoke-static {p0}, Lcom/amazon/identity/auth/device/ee;->N(Landroid/content/Context;)V

    .line 167
    invoke-static {p0}, Lcom/amazon/identity/auth/device/dh;->z(Landroid/content/Context;)Lcom/amazon/identity/auth/device/dh;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/dh;->cL()I

    .line 168
    sget-object p0, Lcom/amazon/identity/auth/device/framework/IsolatedModeSwitcher;->TAG:Ljava/lang/String;

    const-string p1, "Finish generating local common info (version: %d) for isolated mode."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p0, p1, v2}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p0, "EnterRuntimeIsolatedMode:"

    .line 170
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v4, [Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 173
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized switchAppToSSOMode(Landroid/content/Context;)V
    .locals 4

    const-class v0, Lcom/amazon/identity/auth/device/framework/IsolatedModeSwitcher;

    monitor-enter v0

    .line 190
    :try_start_0
    sget-object v1, Lcom/amazon/identity/auth/device/framework/IsolatedModeSwitcher;->TAG:Ljava/lang/String;

    const-string v2, "The application is entering SSO mode."

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 191
    invoke-static {p0, v1}, Lcom/amazon/identity/auth/device/framework/IsolatedModeSwitcher;->preActionOnSwitch(Landroid/content/Context;Z)V

    .line 192
    invoke-static {p0, v1}, Lcom/amazon/identity/auth/device/framework/IsolatedModeSwitcher;->writeIsolatedModeStateIntoStorage(Landroid/content/Context;Z)V

    .line 194
    new-instance v2, Lcom/amazon/identity/auth/device/cq;

    invoke-direct {v2, p0}, Lcom/amazon/identity/auth/device/cq;-><init>(Landroid/content/Context;)V

    invoke-static {v2}, Lcom/amazon/identity/auth/device/cp;->a(Lcom/amazon/identity/auth/device/co;)Lcom/amazon/identity/auth/device/cp;

    move-result-object v2

    sget-object v3, Lcom/amazon/identity/auth/device/features/Feature;->IsolateApplication:Lcom/amazon/identity/auth/device/features/Feature;

    invoke-virtual {v2, v3, p0}, Lcom/amazon/identity/auth/device/cp;->a(Lcom/amazon/identity/auth/device/features/Feature;Landroid/content/Context;)V

    .line 196
    invoke-static {p0}, Lcom/amazon/identity/auth/device/ee;->N(Landroid/content/Context;)V

    const-string p0, "ExitRuntimeIsolatedMode"

    new-array v1, v1, [Ljava/lang/String;

    .line 198
    invoke-static {p0, v1}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized switchAppToSSOModeIfNecessary(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/amazon/identity/auth/device/framework/IsolatedModeSwitcher;

    monitor-enter v0

    .line 177
    :try_start_0
    invoke-static {p0}, Lcom/amazon/identity/auth/device/framework/IsolatedModeSwitcher;->doesAppNeedToSwitchToSSOMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    invoke-static {p0}, Lcom/amazon/identity/auth/device/framework/IsolatedModeSwitcher;->switchAppToSSOMode(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    .line 183
    :cond_0
    :try_start_1
    sget-object p0, Lcom/amazon/identity/auth/device/framework/IsolatedModeSwitcher;->TAG:Ljava/lang/String;

    invoke-static {p0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static writeIsolatedModeStateIntoStorage(Landroid/content/Context;Z)V
    .locals 2

    .line 203
    new-instance v0, Lcom/amazon/identity/auth/device/gm;

    const-string/jumbo v1, "runtime_isolated_mode"

    invoke-direct {v0, p0, v1}, Lcom/amazon/identity/auth/device/gm;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 204
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string p1, "isolated"

    invoke-virtual {v0, p1, p0}, Lcom/amazon/identity/auth/device/gm;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    return-void
.end method
