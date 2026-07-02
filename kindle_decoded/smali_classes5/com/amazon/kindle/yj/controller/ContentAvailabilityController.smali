.class public Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;
.super Ljava/lang/Object;
.source "ContentAvailabilityController.java"

# interfaces
.implements Lcom/amazon/kindle/yj/controller/IContentAvailabilityController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$DownloadStatusTracker;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

.field private isActive:Z

.field private mAssetStateManager:Lcom/amazon/kindle/download/assets/IAssetStateManager;

.field private mAssetsDownloadTrackers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAttachedAssets:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBookID:Lcom/amazon/kcp/library/models/internal/AmznBookID;

.field private mBookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

.field private mContentAvailabilityListener:Lcom/amazon/kindle/yj/controller/IResourceHost;

.field private mContext:Landroid/content/Context;

.field statusTracker:Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$DownloadStatusTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-class v0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/yj/controller/IResourceHost;Lcom/amazon/kindle/model/content/ILocalBookItem;)V
    .locals 2

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;->isActive:Z

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;->statusTracker:Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$DownloadStatusTracker;

    .line 64
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;->mAssetsDownloadTrackers:Ljava/util/HashMap;

    .line 66
    iput-object v0, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;->mAttachedAssets:Ljava/util/Set;

    .line 131
    iput-object p1, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;->mContentAvailabilityListener:Lcom/amazon/kindle/yj/controller/IResourceHost;

    .line 132
    iput-object p2, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;->mBookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    .line 133
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    .line 134
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;->mContext:Landroid/content/Context;

    .line 135
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAssetStateManager()Lcom/amazon/kindle/download/assets/IAssetStateManager;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;->mAssetStateManager:Lcom/amazon/kindle/download/assets/IAssetStateManager;

    .line 136
    new-instance p1, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    invoke-interface {p2}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    iput-object p1, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;->mBookID:Lcom/amazon/kcp/library/models/internal/AmznBookID;

    .line 137
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;->mAttachedAssets:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;->isActive:Z

    return p0
.end method

.method static synthetic access$100(Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;)Lcom/amazon/kcp/library/models/internal/AmznBookID;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;->mBookID:Lcom/amazon/kcp/library/models/internal/AmznBookID;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;)Lcom/amazon/kindle/download/assets/IAssetStateManager;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;->mAssetStateManager:Lcom/amazon/kindle/download/assets/IAssetStateManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;)Lcom/amazon/kindle/model/content/ILocalBookItem;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;->mBookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    return-object p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 50
    sget-object v0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;)Lcom/amazon/kindle/yj/controller/IResourceHost;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;->mContentAvailabilityListener:Lcom/amazon/kindle/yj/controller/IResourceHost;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;)Ljava/util/Set;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;->mAttachedAssets:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;)Landroid/content/Context;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public addAssetDownloadTracker(Ljava/util/List;Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 200
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 204
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 205
    iget-object v1, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;->mAssetsDownloadTrackers:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    if-nez v1, :cond_1

    .line 207
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 208
    iget-object v2, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;->mAssetsDownloadTrackers:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    :cond_1
    invoke-virtual {v1, p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public areAllAssetsAttached(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;->mAttachedAssets:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public destroy()V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;->mAssetsDownloadTrackers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    .line 194
    iput-boolean v0, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;->isActive:Z

    return-void
.end method

.method public init(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getDownloadService()Lcom/amazon/kindle/services/download/IDownloadService;

    move-result-object v0

    .line 148
    sget-object v1, Lcom/amazon/kindle/services/download/AssetPriority;->PREFERRED:Lcom/amazon/kindle/services/download/AssetPriority;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    .line 149
    sget-object v2, Lcom/amazon/kindle/services/download/AssetPriority;->DEFERRED:Lcom/amazon/kindle/services/download/AssetPriority;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 150
    sget-object v2, Lcom/amazon/kindle/services/download/AssetPriority;->OPTIONAL:Lcom/amazon/kindle/services/download/AssetPriority;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 152
    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 153
    sget-object v3, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;->TOAD_ASSET:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v3, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;->mAssetStateManager:Lcom/amazon/kindle/download/assets/IAssetStateManager;

    iget-object v4, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;->mBookID:Lcom/amazon/kcp/library/models/internal/AmznBookID;

    invoke-interface {v3, v4, p1}, Lcom/amazon/kindle/download/assets/IAssetStateManager;->getAssetsForAssetIds(Lcom/amazon/kindle/model/content/IBookID;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 156
    iget-object v3, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;->mAssetStateManager:Lcom/amazon/kindle/download/assets/IAssetStateManager;

    iget-object v4, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;->mBookID:Lcom/amazon/kcp/library/models/internal/AmznBookID;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5, v1, v2}, Lcom/amazon/kindle/download/assets/IAssetStateManager;->getAssets(Lcom/amazon/kindle/model/content/IBookID;Ljava/util/EnumSet;Ljava/util/EnumSet;Ljava/util/Set;)Ljava/util/Collection;

    move-result-object v1

    .line 157
    invoke-interface {v1, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 159
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v2

    new-instance v3, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$1;

    invoke-direct {v3, p0, v0, p1, v1}, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$1;-><init>(Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;Lcom/amazon/kindle/services/download/IDownloadService;Ljava/util/Collection;Ljava/util/Collection;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method protected notifyDownloadProgress(Ljava/lang/String;Lcom/amazon/kindle/webservices/IWebRequest;J)V
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;->mAssetsDownloadTrackers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;->mAssetsDownloadTrackers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;

    .line 283
    invoke-interface {v0, p2, p3, p4}, Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;->reportProgress(Lcom/amazon/kindle/webservices/IWebRequest;J)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected notifyDownloadState(Ljava/lang/String;Lcom/amazon/kindle/webservices/IWebRequest;Lcom/amazon/kindle/webservices/RequestStatus;)V
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;->mAssetsDownloadTrackers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;->mAssetsDownloadTrackers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;

    .line 297
    invoke-interface {v0, p2, p3}, Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;->reportStatus(Lcom/amazon/kindle/webservices/IWebRequest;Lcom/amazon/kindle/webservices/RequestStatus;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public prioritizeAssetDownloads(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 247
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$2;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$2;-><init>(Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public removeAssetDownloadTracker(Ljava/util/List;Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 218
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 222
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 223
    iget-object v1, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;->mAssetsDownloadTrackers:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    if-eqz v1, :cond_1

    .line 225
    invoke-virtual {v1, p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 226
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 227
    iget-object v1, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;->mAssetsDownloadTrackers:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
