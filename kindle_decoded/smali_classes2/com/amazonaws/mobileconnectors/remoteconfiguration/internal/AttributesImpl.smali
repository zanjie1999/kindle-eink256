.class public Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;
.super Ljava/lang/Object;
.source "AttributesImpl.java"

# interfaces
.implements Lcom/amazonaws/mobileconnectors/remoteconfiguration/Attributes;


# static fields
.field private static final KEY_APP_IDENTIFIER:Ljava/lang/String; = "_applicationIdentifier"

.field private static final KEY_COUNTRY:Ljava/lang/String; = "_localeCountryCode"

.field private static final KEY_LANGUAGE:Ljava/lang/String; = "_localeLanguage"

.field private static final KEY_PLATFORM:Ljava/lang/String; = "_platform"

.field private static final MAX_ALLOWED_CUSTOM_ATTRIBUTES:I = 0x64

.field private static final PLATFORM_ANDROID:Ljava/lang/String; = "Android"

.field private static final PLATFORM_FIRE_OS:Ljava/lang/String; = "FireOS"

.field private static final TAG:Ljava/lang/String; = "AttributesImpl"


# instance fields
.field private mCustomAttributes:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageName:Ljava/lang/String;

.field private final mPackageVersion:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x5

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->mCustomAttributes:Ljava/util/concurrent/ConcurrentMap;

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->mPackageName:Ljava/lang/String;

    .line 98
    invoke-virtual {p0, p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->getPackageVersionCode(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->mPackageVersion:Ljava/lang/Integer;

    return-void
.end method

.method private addStandardAttributesTo(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 170
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->getPlatform()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_platform"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_localeLanguage"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_localeCountryCode"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_applicationIdentifier"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->getPackageVersionCode()Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "_applicationVersion"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final nullSafeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-nez p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 351
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static final nullSafeHash(Ljava/lang/Object;)I
    .locals 0

    if-eqz p0, :cond_0

    .line 374
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 103
    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->addAttributePrivate(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public declared-synchronized addAttributePrivate(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "attrKey cannot be null"

    .line 192
    invoke-static {p1, v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/gear/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrValue cannot be null"

    .line 193
    invoke-static {p2, v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/gear/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_"

    .line 194
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Custom attributes cannot begin with _"

    invoke-static {v0, v1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/gear/Checks;->checkArgument(ZLjava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->mCustomAttributes:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_1

    .line 199
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->mCustomAttributes:Ljava/util/concurrent/ConcurrentMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 200
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->mCustomAttributes:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    monitor-exit p0

    return-void

    .line 197
    :cond_1
    :try_start_1
    new-instance p1, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/RemoteConfigurationException;

    const-string p2, "Custom attributes limit 100 reached"

    invoke-direct {p1, p2}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/RemoteConfigurationException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 313
    const-class v1, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 317
    :cond_1
    check-cast p1, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;

    .line 319
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->mCustomAttributes:Ljava/util/concurrent/ConcurrentMap;

    iget-object v2, p1, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->mCustomAttributes:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v1, v2}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->nullSafeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 322
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->nullSafeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 325
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->nullSafeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    .line 328
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->getPlatform()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->getPlatform()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->nullSafeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v0

    .line 331
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->nullSafeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v0

    .line 334
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->getPackageVersionCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->getPackageVersionCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->nullSafeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_7
    :goto_0
    return v0
.end method

.method public declared-synchronized getAllAttributes()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 157
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 158
    invoke-direct {p0, v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->addStandardAttributesTo(Ljava/util/Map;)V

    .line 159
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->mCustomAttributes:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 160
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getCountry()Ljava/lang/String;
    .locals 1

    .line 268
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getLanguage()Ljava/lang/String;
    .locals 1

    .line 259
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPackageName()Ljava/lang/String;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method protected getPackageVersionCode()Ljava/lang/Integer;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->mPackageVersion:Ljava/lang/Integer;

    return-object v0
.end method

.method protected getPackageVersionCode(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 3

    .line 301
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 303
    :goto_0
    sget-object v0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package not found for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method protected getPlatform()Ljava/lang/String;
    .locals 1

    const-string v0, "Android"

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 356
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->mCustomAttributes:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->nullSafeHash(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 357
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->nullSafeHash(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 358
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->nullSafeHash(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 359
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->getPlatform()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->nullSafeHash(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 360
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->nullSafeHash(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 361
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->getPackageVersionCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;->nullSafeHash(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
