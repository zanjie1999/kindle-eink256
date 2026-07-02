.class public Lcom/amazon/nwstd/resources/DynamicResourcesRepository;
.super Ljava/lang/Object;
.source "DynamicResourcesRepository.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sFallbackLocaleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDBLayer:Lcom/amazon/nwstd/persistence/resources/DBDynamicResources;

.field private final mDynamicResources:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/amazon/nwstd/resources/DynamicResource;",
            ">;"
        }
    .end annotation
.end field

.field private final mListeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/amazon/nwstd/resources/IDynamicResourcesListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 32
    const-class v0, Lcom/amazon/nwstd/resources/DynamicResourcesRepository;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/nwstd/resources/DynamicResourcesRepository;->TAG:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/nwstd/resources/DynamicResourcesRepository;->sFallbackLocaleMap:Ljava/util/Map;

    const-string v1, "de"

    const-string v2, "de-DE"

    .line 40
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/amazon/nwstd/resources/DynamicResourcesRepository;->sFallbackLocaleMap:Ljava/util/Map;

    const-string v1, "en"

    const-string v2, "en-GB"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/amazon/nwstd/resources/DynamicResourcesRepository;->sFallbackLocaleMap:Ljava/util/Map;

    const-string v1, "es"

    const-string v2, "es-ES"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/amazon/nwstd/resources/DynamicResourcesRepository;->sFallbackLocaleMap:Ljava/util/Map;

    const-string v1, "fr"

    const-string v2, "fr-FR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/amazon/nwstd/resources/DynamicResourcesRepository;->sFallbackLocaleMap:Ljava/util/Map;

    const-string v1, "it"

    const-string v2, "it-IT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/amazon/nwstd/resources/DynamicResourcesRepository;->sFallbackLocaleMap:Ljava/util/Map;

    const-string v1, "ja"

    const-string v2, "ja-JP"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/amazon/nwstd/resources/DynamicResourcesRepository;->sFallbackLocaleMap:Ljava/util/Map;

    const-string/jumbo v1, "pt"

    const-string/jumbo v2, "pt-BR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/amazon/nwstd/resources/DynamicResourcesRepository;->sFallbackLocaleMap:Ljava/util/Map;

    const-string/jumbo v1, "zh"

    const-string/jumbo v2, "zh-CN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/amazon/nwstd/resources/DynamicResourcesRepository;->mDynamicResources:Ljava/util/HashSet;

    .line 75
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lcom/amazon/nwstd/resources/DynamicResourcesRepository;->mListeners:Ljava/util/Vector;

    return-void
.end method

.method private cleanCorruptedDBResources(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;",
            ">;)V"
        }
    .end annotation

    .line 132
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;

    if-eqz v0, :cond_0

    .line 134
    iget-object v1, p0, Lcom/amazon/nwstd/resources/DynamicResourcesRepository;->mDBLayer:Lcom/amazon/nwstd/persistence/resources/DBDynamicResources;

    invoke-virtual {v1, v0}, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources;->removeResource(Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private createResourceFromData(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)Lcom/amazon/nwstd/resources/DynamicResource;
    .locals 3

    .line 171
    :try_start_0
    new-instance v0, Lcom/amazon/nwstd/resources/DynamicResource;

    invoke-direct {v0, p1, p5, p2}, Lcom/amazon/nwstd/resources/DynamicResource;-><init>(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/amazon/nwstd/resources/DynamicResource;->setLocale(Ljava/lang/String;)Lcom/amazon/nwstd/resources/DynamicResource;

    invoke-virtual {v0, p4}, Lcom/amazon/nwstd/resources/DynamicResource;->setParentASIN(Ljava/lang/String;)Lcom/amazon/nwstd/resources/DynamicResource;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 173
    :catch_0
    sget-object p5, Lcom/amazon/nwstd/resources/DynamicResourcesRepository;->TAG:Ljava/lang/String;

    const/16 v0, 0x10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create resource; arguments are not acceptable: type = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "], reference = ["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "], locale = ["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "], parentASIN = ["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p5, v0, p1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static getFallbackLocale(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 390
    invoke-static {p0}, Lcom/amazon/nwstd/utils/LocaleUtils;->toLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 392
    sget-object v0, Lcom/amazon/nwstd/resources/DynamicResourcesRepository;->sFallbackLocaleMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getResourcesStrict(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/nwstd/resources/DynamicResourceTargetType;",
            "Lcom/amazon/nwstd/resources/DynamicResourceOrigin;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/nwstd/resources/DynamicResource;",
            ">;"
        }
    .end annotation

    .line 284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 285
    iget-object v1, p0, Lcom/amazon/nwstd/resources/DynamicResourcesRepository;->mDynamicResources:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/nwstd/resources/DynamicResource;

    .line 286
    invoke-virtual {v2}, Lcom/amazon/nwstd/resources/DynamicResource;->getTargetType()Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 289
    :cond_0
    invoke-virtual {v2}, Lcom/amazon/nwstd/resources/DynamicResource;->getOriginType()Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 293
    invoke-virtual {v2}, Lcom/amazon/nwstd/resources/DynamicResource;->getLocale()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_3

    .line 297
    invoke-virtual {v2}, Lcom/amazon/nwstd/resources/DynamicResource;->getParentASIN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 300
    :cond_3
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private loadDBResources()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;",
            ">;"
        }
    .end annotation

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    iget-object v1, p0, Lcom/amazon/nwstd/resources/DynamicResourcesRepository;->mDBLayer:Lcom/amazon/nwstd/persistence/resources/DBDynamicResources;

    const/16 v2, 0x10

    if-nez v1, :cond_0

    .line 98
    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourcesRepository;->TAG:Ljava/lang/String;

    const-string v3, "Cannot initialize the database layer; dynamic resources will ONLY be stored in memory."

    invoke-static {v1, v2, v3}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0

    .line 101
    :cond_0
    invoke-virtual {v1}, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources;->loadAllResources()Ljava/util/List;

    move-result-object v1

    .line 103
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;

    const/4 v4, 0x0

    .line 107
    :try_start_0
    iget-object v5, v3, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;->targetType:Ljava/lang/String;

    invoke-static {v5}, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->valueOf(Ljava/lang/String;)Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    move-result-object v5

    .line 108
    iget-object v6, v3, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;->targetOrigin:Ljava/lang/String;

    invoke-static {v6}, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->valueOf(Ljava/lang/String;)Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v13, v4

    move-object v9, v5

    goto :goto_1

    :catch_0
    move-exception v5

    .line 111
    sget-object v6, Lcom/amazon/nwstd/resources/DynamicResourcesRepository;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Corrupted line in DB "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;->targetType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v2, v7, v5}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v9, v4

    move-object v13, v9

    :goto_1
    if-eqz v9, :cond_1

    .line 116
    iget-object v10, v3, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;->reference:Ljava/lang/String;

    iget-object v11, v3, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;->language:Ljava/lang/String;

    iget-object v12, v3, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;->parentASIN:Ljava/lang/String;

    move-object v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/amazon/nwstd/resources/DynamicResourcesRepository;->createResourceFromData(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)Lcom/amazon/nwstd/resources/DynamicResource;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 120
    iget-object v4, p0, Lcom/amazon/nwstd/resources/DynamicResourcesRepository;->mDynamicResources:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private packageForDB(Lcom/amazon/nwstd/resources/DynamicResource;)Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;
    .locals 8

    .line 331
    new-instance v7, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;

    invoke-virtual {p1}, Lcom/amazon/nwstd/resources/DynamicResource;->getParentASIN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/nwstd/resources/DynamicResource;->getLocale()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazon/nwstd/resources/DynamicResource;->getTimestamp()Ljava/lang/String;

    move-result-object v3

    .line 332
    invoke-virtual {p1}, Lcom/amazon/nwstd/resources/DynamicResource;->getTargetType()Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/amazon/nwstd/resources/DynamicResource;->getOriginType()Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/amazon/nwstd/resources/DynamicResource;->getReference()Ljava/lang/String;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method


# virtual methods
.method public declared-synchronized addResource(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)Lcom/amazon/nwstd/resources/DynamicResource;
    .locals 0

    monitor-enter p0

    .line 149
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/amazon/nwstd/resources/DynamicResourcesRepository;->createResourceFromData(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)Lcom/amazon/nwstd/resources/DynamicResource;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 151
    iget-object p2, p0, Lcom/amazon/nwstd/resources/DynamicResourcesRepository;->mDynamicResources:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 152
    iget-object p2, p0, Lcom/amazon/nwstd/resources/DynamicResourcesRepository;->mDBLayer:Lcom/amazon/nwstd/persistence/resources/DBDynamicResources;

    if-eqz p2, :cond_0

    .line 153
    iget-object p2, p0, Lcom/amazon/nwstd/resources/DynamicResourcesRepository;->mDBLayer:Lcom/amazon/nwstd/persistence/resources/DBDynamicResources;

    invoke-direct {p0, p1}, Lcom/amazon/nwstd/resources/DynamicResourcesRepository;->packageForDB(Lcom/amazon/nwstd/resources/DynamicResource;)Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources;->insertResource(Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;)Z

    .line 155
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/nwstd/resources/DynamicResourcesRepository;->broadcastResourceAddedOnUIThread(Lcom/amazon/nwstd/resources/DynamicResource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    :cond_1
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected broadcastResourceAddedOnUIThread(Lcom/amazon/nwstd/resources/DynamicResource;)V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/amazon/nwstd/resources/DynamicResourcesRepository;->mListeners:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lcom/amazon/nwstd/resources/IDynamicResourcesListener;

    .line 185
    iget-object v1, p0, Lcom/amazon/nwstd/resources/DynamicResourcesRepository;->mListeners:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 186
    new-instance v1, Lcom/amazon/nwstd/resources/DynamicResourcesRepository$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/amazon/nwstd/resources/DynamicResourcesRepository$1;-><init>(Lcom/amazon/nwstd/resources/DynamicResourcesRepository;[Lcom/amazon/nwstd/resources/IDynamicResourcesListener;Lcom/amazon/nwstd/resources/DynamicResource;)V

    invoke-static {v1}, Lcom/amazon/nwstd/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected broadcastResourceRemovedOnUIThread(Lcom/amazon/nwstd/resources/DynamicResource;)V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/amazon/nwstd/resources/DynamicResourcesRepository;->mListeners:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lcom/amazon/nwstd/resources/IDynamicResourcesListener;

    .line 219
    iget-object v1, p0, Lcom/amazon/nwstd/resources/DynamicResourcesRepository;->mListeners:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 220
    new-instance v1, Lcom/amazon/nwstd/resources/DynamicResourcesRepository$2;

    invoke-direct {v1, p0, v0, p1}, Lcom/amazon/nwstd/resources/DynamicResourcesRepository$2;-><init>(Lcom/amazon/nwstd/resources/DynamicResourcesRepository;[Lcom/amazon/nwstd/resources/IDynamicResourcesListener;Lcom/amazon/nwstd/resources/DynamicResource;)V

    invoke-static {v1}, Lcom/amazon/nwstd/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method getDynamicResourcesArrayCopy()[Lcom/amazon/nwstd/resources/DynamicResource;
    .locals 2

    .line 367
    iget-object v0, p0, Lcom/amazon/nwstd/resources/DynamicResourcesRepository;->mDynamicResources:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v0, v0, [Lcom/amazon/nwstd/resources/DynamicResource;

    .line 368
    iget-object v1, p0, Lcom/amazon/nwstd/resources/DynamicResourcesRepository;->mDynamicResources:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public declared-synchronized getResourceReferencesByType(Ljava/util/EnumSet;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/amazon/nwstd/resources/DynamicResourceValueType;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_3

    .line 341
    :try_start_0
    invoke-virtual {p1}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 344
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 346
    iget-object v1, p0, Lcom/amazon/nwstd/resources/DynamicResourcesRepository;->mDynamicResources:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/nwstd/resources/DynamicResource;

    .line 347
    invoke-virtual {v2}, Lcom/amazon/nwstd/resources/DynamicResource;->getTargetType()Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->getValueType()Lcom/amazon/nwstd/resources/DynamicResourceValueType;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 348
    invoke-virtual {v2}, Lcom/amazon/nwstd/resources/DynamicResource;->getReference()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 352
    :cond_2
    monitor-exit p0

    return-object v0

    .line 342
    :cond_3
    :goto_1
    :try_start_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getResources(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/nwstd/resources/DynamicResourceTargetType;",
            "Lcom/amazon/nwstd/resources/DynamicResourceOrigin;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/nwstd/resources/DynamicResource;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 250
    :goto_0
    :try_start_0
    invoke-static {v0}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 253
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/nwstd/resources/DynamicResourcesRepository;->getResourcesStrict(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 255
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p3, :cond_1

    .line 257
    invoke-static {p3}, Lcom/amazon/nwstd/utils/LocaleUtils;->toLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 258
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 259
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/amazon/nwstd/resources/DynamicResourcesRepository;->getResourcesStrict(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 263
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p3, :cond_2

    .line 265
    invoke-static {p3}, Lcom/amazon/nwstd/resources/DynamicResourcesRepository;->getFallbackLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 267
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/nwstd/resources/DynamicResourcesRepository;->getResourcesStrict(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized initializeDB(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    .line 84
    :try_start_0
    new-instance v0, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources;

    invoke-direct {v0, p1}, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/nwstd/resources/DynamicResourcesRepository;->mDBLayer:Lcom/amazon/nwstd/persistence/resources/DBDynamicResources;

    .line 85
    invoke-direct {p0}, Lcom/amazon/nwstd/resources/DynamicResourcesRepository;->loadDBResources()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 86
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    invoke-direct {p0, p1}, Lcom/amazon/nwstd/resources/DynamicResourcesRepository;->cleanCorruptedDBResources(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerEventListener(Lcom/amazon/nwstd/resources/IDynamicResourcesListener;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 311
    :try_start_0
    iget-object v0, p0, Lcom/amazon/nwstd/resources/DynamicResourcesRepository;->mListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 313
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public releaseDB()V
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/amazon/nwstd/resources/DynamicResourcesRepository;->mDBLayer:Lcom/amazon/nwstd/persistence/resources/DBDynamicResources;

    if-eqz v0, :cond_0

    .line 378
    invoke-virtual {v0}, Lcom/amazon/nwstd/persistence/DBLocalStorage;->close()V

    :cond_0
    const/4 v0, 0x0

    .line 380
    iput-object v0, p0, Lcom/amazon/nwstd/resources/DynamicResourcesRepository;->mDBLayer:Lcom/amazon/nwstd/persistence/resources/DBDynamicResources;

    return-void
.end method

.method public declared-synchronized removeResource(Lcom/amazon/nwstd/resources/DynamicResource;)Z
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_1

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/amazon/nwstd/resources/DynamicResourcesRepository;->mDynamicResources:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/amazon/nwstd/resources/DynamicResourcesRepository;->mDBLayer:Lcom/amazon/nwstd/persistence/resources/DBDynamicResources;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/amazon/nwstd/resources/DynamicResourcesRepository;->mDBLayer:Lcom/amazon/nwstd/persistence/resources/DBDynamicResources;

    invoke-direct {p0, p1}, Lcom/amazon/nwstd/resources/DynamicResourcesRepository;->packageForDB(Lcom/amazon/nwstd/resources/DynamicResource;)Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources;->removeResource(Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;)Z

    .line 207
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/nwstd/resources/DynamicResourcesRepository;->broadcastResourceRemovedOnUIThread(Lcom/amazon/nwstd/resources/DynamicResource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 208
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_1
    const/4 p1, 0x0

    .line 210
    monitor-exit p0

    return p1
.end method

.method public declared-synchronized unregisterEventListener(Lcom/amazon/nwstd/resources/IDynamicResourcesListener;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 321
    :try_start_0
    iget-object v0, p0, Lcom/amazon/nwstd/resources/DynamicResourcesRepository;->mListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 323
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method
