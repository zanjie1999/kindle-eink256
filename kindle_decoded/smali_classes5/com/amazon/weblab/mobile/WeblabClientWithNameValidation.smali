.class final Lcom/amazon/weblab/mobile/WeblabClientWithNameValidation;
.super Ljava/lang/Object;
.source "WeblabClientWithNameValidation.java"

# interfaces
.implements Lcom/amazon/weblab/mobile/IMobileWeblabClient;


# static fields
.field private static final NO_WEBLAB_LOCK:Ljava/lang/String; = ""

.field private static final WEBLAB_NAME_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field protected final mClient:Lcom/amazon/weblab/mobile/IMobileWeblabClient;

.field private final mInitialAttributes:Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;

.field private mInvalidWeblabsAndTheirLock:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsDebuggable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^([A-Z0-9]+_)+[0-9]+$"

    .line 27
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazon/weblab/mobile/WeblabClientWithNameValidation;->WEBLAB_NAME_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;Lcom/amazon/weblab/mobile/settings/IMobileWeblabRuntimeConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 8

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/weblab/mobile/WeblabClientWithNameValidation;->mInvalidWeblabsAndTheirLock:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz p1, :cond_2

    if-eqz p6, :cond_1

    .line 48
    iput-object p1, p0, Lcom/amazon/weblab/mobile/WeblabClientWithNameValidation;->mInitialAttributes:Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;

    .line 49
    invoke-virtual {p6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/amazon/weblab/mobile/WeblabClientWithNameValidation;->mIsDebuggable:Z

    .line 50
    invoke-direct {p0}, Lcom/amazon/weblab/mobile/WeblabClientWithNameValidation;->filterInvalidFormatWeblabsAndAddInInvalidList()Ljava/util/Map;

    move-result-object p1

    .line 51
    iget-object v0, p0, Lcom/amazon/weblab/mobile/WeblabClientWithNameValidation;->mInitialAttributes:Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;

    invoke-direct {p0, p1, v0}, Lcom/amazon/weblab/mobile/WeblabClientWithNameValidation;->createFilteredAttributes(Ljava/util/Map;Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;)Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;

    move-result-object v2

    .line 52
    new-instance p1, Lcom/amazon/weblab/mobile/WeblabClientBase;

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/amazon/weblab/mobile/WeblabClientBase;-><init>(Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;Lcom/amazon/weblab/mobile/settings/IMobileWeblabRuntimeConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amazon/weblab/mobile/WeblabClientWithNameValidation;->mClient:Lcom/amazon/weblab/mobile/IMobileWeblabClient;

    return-void

    .line 45
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Context is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 41
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Client attributes is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/amazon/weblab/mobile/WeblabClientWithNameValidation;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/amazon/weblab/mobile/WeblabClientWithNameValidation;->getInvalidWeblabTreatment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private createFilteredAttributes(Ljava/util/Map;Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;)Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;",
            ")",
            "Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;"
        }
    .end annotation

    .line 191
    new-instance v9, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;

    invoke-virtual {p2}, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 192
    invoke-virtual {p2}, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->getApplicationName()Ljava/lang/String;

    move-result-object v2

    .line 193
    invoke-virtual {p2}, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->getApplicationVersion()Ljava/lang/String;

    move-result-object v3

    .line 194
    invoke-virtual {p2}, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->getOSName()Lcom/amazon/weblab/mobile/settings/MobileWeblabOS;

    move-result-object v4

    .line 195
    invoke-virtual {p2}, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->getOSVersion()Ljava/lang/String;

    move-result-object v5

    .line 196
    invoke-virtual {p2}, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->getClientAttributes()Ljava/util/Map;

    move-result-object v6

    .line 197
    invoke-virtual {p2}, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->getDomain()Lcom/amazon/weblab/mobile/service/MobileWeblabDomain;

    move-result-object v7

    move-object v0, v9

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/weblab/mobile/settings/MobileWeblabOS;Ljava/lang/String;Ljava/util/Map;Lcom/amazon/weblab/mobile/service/MobileWeblabDomain;Ljava/util/Map;)V

    return-object v9
.end method

.method private filterInvalidFormatWeblabsAndAddInInvalidList()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 206
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 207
    iget-object v1, p0, Lcom/amazon/weblab/mobile/WeblabClientWithNameValidation;->mInitialAttributes:Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;

    invoke-virtual {v1}, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->getWeblabs()Ljava/util/Map;

    move-result-object v1

    .line 208
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 209
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/amazon/weblab/mobile/WeblabClientWithNameValidation;->isWeblabNameValidAndSetupInvalidWeblabIfNecessary(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 210
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getInvalidWeblabTreatment(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/amazon/weblab/mobile/WeblabClientWithNameValidation;->mInvalidWeblabsAndTheirLock:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ""

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    iget-object v0, p0, Lcom/amazon/weblab/mobile/WeblabClientWithNameValidation;->mInitialAttributes:Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;

    invoke-virtual {v0}, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->getWeblabs()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    return-object v0
.end method

.method private isDebuggable()Z
    .locals 1

    .line 265
    iget-boolean v0, p0, Lcom/amazon/weblab/mobile/WeblabClientWithNameValidation;->mIsDebuggable:Z

    return v0
.end method

.method private isWeblabNameValid(Ljava/lang/String;)Z
    .locals 4

    .line 250
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x64

    if-le v0, v3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 253
    sget-object v0, Lcom/amazon/weblab/mobile/WeblabClientWithNameValidation;->WEBLAB_NAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    const-string v0, " is not valid"

    if-nez v1, :cond_3

    .line 254
    invoke-direct {p0}, Lcom/amazon/weblab/mobile/WeblabClientWithNameValidation;->isDebuggable()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 255
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Weblab "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/weblab/mobile/WeblabClientWithNameValidation;->mInitialAttributes:Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;

    invoke-virtual {v0}, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WeblabRegistrationInvalidFormat"

    invoke-static {v2, p1, v0}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logErrorMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    :cond_4
    return v1
.end method

.method private isWeblabNameValidAndSetupInvalidWeblabIfNecessary(Ljava/lang/String;)Z
    .locals 3

    .line 221
    invoke-direct {p0, p1}, Lcom/amazon/weblab/mobile/WeblabClientWithNameValidation;->isWeblabNameValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    iget-object v1, p0, Lcom/amazon/weblab/mobile/WeblabClientWithNameValidation;->mInvalidWeblabsAndTheirLock:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, ""

    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return v0
.end method


# virtual methods
.method public addWeblab(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/amazon/weblab/mobile/TooManyRegisteredWeblabsException;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/amazon/weblab/mobile/WeblabClientWithNameValidation;->mInitialAttributes:Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->addWeblab(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-direct {p0, p1}, Lcom/amazon/weblab/mobile/WeblabClientWithNameValidation;->isWeblabNameValidAndSetupInvalidWeblabIfNecessary(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/amazon/weblab/mobile/WeblabClientWithNameValidation;->mClient:Lcom/amazon/weblab/mobile/IMobileWeblabClient;

    invoke-interface {v0, p1, p2}, Lcom/amazon/weblab/mobile/IMobileWeblabClient;->addWeblab(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getIMobileWeblabClientAttributes()Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/amazon/weblab/mobile/WeblabClientWithNameValidation;->mInitialAttributes:Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;

    return-object v0
.end method

.method public getMarketplace()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/amazon/weblab/mobile/WeblabClientWithNameValidation;->mClient:Lcom/amazon/weblab/mobile/IMobileWeblabClient;

    invoke-interface {v0}, Lcom/amazon/weblab/mobile/IMobileWeblabClient;->getMarketplace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWeblab(Ljava/lang/String;)Lcom/amazon/weblab/mobile/IMobileWeblab;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/amazon/weblab/mobile/WeblabClientWithNameValidation;->mInvalidWeblabsAndTheirLock:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    new-instance v0, Lcom/amazon/weblab/mobile/WeblabClientWithNameValidation$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/weblab/mobile/WeblabClientWithNameValidation$1;-><init>(Lcom/amazon/weblab/mobile/WeblabClientWithNameValidation;Ljava/lang/String;)V

    return-object v0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/amazon/weblab/mobile/WeblabClientWithNameValidation;->mClient:Lcom/amazon/weblab/mobile/IMobileWeblabClient;

    invoke-interface {v0, p1}, Lcom/amazon/weblab/mobile/IMobileWeblabClient;->getWeblab(Ljava/lang/String;)Lcom/amazon/weblab/mobile/IMobileWeblab;

    move-result-object p1

    return-object p1
.end method

.method public setDirectedId(Ljava/lang/String;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/amazon/weblab/mobile/WeblabClientWithNameValidation;->mClient:Lcom/amazon/weblab/mobile/IMobileWeblabClient;

    invoke-interface {v0, p1}, Lcom/amazon/weblab/mobile/IMobileWeblabClient;->setDirectedId(Ljava/lang/String;)V

    return-void
.end method

.method public setMarketplaceId(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/amazon/weblab/mobile/WeblabClientWithNameValidation;->mClient:Lcom/amazon/weblab/mobile/IMobileWeblabClient;

    invoke-interface {v0, p1}, Lcom/amazon/weblab/mobile/IMobileWeblabClient;->setMarketplaceId(Ljava/lang/String;)V

    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/amazon/weblab/mobile/WeblabClientWithNameValidation;->mClient:Lcom/amazon/weblab/mobile/IMobileWeblabClient;

    invoke-interface {v0, p1}, Lcom/amazon/weblab/mobile/IMobileWeblabClient;->setSessionId(Ljava/lang/String;)V

    return-void
.end method

.method public updateAsync()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/RejectedExecutionException;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/amazon/weblab/mobile/WeblabClientWithNameValidation;->mClient:Lcom/amazon/weblab/mobile/IMobileWeblabClient;

    invoke-interface {v0}, Lcom/amazon/weblab/mobile/IMobileWeblabClient;->updateAsync()Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method
