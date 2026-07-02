.class public Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler$PermissionAction;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final kh:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static final ki:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler$PermissionAction;",
            ">;"
        }
    .end annotation
.end field

.field private static kj:Ljava/lang/Integer;


# instance fields
.field private final kk:Ljava/lang/Integer;

.field private final kl:Ljava/lang/String;

.field private final km:Ljava/lang/String;

.field private final kn:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->kh:Ljava/util/concurrent/ConcurrentHashMap;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 54
    sput-object v0, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->ki:Ljava/util/Map;

    sget-object v1, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler$PermissionAction;->ACTION_READ_MOBILE_NUMBER:Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler$PermissionAction;

    const-string/jumbo v2, "read_mobile_number"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-class v0, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    sget-object v0, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->ki:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler$PermissionAction;

    .line 97
    iget v1, v0, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler$PermissionAction;->mRequestId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->kk:Ljava/lang/Integer;

    .line 98
    iget-object v0, v0, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler$PermissionAction;->mPermissions:[Ljava/lang/String;

    iput-object v0, p0, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->kn:[Ljava/lang/String;

    .line 99
    iput-object p2, p0, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->km:Ljava/lang/String;

    .line 100
    iput-object p1, p0, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->kl:Ljava/lang/String;

    return-void
.end method

.method public static H(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    .line 247
    :try_start_0
    invoke-static {p0}, Lcom/amazon/identity/auth/device/mw;->bc(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    const-string v1, "com.google.android.gms.auth.api.phone.SmsRetriever"

    .line 252
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 254
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    .line 255
    sget-object v2, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "playServiceAvailability: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    return v0

    .line 258
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.google.android.gms"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 259
    sget-object v1, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "versionCode:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 260
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v1, p0

    const-wide/32 v3, 0x9ba3c0

    cmp-long p0, v1, v3

    if-ltz p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    return v0

    :catchall_0
    move-exception p0

    .line 273
    sget-object v1, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->TAG:Ljava/lang/String;

    const-string v2, "error on play service check"

    invoke-static {v1, v2, p0}, Lcom/amazon/identity/auth/device/il;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :catch_0
    return v0
.end method

.method public static I(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    .line 291
    :try_start_0
    invoke-static {p0}, Lcom/amazon/identity/auth/device/mw;->bc(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string p0, "androidx.browser.customtabs.CustomTabsIntent"

    .line 296
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method public static J(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    .line 318
    :try_start_0
    invoke-static {p0}, Lcom/amazon/identity/auth/device/mw;->bc(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 324
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_1

    return v0

    :cond_1
    const-string v1, "com.google.android.gms.auth.api.credentials.HintRequest"

    .line 329
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 332
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result p0

    .line 333
    sget-object v1, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "playServiceAvailability: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_3

    const/4 v1, 0x2

    if-ne p0, v1, :cond_2

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 342
    sget-object v1, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->TAG:Ljava/lang/String;

    const-string v2, "error on play service check"

    invoke-static {v1, v2, p0}, Lcom/amazon/identity/auth/device/il;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :catch_0
    return v0
.end method

.method private static K(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 1

    .line 385
    sget-object v0, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->kj:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 387
    invoke-static {p0}, Lcom/amazon/identity/auth/device/iq;->aD(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p0

    sput-object p0, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->kj:Ljava/lang/Integer;

    .line 389
    :cond_0
    sget-object p0, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->kj:Ljava/lang/Integer;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/amazon/identity/auth/device/ej;)Z
    .locals 3

    .line 350
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 357
    invoke-static {p0}, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->K(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p0

    if-nez p0, :cond_0

    .line 360
    sget-object p0, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->TAG:Ljava/lang/String;

    const-string v0, "Unable to determine target SDK version. Will not show permission dialog."

    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "MAPRuntimePermissionError:CannotGetBuildTargetVersion"

    .line 361
    invoke-virtual {p1, p0}, Lcom/amazon/identity/auth/device/ej;->bA(Ljava/lang/String;)V

    goto :goto_0

    .line 365
    :cond_0
    sget-object p1, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "The current apk build target sdk version is:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-lt p0, v1, :cond_1

    const/4 p0, 0x1

    return p0

    .line 372
    :cond_1
    sget-object p0, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->TAG:Ljava/lang/String;

    const-string p1, "The app build target sdk version is below 23. Runtime permission is not needed."

    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 378
    :cond_2
    sget-object p0, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->TAG:Ljava/lang/String;

    const-string p1, "Current android version does not support runtime permission."

    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->km:Ljava/lang/String;

    return-object p0
.end method

.method public static bt(Ljava/lang/String;)Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;
    .locals 2

    if-eqz p0, :cond_0

    .line 406
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "callback"

    .line 407
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "action"

    .line 408
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "auto_phone_verification"

    .line 411
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 413
    new-instance v1, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;

    invoke-direct {v1, v0, p0}, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 418
    sget-object v0, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->TAG:Ljava/lang/String;

    const-string v1, "Unable to parse action json string"

    invoke-static {v0, v1, p0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic c(Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;)Ljava/lang/Integer;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->kk:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic dc()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 37
    sget-object v0, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->kh:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 394
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 395
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static i(I)Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;
    .locals 1

    .line 231
    sget-object v0, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->kh:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;

    return-object p0
.end method


# virtual methods
.method a(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/ej;)Lorg/json/JSONObject;
    .locals 6

    .line 439
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "action"

    .line 443
    iget-object v2, p0, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->kl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 445
    iget-object v1, p0, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->kn:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 448
    invoke-static {p1, v5}, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    :goto_1
    const-string/jumbo v1, "read_mobile_number"

    const-string/jumbo v2, "result"

    if-eqz v3, :cond_4

    .line 458
    :try_start_1
    iget-object v3, p0, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->kl:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, "error"

    if-eqz v1, :cond_3

    .line 460
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 462
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 463
    sget-object v2, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->TAG:Ljava/lang/String;

    const-string v3, "Shouldn\'t get phone number from the device."

    invoke-static {v2, v3}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/fi;->b(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/ej;)Ljava/lang/String;

    move-result-object v2

    .line 466
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "country_code"

    .line 468
    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/fi;->b(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/ej;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 472
    :cond_2
    sget-object p1, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->TAG:Ljava/lang/String;

    const-string v2, "Can\'t get sim country iso from the device."

    invoke-static {p1, v2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "MAPRuntimePermissionError:CannotGetCountryISO"

    .line 473
    invoke-virtual {p2, p1}, Lcom/amazon/identity/auth/device/ej;->bA(Ljava/lang/String;)V

    :goto_2
    const-string p1, "extra_data"

    .line 475
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 479
    :cond_3
    sget-object p1, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "MAP can\'t understand the action: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->kl:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    :cond_4
    const-string p1, "deny"

    .line 485
    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 486
    iget-object p1, p0, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->kl:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "MAPRuntimePermission:ReadPhoneStateDeny"

    .line 488
    invoke-virtual {p2, p1}, Lcom/amazon/identity/auth/device/ej;->bA(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 495
    sget-object p2, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->TAG:Ljava/lang/String;

    const-string v1, "JSONException while building the callback json"

    invoke-static {p2, v1, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    return-object v0
.end method

.method public a(Landroid/app/Activity;Lcom/amazon/identity/auth/device/dr;Landroid/webkit/WebView;Lcom/amazon/identity/auth/device/ej;Z)V
    .locals 6

    .line 176
    sget-object v0, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->kh:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->kk:Ljava/lang/Integer;

    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 178
    sget-object p1, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Permission request is already in flight, do nothing. Request code: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->kk:Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 181
    :cond_0
    sget-object v0, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->kh:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->kk:Ljava/lang/Integer;

    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-virtual {p0, p1, p4}, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->a(Landroid/app/Activity;Lcom/amazon/identity/auth/device/ej;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 185
    iget-object v0, p0, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->kn:[Ljava/lang/String;

    if-eqz v0, :cond_4

    array-length v0, v0

    if-lez v0, :cond_4

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 192
    iget-object v1, p0, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->kn:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 194
    invoke-static {p1, v4}, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 196
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 200
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 202
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-interface {v0, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    .line 203
    sget-object p3, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->TAG:Ljava/lang/String;

    const-string p4, "Some permissions are not granted. Rendering system dialog for the permission"

    invoke-static {p3, p4}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object p3, p0, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->kk:Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 209
    :cond_3
    sget-object v0, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->TAG:Ljava/lang/String;

    const-string v1, "All requested permissions are already granted. Calling back with success result"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->a(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/dr;Landroid/webkit/WebView;Lcom/amazon/identity/auth/device/ej;Z)V

    return-void

    .line 221
    :cond_4
    sget-object p1, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->kh:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p2, p0, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->kk:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected a(Lcom/amazon/identity/auth/device/ed;Landroid/webkit/WebView;Lorg/json/JSONObject;Lcom/amazon/identity/auth/device/ej;Z)V
    .locals 1

    :try_start_0
    const-string/jumbo v0, "result"

    .line 134
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "grant"

    .line 144
    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 147
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object p3

    .line 146
    invoke-static {p1, p3, p4, p5}, Lcom/amazon/identity/auth/device/fi;->a(Lcom/amazon/identity/auth/device/ed;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;Z)Ljava/lang/String;

    move-result-object p3

    .line 150
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_0

    .line 152
    new-instance p4, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler$2;

    invoke-direct {p4, p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler$2;-><init>(Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;Lcom/amazon/identity/auth/device/ed;Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-static {p4}, Lcom/amazon/identity/auth/device/jf;->d(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 138
    sget-object p2, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->TAG:Ljava/lang/String;

    const-string p3, "JSONException happened. Probably due to no result being set in callback JSON"

    invoke-static {p2, p3, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/dr;Landroid/webkit/WebView;Lcom/amazon/identity/auth/device/ej;Z)V
    .locals 8

    .line 109
    new-instance v7, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler$1;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p3

    move v5, p5

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler$1;-><init>(Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/ej;Landroid/webkit/WebView;ZLcom/amazon/identity/auth/device/dr;)V

    invoke-static {v7}, Lcom/amazon/identity/auth/device/jf;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected a(Landroid/app/Activity;Lcom/amazon/identity/auth/device/ej;)Z
    .locals 0

    .line 226
    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->a(Landroid/content/Context;Lcom/amazon/identity/auth/device/ej;)Z

    move-result p1

    return p1
.end method
