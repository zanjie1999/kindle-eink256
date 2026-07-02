.class public Lcom/amazon/appexpan/client/ResourceSetLoader;
.super Ljava/lang/Object;
.source "ResourceSetLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/appexpan/client/ResourceSetLoader$ResourceSetVersionCacheLoader;
    }
.end annotation


# static fields
.field private static final INVALID_DOWNLOAD_ID:J = -0x1L

.field private static final TAG:Ljava/lang/String; = "com.amazon.appexpan.client.ResourceSetLoader"


# instance fields
.field private activeResourceSetVersionCache:Lcom/google/common/cache/LoadingCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/LoadingCache<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final compressedResourceHandler:Lcom/amazon/appexpan/client/download/CompressedResourceHandler;

.field private final dao:Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

.field private final resourceDownloadManager:Lcom/amazon/appexpan/client/download/ResourceDownloadManager;

.field private final resourceLocationManager:Lcom/amazon/appexpan/client/download/ResourceLocationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;Lcom/amazon/appexpan/client/download/ResourceDownloadManager;Lcom/amazon/appexpan/client/download/CompressedResourceHandler;Landroid/content/Context;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/amazon/appexpan/client/ResourceSetLoader;->dao:Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

    .line 56
    iput-object p2, p0, Lcom/amazon/appexpan/client/ResourceSetLoader;->resourceDownloadManager:Lcom/amazon/appexpan/client/download/ResourceDownloadManager;

    .line 57
    iput-object p3, p0, Lcom/amazon/appexpan/client/ResourceSetLoader;->compressedResourceHandler:Lcom/amazon/appexpan/client/download/CompressedResourceHandler;

    .line 59
    invoke-static {}, Lcom/google/common/cache/CacheBuilder;->newBuilder()Lcom/google/common/cache/CacheBuilder;

    move-result-object p2

    new-instance p3, Lcom/amazon/appexpan/client/ResourceSetLoader$ResourceSetVersionCacheLoader;

    invoke-direct {p3, p0, p1}, Lcom/amazon/appexpan/client/ResourceSetLoader$ResourceSetVersionCacheLoader;-><init>(Lcom/amazon/appexpan/client/ResourceSetLoader;Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;)V

    .line 60
    invoke-virtual {p2, p3}, Lcom/google/common/cache/CacheBuilder;->build(Lcom/google/common/cache/CacheLoader;)Lcom/google/common/cache/LoadingCache;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/appexpan/client/ResourceSetLoader;->activeResourceSetVersionCache:Lcom/google/common/cache/LoadingCache;

    .line 62
    invoke-static {p4}, Lcom/amazon/appexpan/client/download/ResourceLocationManager;->getInstance(Landroid/content/Context;)Lcom/amazon/appexpan/client/download/ResourceLocationManager;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/appexpan/client/ResourceSetLoader;->resourceLocationManager:Lcom/amazon/appexpan/client/download/ResourceLocationManager;

    return-void
.end method

.method private deleteResourcesFromResourceSet(Lcom/amazon/appexpan/client/model/ResourceSetModel;)V
    .locals 6

    .line 239
    invoke-direct {p0, p1}, Lcom/amazon/appexpan/client/ResourceSetLoader;->getDeletableResourcesFromResourceSet(Lcom/amazon/appexpan/client/model/ResourceSetModel;)Ljava/util/List;

    move-result-object p1

    .line 241
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/appexpan/client/model/ResourceModel;

    .line 243
    invoke-virtual {v0}, Lcom/amazon/appexpan/client/model/ResourceModel;->getState()Lcom/amazon/appexpan/client/model/ResourceModel$State;

    move-result-object v1

    sget-object v2, Lcom/amazon/appexpan/client/model/ResourceModel$State;->LOCAL:Lcom/amazon/appexpan/client/model/ResourceModel$State;

    if-ne v1, v2, :cond_0

    .line 245
    iget-object v1, p0, Lcom/amazon/appexpan/client/ResourceSetLoader;->resourceLocationManager:Lcom/amazon/appexpan/client/download/ResourceLocationManager;

    invoke-virtual {v1, v0}, Lcom/amazon/appexpan/client/download/ResourceLocationManager;->getDestinationResourceFile(Lcom/amazon/appexpan/client/model/ResourceModel;)Ljava/io/File;

    move-result-object v1

    const-wide/16 v2, -0x1

    if-nez v1, :cond_1

    .line 248
    sget-object v1, Lcom/amazon/appexpan/client/ResourceSetLoader;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Location of resource "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/amazon/appexpan/client/model/ResourceModel;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " was null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/amazon/appexpan/client/AppExpanLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v1, p0, Lcom/amazon/appexpan/client/ResourceSetLoader;->dao:Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

    sget-object v4, Lcom/amazon/appexpan/client/model/ResourceModel$State;->REMOTE:Lcom/amazon/appexpan/client/model/ResourceModel$State;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v0, v4, v2}, Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;->updateResourceState(Lcom/amazon/appexpan/client/model/ResourceModel;Lcom/amazon/appexpan/client/model/ResourceModel$State;Ljava/lang/Long;)V

    goto :goto_0

    .line 251
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/appexpan/client/io/FileSystemHelper;->delete(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 253
    sget-object v0, Lcom/amazon/appexpan/client/ResourceSetLoader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " after release"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/appexpan/client/AppExpanLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 258
    :cond_2
    iget-object v1, p0, Lcom/amazon/appexpan/client/ResourceSetLoader;->dao:Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

    sget-object v4, Lcom/amazon/appexpan/client/model/ResourceModel$State;->REMOTE:Lcom/amazon/appexpan/client/model/ResourceModel$State;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v0, v4, v2}, Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;->updateResourceState(Lcom/amazon/appexpan/client/model/ResourceModel;Lcom/amazon/appexpan/client/model/ResourceModel$State;Ljava/lang/Long;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private getDeletableResourcesFromResourceSet(Lcom/amazon/appexpan/client/model/ResourceSetModel;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/appexpan/client/model/ResourceSetModel;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/appexpan/client/model/ResourceModel;",
            ">;"
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/amazon/appexpan/client/ResourceSetLoader;->dao:Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

    invoke-interface {v0, p1}, Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;->getResourcesForResourceSet(Lcom/amazon/appexpan/client/model/ResourceSetModel;)Ljava/util/List;

    move-result-object v0

    .line 277
    iget-object v1, p0, Lcom/amazon/appexpan/client/ResourceSetLoader;->dao:Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

    invoke-interface {v1}, Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;->getAllResourceSets()Ljava/util/List;

    move-result-object v1

    .line 278
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 280
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/appexpan/client/model/ResourceSetModel;

    .line 282
    invoke-virtual {v1}, Lcom/amazon/appexpan/client/model/ResourceSetModel;->getState()Lcom/amazon/appexpan/client/model/ResourceSetModel$State;

    move-result-object v2

    sget-object v3, Lcom/amazon/appexpan/client/model/ResourceSetModel$State;->NOT_REQUESTED:Lcom/amazon/appexpan/client/model/ResourceSetModel$State;

    if-eq v2, v3, :cond_0

    .line 284
    iget-object v2, p0, Lcom/amazon/appexpan/client/ResourceSetLoader;->dao:Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

    invoke-interface {v2, v1}, Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;->getResourcesForResourceSet(Lcom/amazon/appexpan/client/model/ResourceSetModel;)Ljava/util/List;

    move-result-object v1

    .line 285
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/appexpan/client/model/ResourceModel;

    .line 287
    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method getActiveResourceSet(Ljava/lang/String;Z)Lcom/amazon/appexpan/client/ResourceSet;
    .locals 9

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 79
    iget-object p2, p0, Lcom/amazon/appexpan/client/ResourceSetLoader;->dao:Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

    invoke-interface {p2, p1}, Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;->getActiveResourceSetVersion(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    .line 85
    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/amazon/appexpan/client/ResourceSetLoader;->activeResourceSetVersionCache:Lcom/google/common/cache/LoadingCache;

    invoke-interface {p2, p1}, Lcom/google/common/cache/LoadingCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p2, v0

    :goto_0
    if-eqz p2, :cond_4

    .line 96
    invoke-static {}, Lcom/amazon/appexpan/client/model/ResourceSetModel;->builder()Lcom/amazon/appexpan/client/model/ResourceSetModel$ResourceSetModelBuilder;

    move-result-object v0

    .line 97
    invoke-virtual {v0, p1}, Lcom/amazon/appexpan/client/model/ResourceSetModel$ResourceSetModelBuilder;->name(Ljava/lang/String;)Lcom/amazon/appexpan/client/model/ResourceSetModel$ResourceSetModelBuilder;

    .line 98
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/appexpan/client/model/ResourceSetModel$ResourceSetModelBuilder;->version(I)Lcom/amazon/appexpan/client/model/ResourceSetModel$ResourceSetModelBuilder;

    .line 99
    invoke-virtual {v0}, Lcom/amazon/appexpan/client/model/ResourceSetModel$ResourceSetModelBuilder;->build()Lcom/amazon/appexpan/client/model/ResourceSetModel;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/amazon/appexpan/client/ResourceSetLoader;->dao:Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

    .line 102
    invoke-interface {v1, v0}, Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;->getResourcesForResourceSet(Lcom/amazon/appexpan/client/model/ResourceSetModel;)Ljava/util/List;

    move-result-object v0

    .line 104
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 105
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 107
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/appexpan/client/model/ResourceModel;

    .line 110
    iget-object v4, p0, Lcom/amazon/appexpan/client/ResourceSetLoader;->resourceLocationManager:Lcom/amazon/appexpan/client/download/ResourceLocationManager;

    invoke-virtual {v4, v3}, Lcom/amazon/appexpan/client/download/ResourceLocationManager;->getDestinationResourceFile(Lcom/amazon/appexpan/client/model/ResourceModel;)Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 113
    iget-object v5, p0, Lcom/amazon/appexpan/client/ResourceSetLoader;->compressedResourceHandler:Lcom/amazon/appexpan/client/download/CompressedResourceHandler;

    invoke-virtual {v5, v4}, Lcom/amazon/appexpan/client/download/CompressedResourceHandler;->isCompressedResource(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 115
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 118
    :cond_2
    new-instance v5, Lcom/amazon/appexpan/client/Resource;

    invoke-virtual {v3}, Lcom/amazon/appexpan/client/model/ResourceModel;->getName()Ljava/lang/String;

    move-result-object v6

    .line 119
    invoke-virtual {v3}, Lcom/amazon/appexpan/client/model/ResourceModel;->getVersion()I

    move-result v7

    invoke-virtual {v3}, Lcom/amazon/appexpan/client/model/ResourceModel;->getRefName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8, v4}, Lcom/amazon/appexpan/client/Resource;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/io/File;)V

    .line 122
    invoke-virtual {v3}, Lcom/amazon/appexpan/client/model/ResourceModel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-virtual {v3}, Lcom/amazon/appexpan/client/model/ResourceModel;->getRefName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/appexpan/client/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 125
    invoke-virtual {v3}, Lcom/amazon/appexpan/client/model/ResourceModel;->getRefName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/amazon/appexpan/client/model/ResourceModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 129
    :cond_3
    new-instance v0, Lcom/amazon/appexpan/client/ResourceSet;

    .line 130
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/amazon/appexpan/client/ResourceSet;-><init>(Ljava/lang/String;ILjava/util/Map;Ljava/util/Map;)V

    :cond_4
    return-object v0
.end method

.method getMaxVersionResourceSet(Ljava/lang/String;)Lcom/amazon/appexpan/client/model/ResourceSetModel;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/amazon/appexpan/client/ResourceSetLoader;->dao:Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

    invoke-interface {v0, p1}, Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;->getMaxVersionResourceSet(Ljava/lang/String;)Lcom/amazon/appexpan/client/model/ResourceSetModel;

    move-result-object p1

    return-object p1
.end method

.method releaseResourceSet(Lcom/amazon/appexpan/client/model/ResourceSetModel;)V
    .locals 3

    .line 216
    iget-object v0, p0, Lcom/amazon/appexpan/client/ResourceSetLoader;->dao:Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

    invoke-interface {v0, p1}, Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;->promoteResourceSetToNotRequested(Lcom/amazon/appexpan/client/model/ResourceSetModel;)Z

    move-result v0

    const-string v1, "Resource set: "

    if-eqz v0, :cond_0

    .line 218
    sget-object v0, Lcom/amazon/appexpan/client/ResourceSetLoader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceSetModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " marked as NOT_REQUESTED."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/appexpan/client/AppExpanLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/amazon/appexpan/client/ResourceSetLoader;->activeResourceSetVersionCache:Lcom/google/common/cache/LoadingCache;

    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceSetModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/cache/Cache;->invalidate(Ljava/lang/Object;)V

    goto :goto_0

    .line 223
    :cond_0
    sget-object v0, Lcom/amazon/appexpan/client/ResourceSetLoader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceSetModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " could not be marked as NOT_REQUESTED"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/appexpan/client/AppExpanLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :goto_0
    iget-object v0, p0, Lcom/amazon/appexpan/client/ResourceSetLoader;->resourceDownloadManager:Lcom/amazon/appexpan/client/download/ResourceDownloadManager;

    invoke-virtual {v0, p1}, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->cancelResourceDownloadsForResourceSet(Lcom/amazon/appexpan/client/model/ResourceSetModel;)V

    .line 226
    invoke-direct {p0, p1}, Lcom/amazon/appexpan/client/ResourceSetLoader;->deleteResourcesFromResourceSet(Lcom/amazon/appexpan/client/model/ResourceSetModel;)V

    return-void
.end method

.method requestLatestResourceSet(Ljava/lang/String;)Z
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/amazon/appexpan/client/ResourceSetLoader;->dao:Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

    invoke-interface {v0, p1}, Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;->promoteLatestNotRequestedResourceSetToRemote(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/amazon/appexpan/client/ResourceSetLoader;->dao:Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

    invoke-interface {v1, p1, v0}, Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;->getResourceSet(Ljava/lang/String;I)Lcom/amazon/appexpan/client/model/ResourceSetModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 151
    iget-object v0, p0, Lcom/amazon/appexpan/client/ResourceSetLoader;->resourceDownloadManager:Lcom/amazon/appexpan/client/download/ResourceDownloadManager;

    invoke-virtual {v0, p1}, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->prioritizeDownloadWhenApplicable(Lcom/amazon/appexpan/client/model/ResourceSetModel;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
