.class public final Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;
.super Ljava/lang/Object;
.source "MobileWeblabClientAttributes.java"

# interfaces
.implements Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;


# static fields
.field private static final MAX_NUMBER_OF_ATTRIBUTES:I = 0x5

.field private static final VERSION_REGEX_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mAppVersion:Ljava/lang/String;

.field private final mClientAttr:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIdentifier:Ljava/lang/String;

.field private mOsName:Lcom/amazon/weblab/mobile/settings/MobileWeblabOS;

.field private mOsVersion:Ljava/lang/String;

.field private mPlatformWeblabsCount:I

.field private mWeblabDomain:Lcom/amazon/weblab/mobile/service/MobileWeblabDomain;

.field private final mWeblabs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^(\\d+\\.)*\\d+$"

    .line 30
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->VERSION_REGEX_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;)V
    .locals 7

    .line 92
    iget-object v1, p1, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->mIdentifier:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->mAppName:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->mAppVersion:Ljava/lang/String;

    iget-object v4, p1, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->mOsName:Lcom/amazon/weblab/mobile/settings/MobileWeblabOS;

    iget-object v5, p1, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->mOsVersion:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->getDomain()Lcom/amazon/weblab/mobile/service/MobileWeblabDomain;

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/weblab/mobile/settings/MobileWeblabOS;Ljava/lang/String;Lcom/amazon/weblab/mobile/service/MobileWeblabDomain;)V

    .line 93
    iget-object v0, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->mWeblabs:Ljava/util/Map;

    iget-object v1, p1, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->mWeblabs:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 94
    iget-object v0, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->mClientAttr:Ljava/util/Map;

    iget-object v1, p1, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->mClientAttr:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 95
    iget p1, p1, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->mPlatformWeblabsCount:I

    iput p1, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->mPlatformWeblabsCount:I

    return-void
.end method

.method public constructor <init>(Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;[Lcom/amazon/weblab/mobile/experimental/PlatformWeblabs;)V
    .locals 3

    .line 80
    invoke-direct {p0, p1}, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;-><init>(Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;)V

    .line 81
    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v1, p2, v0

    .line 82
    invoke-virtual {v1}, Lcom/amazon/weblab/mobile/experimental/PlatformWeblabs;->getWeblabName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amazon/weblab/mobile/experimental/PlatformWeblabs;->getDefaultTreatment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->addWeblab(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/weblab/mobile/settings/MobileWeblabOS;Ljava/lang/String;)V
    .locals 7

    .line 62
    sget-object v6, Lcom/amazon/weblab/mobile/service/MobileWeblabDomain;->PROD:Lcom/amazon/weblab/mobile/service/MobileWeblabDomain;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/weblab/mobile/settings/MobileWeblabOS;Ljava/lang/String;Lcom/amazon/weblab/mobile/service/MobileWeblabDomain;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/weblab/mobile/settings/MobileWeblabOS;Ljava/lang/String;Lcom/amazon/weblab/mobile/service/MobileWeblabDomain;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->mPlatformWeblabsCount:I

    .line 50
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->mWeblabs:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->mClientAttr:Ljava/util/Map;

    .line 52
    invoke-direct {p0, p3}, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->setApplicationVersion(Ljava/lang/String;)V

    .line 53
    invoke-direct {p0, p2}, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->setApplicationName(Ljava/lang/String;)V

    .line 54
    invoke-direct {p0, p4}, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->setOSName(Lcom/amazon/weblab/mobile/settings/MobileWeblabOS;)V

    .line 55
    invoke-direct {p0, p5}, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->setOSVersion(Ljava/lang/String;)V

    .line 56
    invoke-direct {p0, p1}, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->setIdentifier(Ljava/lang/String;)V

    .line 57
    iput-object p6, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->mWeblabDomain:Lcom/amazon/weblab/mobile/service/MobileWeblabDomain;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/weblab/mobile/settings/MobileWeblabOS;Ljava/lang/String;Ljava/util/Map;Lcom/amazon/weblab/mobile/service/MobileWeblabDomain;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/weblab/mobile/settings/MobileWeblabOS;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazon/weblab/mobile/service/MobileWeblabDomain;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p7

    .line 68
    invoke-direct/range {v0 .. v6}, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/weblab/mobile/settings/MobileWeblabOS;Ljava/lang/String;Lcom/amazon/weblab/mobile/service/MobileWeblabDomain;)V

    .line 69
    iget-object p1, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->mClientAttr:Ljava/util/Map;

    invoke-interface {p1, p6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 71
    invoke-interface {p8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 72
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p3, p2}, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->addWeblab(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private isPlatformWeblab(Ljava/lang/String;)Z
    .locals 5

    .line 254
    invoke-static {}, Lcom/amazon/weblab/mobile/experimental/PlatformWeblabs;->values()[Lcom/amazon/weblab/mobile/experimental/PlatformWeblabs;

    move-result-object v0

    .line 255
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 256
    invoke-virtual {v4}, Lcom/amazon/weblab/mobile/experimental/PlatformWeblabs;->getWeblabName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private setApplicationName(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 143
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    iput-object p1, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->mAppName:Ljava/lang/String;

    return-void

    .line 144
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "appName cannot be empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 141
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "appName cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setApplicationVersion(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 122
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    invoke-direct {p0, p1}, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->validateVersion(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iput-object p1, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->mAppVersion:Ljava/lang/String;

    return-void

    .line 127
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "appVersion must be in the form of w.x.y.z"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 123
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "appVersion cannot be empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 120
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "appVersion cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setIdentifier(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 106
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    iput-object p1, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->mIdentifier:Ljava/lang/String;

    return-void

    .line 107
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "identifier cannot be empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 104
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "identifier cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setOSName(Lcom/amazon/weblab/mobile/settings/MobileWeblabOS;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 179
    iput-object p1, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->mOsName:Lcom/amazon/weblab/mobile/settings/MobileWeblabOS;

    return-void

    .line 177
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "osName cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setOSVersion(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 160
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    invoke-direct {p0, p1}, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->validateVersion(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iput-object p1, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->mOsVersion:Ljava/lang/String;

    return-void

    .line 164
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "osVersion must be in the form of w.x.y.z"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 161
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "osVersion cannot be empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 158
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "osVersion cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private validateVersion(Ljava/lang/String;)Z
    .locals 1

    .line 99
    sget-object v0, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->VERSION_REGEX_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method


# virtual methods
.method public addWeblab(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/amazon/weblab/mobile/TooManyRegisteredWeblabsException;
        }
    .end annotation

    if-eqz p1, :cond_6

    .line 224
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz p2, :cond_4

    .line 231
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 235
    iget-object v0, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->mWeblabs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->mWeblabs:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 240
    :cond_0
    monitor-enter p0

    .line 241
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->isPlatformWeblab(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    iget v0, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->mPlatformWeblabsCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->mPlatformWeblabsCount:I

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->mWeblabs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget v1, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->mPlatformWeblabsCount:I

    add-int/lit16 v1, v1, 0xbb8

    if-ge v0, v1, :cond_2

    .line 249
    iget-object v0, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->mWeblabs:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    monitor-exit p0

    return-void

    .line 245
    :cond_2
    new-instance p1, Lcom/amazon/weblab/mobile/TooManyRegisteredWeblabsException;

    const-string p2, "Maximum number of weblabs has been reached at 3000. No aditional weblabs can be added"

    invoke-direct {p1, p2}, Lcom/amazon/weblab/mobile/TooManyRegisteredWeblabsException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 250
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 232
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "value cannot be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 229
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "value cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 225
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "name cannot be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 222
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "name cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 346
    instance-of v0, p1, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 347
    check-cast p1, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;

    .line 349
    iget-object v0, p1, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->mAppName:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->mAppName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->mAppVersion:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->mAppVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->mClientAttr:Ljava/util/Map;

    iget-object v2, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->mClientAttr:Ljava/util/Map;

    .line 350
    invoke-interface {v0, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->mIdentifier:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->mIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->mOsName:Lcom/amazon/weblab/mobile/settings/MobileWeblabOS;

    iget-object v2, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->mOsName:Lcom/amazon/weblab/mobile/settings/MobileWeblabOS;

    .line 351
    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->mOsVersion:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->mOsVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->mWeblabs:Ljava/util/Map;

    iget-object v2, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->mWeblabs:Ljava/util/Map;

    .line 352
    invoke-interface {v0, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->mPlatformWeblabsCount:I

    iget v2, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->mPlatformWeblabsCount:I

    if-ne v0, v2, :cond_0

    iget-object p1, p1, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->mWeblabDomain:Lcom/amazon/weblab/mobile/service/MobileWeblabDomain;

    iget-object v0, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->mWeblabDomain:Lcom/amazon/weblab/mobile/service/MobileWeblabDomain;

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getApplicationName()Ljava/lang/String;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationVersion()Ljava/lang/String;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->mAppVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getClientAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->mClientAttr:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getDomain()Lcom/amazon/weblab/mobile/service/MobileWeblabDomain;
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->mWeblabDomain:Lcom/amazon/weblab/mobile/service/MobileWeblabDomain;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->mIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getOSName()Lcom/amazon/weblab/mobile/settings/MobileWeblabOS;
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->mOsName:Lcom/amazon/weblab/mobile/settings/MobileWeblabOS;

    return-object v0
.end method

.method public getOSVersion()Ljava/lang/String;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->mOsVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getWeblabs()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 308
    iget-object v0, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->mWeblabs:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 331
    iget-object v0, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->mAppName:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 332
    iget-object v3, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->mAppVersion:Ljava/lang/String;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 333
    iget-object v3, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->mClientAttr:Ljava/util/Map;

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    invoke-interface {v3}, Ljava/util/Map;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 334
    iget-object v3, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->mIdentifier:Ljava/lang/String;

    if-nez v3, :cond_3

    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 335
    iget-object v3, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->mOsName:Lcom/amazon/weblab/mobile/settings/MobileWeblabOS;

    if-nez v3, :cond_4

    const/4 v3, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Enum;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 336
    iget-object v3, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->mOsVersion:Ljava/lang/String;

    if-nez v3, :cond_5

    const/4 v3, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 337
    iget-object v3, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->mWeblabs:Ljava/util/Map;

    if-nez v3, :cond_6

    goto :goto_6

    :cond_6
    invoke-interface {v3}, Ljava/util/Map;->hashCode()I

    move-result v1

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 338
    iget v1, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->mPlatformWeblabsCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 339
    iget-object v1, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->mWeblabDomain:Lcom/amazon/weblab/mobile/service/MobileWeblabDomain;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
