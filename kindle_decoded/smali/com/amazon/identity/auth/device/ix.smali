.class public final Lcom/amazon/identity/auth/device/ix;
.super Ljava/lang/Object;
.source "DCP"


# direct methods
.method public static C(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 87
    new-instance v0, Lcom/amazon/identity/auth/device/ek;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/ek;-><init>(Landroid/content/Context;)V

    .line 88
    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/ek;->bC(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "Package is an unauthorized caller"

    .line 90
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "SecurityHelpers"

    invoke-static {p1, p0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    new-instance p0, Ljava/lang/SecurityException;

    invoke-direct {p0}, Ljava/lang/SecurityException;-><init>()V

    throw p0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 3

    .line 73
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 78
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "Android System called activity %s in package %s"

    .line 76
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const-string p0, "SecurityHelpers"

    invoke-static {p0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    return-void

    .line 81
    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/ix;->C(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 11

    const-string v0, "SecurityHelpers"

    .line 273
    :try_start_0
    invoke-static {p0}, Lcom/amazon/identity/auth/device/ix;->aG(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendOrderedBroadcast "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    .line 276
    invoke-virtual/range {v3 .. v10}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 286
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendBroadcast "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 292
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "MAPBroadcastException:"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p2, v1}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 293
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Fail to send the broadcast. "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/amazon/identity/auth/device/da;)V
    .locals 5

    .line 169
    invoke-static {p0}, Lcom/amazon/identity/auth/device/ix;->aH(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "SecurityHelpers"

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/amazon/identity/auth/device/mw;->aZ(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ix;->g(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 171
    :cond_1
    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 173
    invoke-static {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/ix;->b(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/amazon/identity/auth/device/da;)V

    return-void

    :cond_2
    if-nez p3, :cond_4

    .line 195
    invoke-static {p0}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->E(Landroid/content/Context;)Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;

    move-result-object p3

    invoke-virtual {p3}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->cW()Ljava/util/Collection;

    move-result-object p3

    .line 196
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/identity/auth/device/du;

    .line 198
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/du;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 202
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 203
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 204
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x1

    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const-string v3, "On 3P devices, %s sends broadcast %s"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 205
    invoke-static {p0, v2, p2, v0}, Lcom/amazon/identity/auth/device/ix;->b(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/amazon/identity/auth/device/da;)V

    goto :goto_0

    :cond_3
    return-void

    .line 183
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "We can only fire a broadcast to a user if we are a system app"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/amazon/identity/auth/device/ek;)V
    .locals 1

    .line 56
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/ek;->getCallingPackageName()Ljava/lang/String;

    .line 57
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/ek;->k(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const-string p0, "SecurityHelpers"

    const-string v0, "Unauthorized caller, the caller does not have permission or is signed with a different cert. Please check your manifest file and signature."

    .line 59
    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    new-instance p0, Ljava/lang/SecurityException;

    invoke-direct {p0}, Ljava/lang/SecurityException;-><init>()V

    throw p0
.end method

.method public static aF(Landroid/content/Context;)V
    .locals 1

    .line 51
    new-instance v0, Lcom/amazon/identity/auth/device/ek;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/ek;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/amazon/identity/auth/device/ix;->a(Lcom/amazon/identity/auth/device/ek;)V

    return-void
.end method

.method private static aG(Landroid/content/Context;)Z
    .locals 2

    .line 306
    invoke-static {p0}, Lcom/amazon/identity/platform/setting/PlatformSettings;->aV(Landroid/content/Context;)Lcom/amazon/identity/platform/setting/PlatformSettings;

    move-result-object p0

    const-string/jumbo v0, "ordered.broadcast"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/amazon/identity/platform/setting/PlatformSettings;->f(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static aH(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    .line 316
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 317
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 318
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    and-int/2addr p0, v1

    if-eqz p0, :cond_0

    return v1

    :cond_0
    return v0

    :catch_0
    move-exception p0

    const-string v1, "SecurityHelpers"

    const-string v2, "Cannot calculate whether current app is a system app or not"

    .line 322
    invoke-static {v1, v2, p0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method private static b(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/amazon/identity/auth/device/da;)V
    .locals 0

    if-eqz p3, :cond_0

    .line 227
    invoke-static {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/ix;->c(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/amazon/identity/auth/device/da;)V

    return-void

    .line 231
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/amazon/identity/auth/device/ix;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private static c(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/amazon/identity/auth/device/da;)V
    .locals 12

    const-string v0, "SecurityHelpers"

    .line 244
    :try_start_0
    invoke-static {p0}, Lcom/amazon/identity/auth/device/ix;->aG(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendOrderedBroadcastAsUser "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p3}, Lcom/amazon/identity/auth/device/da;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    .line 247
    invoke-virtual/range {v3 .. v11}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 258
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendBroadcastAsUser "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p3}, Lcom/amazon/identity/auth/device/da;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p3

    invoke-virtual {p0, p1, p3, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 264
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "MAPBroadcastException:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/String;

    invoke-static {p2, p3}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 265
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Fail to send the broadcast. "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static g(Landroid/content/Intent;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 217
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
