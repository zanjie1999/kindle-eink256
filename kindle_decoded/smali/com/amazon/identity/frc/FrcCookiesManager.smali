.class public final Lcom/amazon/identity/frc/FrcCookiesManager;
.super Ljava/lang/Object;
.source "FrcCookiesManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 168
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/amazon/identity/frc/FrcCookiesManager;->a:Ljava/util/Set;

    .line 170
    const-class v0, Lcom/amazon/identity/frc/FrcCookiesManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/frc/FrcCookiesManager;->TAG:Ljava/lang/String;

    .line 180
    sget-object v0, Lcom/amazon/identity/frc/FrcCookiesManager;->a:Ljava/util/Set;

    const-string v1, "ApplicationName"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 181
    sget-object v0, Lcom/amazon/identity/frc/FrcCookiesManager;->a:Ljava/util/Set;

    const-string v1, "ApplicationVersion"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 182
    sget-object v0, Lcom/amazon/identity/frc/FrcCookiesManager;->a:Ljava/util/Set;

    const-string v1, "DeviceName"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 183
    sget-object v0, Lcom/amazon/identity/frc/FrcCookiesManager;->a:Ljava/util/Set;

    const-string v1, "DeviceOSVersion"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 184
    sget-object v0, Lcom/amazon/identity/frc/FrcCookiesManager;->a:Ljava/util/Set;

    const-string v1, "ScreenWidthPixels"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 185
    sget-object v0, Lcom/amazon/identity/frc/FrcCookiesManager;->a:Ljava/util/Set;

    const-string v1, "ScreenHeightPixels"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 186
    sget-object v0, Lcom/amazon/identity/frc/FrcCookiesManager;->a:Ljava/util/Set;

    const-string v1, "DeviceLanguage"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 187
    sget-object v0, Lcom/amazon/identity/frc/FrcCookiesManager;->a:Ljava/util/Set;

    const-string v1, "TimeZone"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p1, p0, Lcom/amazon/identity/frc/FrcCookiesManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic g()Ljava/util/Set;
    .locals 1

    .line 41
    sget-object v0, Lcom/amazon/identity/frc/FrcCookiesManager;->a:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic h()Ljava/lang/String;
    .locals 1

    .line 41
    sget-object v0, Lcom/amazon/identity/frc/FrcCookiesManager;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method a(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 336
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    if-nez p1, :cond_0

    .line 339
    sget-object p1, Lcom/amazon/identity/frc/FrcCookiesManager;->TAG:Ljava/lang/String;

    const-string v1, "Resolver is null, the 3P id will be null"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    const-string v1, "android_id"

    .line 342
    invoke-static {p1, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 346
    sget-object v1, Lcom/amazon/identity/frc/FrcCookiesManager;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Unknown error happens when collecting android id: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method a()Lorg/json/JSONObject;
    .locals 3

    .line 1288
    new-instance v0, Lcom/amazon/identity/frc/FrcCookiesManager$1;

    invoke-direct {v0, p0}, Lcom/amazon/identity/frc/FrcCookiesManager$1;-><init>(Lcom/amazon/identity/frc/FrcCookiesManager;)V

    :try_start_0
    const-string v1, "ApplicationName"

    .line 264
    invoke-virtual {p0}, Lcom/amazon/identity/frc/FrcCookiesManager;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/identity/frc/FrcCookiesManager$1;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ApplicationVersion"

    .line 265
    invoke-virtual {p0}, Lcom/amazon/identity/frc/FrcCookiesManager;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/identity/frc/FrcCookiesManager$1;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "DeviceOSVersion"

    .line 266
    invoke-virtual {p0}, Lcom/amazon/identity/frc/FrcCookiesManager;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/identity/frc/FrcCookiesManager$1;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "DeviceName"

    .line 267
    invoke-virtual {p0}, Lcom/amazon/identity/frc/FrcCookiesManager;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/identity/frc/FrcCookiesManager$1;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ThirdPartyDeviceId"

    .line 268
    iget-object v2, p0, Lcom/amazon/identity/frc/FrcCookiesManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/amazon/identity/frc/FrcCookiesManager;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/identity/frc/FrcCookiesManager$1;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ScreenWidthPixels"

    .line 269
    iget-object v2, p0, Lcom/amazon/identity/frc/FrcCookiesManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/amazon/identity/frc/FrcCookiesManager;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/identity/frc/FrcCookiesManager$1;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ScreenHeightPixels"

    .line 270
    iget-object v2, p0, Lcom/amazon/identity/frc/FrcCookiesManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/amazon/identity/frc/FrcCookiesManager;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/identity/frc/FrcCookiesManager$1;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "DeviceLanguage"

    .line 271
    invoke-virtual {p0}, Lcom/amazon/identity/frc/FrcCookiesManager;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/identity/frc/FrcCookiesManager$1;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "TimeZone"

    .line 272
    invoke-virtual {p0}, Lcom/amazon/identity/frc/FrcCookiesManager;->getTimeZone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/identity/frc/FrcCookiesManager$1;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "Carrier"

    .line 273
    iget-object v2, p0, Lcom/amazon/identity/frc/FrcCookiesManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/amazon/identity/frc/FrcCookiesManager;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/identity/frc/FrcCookiesManager$1;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "IpAddress"

    .line 274
    invoke-virtual {p0}, Lcom/amazon/identity/frc/FrcCookiesManager;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/identity/frc/FrcCookiesManager$1;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Generated FRC cookies: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0

    :catch_0
    move-exception v0

    .line 278
    sget-object v1, Lcom/amazon/identity/frc/FrcCookiesManager;->TAG:Ljava/lang/String;

    const-string v2, "FRC Cookies Generation Failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method b()Ljava/lang/String;
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/amazon/identity/frc/FrcCookiesManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 355
    :try_start_0
    invoke-static {p1}, Lcom/amazon/identity/frc/FrcCookiesManager/d;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 359
    sget-object v0, Lcom/amazon/identity/frc/FrcCookiesManager;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Unknown exception happened when try to get screen width %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method c()Ljava/lang/String;
    .locals 2

    .line 313
    iget-object v0, p0, Lcom/amazon/identity/frc/FrcCookiesManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 314
    iget-object v1, p0, Lcom/amazon/identity/frc/FrcCookiesManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/amazon/identity/frc/FrcCookiesManager/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method c(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 368
    :try_start_0
    invoke-static {p1}, Lcom/amazon/identity/frc/FrcCookiesManager/d;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 372
    sget-object v0, Lcom/amazon/identity/frc/FrcCookiesManager;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Unknown exception happened when try to get screen height: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method d()Ljava/lang/String;
    .locals 1

    .line 324
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    return-object v0
.end method

.method d(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 408
    :try_start_0
    invoke-static {p1}, Lcom/amazon/identity/frc/FrcCookiesManager/c;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 412
    sget-object v0, Lcom/amazon/identity/frc/FrcCookiesManager;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Unknown exception happened when try to get Carrier: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method e()Ljava/lang/String;
    .locals 3

    .line 379
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method f()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    .line 422
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    if-nez v1, :cond_0

    .line 425
    sget-object v1, Lcom/amazon/identity/frc/FrcCookiesManager;->TAG:Ljava/lang/String;

    const-string v2, "Network interfaces is null, this should be a bug!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 428
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    .line 430
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v2, v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    .line 432
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v3

    .line 433
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 437
    invoke-virtual {v4}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v5

    if-nez v5, :cond_3

    .line 442
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 444
    :cond_3
    invoke-virtual {v4}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 446
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_4
    return-object v2

    :catch_0
    move-exception v1

    .line 454
    sget-object v2, Lcom/amazon/identity/frc/FrcCookiesManager;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "Exception happened when tring to get ip address: %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method getDeviceName()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 329
    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "%s/%s/%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFrcCookies(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 236
    sget-object v0, Lcom/amazon/identity/frc/FrcCookiesManager;->TAG:Ljava/lang/String;

    const-string v1, "Start generating frc cookies"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-virtual {p0}, Lcom/amazon/identity/frc/FrcCookiesManager;->a()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 243
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 246
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 248
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/amazon/identity/frc/FrcCookiesManager/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 250
    sget-object v0, Lcom/amazon/identity/frc/FrcCookiesManager;->TAG:Ljava/lang/String;

    const-string v1, "Finish generating frc cookies."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method getTimeZone()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "GMT"

    .line 390
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    .line 391
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "Z"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 393
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x3

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x5

    .line 395
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 399
    sget-object v2, Lcom/amazon/identity/frc/FrcCookiesManager;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v0, "Unknown exception happened when try to get time zone: %s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method
