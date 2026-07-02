.class public Lcom/amazon/nwstd/resources/DynamicResourcesController;
.super Ljava/lang/Object;
.source "DynamicResourcesController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;
    }
.end annotation


# static fields
.field private static final MAX_NUMBER_FILENAME_GENERATION_RETRIES:I = 0x64

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/amazon/nwstd/resources/DynamicResourcesController;

.field private static sReferenceCounter:J


# instance fields
.field private mDiskStorage:Lcom/amazon/nwstd/resources/DynamicResourcesDiskStorage;

.field protected mRepository:Lcom/amazon/nwstd/resources/DynamicResourcesRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lcom/amazon/nwstd/resources/DynamicResourcesController;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/nwstd/resources/DynamicResourcesController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 21
    invoke-static {p0, p1}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->generateNewFileName(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/nwstd/resources/DynamicResourcesController;)Lcom/amazon/nwstd/resources/DynamicResourcesDiskStorage;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/amazon/nwstd/resources/DynamicResourcesController;->mDiskStorage:Lcom/amazon/nwstd/resources/DynamicResourcesDiskStorage;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 21
    sget-object v0, Lcom/amazon/nwstd/resources/DynamicResourcesController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized acquire()Lcom/amazon/nwstd/resources/DynamicResourcesController;
    .locals 6

    const-class v0, Lcom/amazon/nwstd/resources/DynamicResourcesController;

    monitor-enter v0

    .line 65
    :try_start_0
    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourcesController;->sInstance:Lcom/amazon/nwstd/resources/DynamicResourcesController;

    if-nez v1, :cond_1

    .line 66
    sget-wide v1, Lcom/amazon/nwstd/resources/DynamicResourcesController;->sReferenceCounter:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 67
    sput-wide v3, Lcom/amazon/nwstd/resources/DynamicResourcesController;->sReferenceCounter:J

    .line 68
    new-instance v1, Lcom/amazon/nwstd/resources/DynamicResourcesController;

    invoke-direct {v1}, Lcom/amazon/nwstd/resources/DynamicResourcesController;-><init>()V

    sput-object v1, Lcom/amazon/nwstd/resources/DynamicResourcesController;->sInstance:Lcom/amazon/nwstd/resources/DynamicResourcesController;

    .line 69
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->initialize(Landroid/content/Context;)V

    .line 71
    :cond_1
    sget-wide v1, Lcom/amazon/nwstd/resources/DynamicResourcesController;->sReferenceCounter:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    sput-wide v1, Lcom/amazon/nwstd/resources/DynamicResourcesController;->sReferenceCounter:J

    .line 72
    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourcesController;->sInstance:Lcom/amazon/nwstd/resources/DynamicResourcesController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static buildFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static generateNewFileName(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 115
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-static {v0, p1}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->buildFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 118
    :goto_0
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0x64

    if-eqz v2, :cond_0

    if-ge v1, v3, :cond_0

    .line 119
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-static {v0, p1}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->buildFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-lt v1, v3, :cond_1

    .line 124
    sget-object p0, Lcom/amazon/nwstd/resources/DynamicResourcesController;->TAG:Ljava/lang/String;

    const/16 p1, 0x10

    const-string v0, "Cannot generate new unique resource file name, giving up."

    invoke-static {p0, p1, v0}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    return-object v0
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 1

    .line 80
    new-instance v0, Lcom/amazon/nwstd/resources/DynamicResourcesDiskStorage;

    invoke-direct {v0, p1}, Lcom/amazon/nwstd/resources/DynamicResourcesDiskStorage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/nwstd/resources/DynamicResourcesController;->mDiskStorage:Lcom/amazon/nwstd/resources/DynamicResourcesDiskStorage;

    .line 81
    new-instance v0, Lcom/amazon/nwstd/resources/DynamicResourcesRepository;

    invoke-direct {v0, p1}, Lcom/amazon/nwstd/resources/DynamicResourcesRepository;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/nwstd/resources/DynamicResourcesController;->mRepository:Lcom/amazon/nwstd/resources/DynamicResourcesRepository;

    .line 83
    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/resources/DynamicResourcesRepository;->initializeDB(Landroid/content/Context;)V

    return-void
.end method

.method public static declared-synchronized release()V
    .locals 8

    const-class v0, Lcom/amazon/nwstd/resources/DynamicResourcesController;

    monitor-enter v0

    .line 200
    :try_start_0
    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourcesController;->sInstance:Lcom/amazon/nwstd/resources/DynamicResourcesController;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 201
    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourcesController;->TAG:Ljava/lang/String;

    const/4 v4, 0x4

    const-string v5, "Releasing DynamicResourcesController resources."

    invoke-static {v1, v4, v5}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 202
    sget-wide v4, Lcom/amazon/nwstd/resources/DynamicResourcesController;->sReferenceCounter:J

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    sput-wide v4, Lcom/amazon/nwstd/resources/DynamicResourcesController;->sReferenceCounter:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_2

    .line 204
    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourcesController;->sInstance:Lcom/amazon/nwstd/resources/DynamicResourcesController;

    iget-object v1, v1, Lcom/amazon/nwstd/resources/DynamicResourcesController;->mRepository:Lcom/amazon/nwstd/resources/DynamicResourcesRepository;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 205
    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourcesController;->sInstance:Lcom/amazon/nwstd/resources/DynamicResourcesController;

    iget-object v1, v1, Lcom/amazon/nwstd/resources/DynamicResourcesController;->mRepository:Lcom/amazon/nwstd/resources/DynamicResourcesRepository;

    invoke-virtual {v1}, Lcom/amazon/nwstd/resources/DynamicResourcesRepository;->releaseDB()V

    .line 206
    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourcesController;->sInstance:Lcom/amazon/nwstd/resources/DynamicResourcesController;

    iput-object v2, v1, Lcom/amazon/nwstd/resources/DynamicResourcesController;->mRepository:Lcom/amazon/nwstd/resources/DynamicResourcesRepository;

    .line 208
    :cond_1
    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourcesController;->sInstance:Lcom/amazon/nwstd/resources/DynamicResourcesController;

    iput-object v2, v1, Lcom/amazon/nwstd/resources/DynamicResourcesController;->mDiskStorage:Lcom/amazon/nwstd/resources/DynamicResourcesDiskStorage;

    .line 209
    sput-object v2, Lcom/amazon/nwstd/resources/DynamicResourcesController;->sInstance:Lcom/amazon/nwstd/resources/DynamicResourcesController;

    goto :goto_2

    :cond_2
    cmp-long v1, v4, v6

    if-lez v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 211
    :goto_1
    invoke-static {v2}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public clear()Z
    .locals 6

    .line 184
    iget-object v0, p0, Lcom/amazon/nwstd/resources/DynamicResourcesController;->mRepository:Lcom/amazon/nwstd/resources/DynamicResourcesRepository;

    monitor-enter v0

    .line 185
    :try_start_0
    iget-object v1, p0, Lcom/amazon/nwstd/resources/DynamicResourcesController;->mRepository:Lcom/amazon/nwstd/resources/DynamicResourcesRepository;

    invoke-virtual {v1}, Lcom/amazon/nwstd/resources/DynamicResourcesRepository;->getDynamicResourcesArrayCopy()[Lcom/amazon/nwstd/resources/DynamicResource;

    move-result-object v1

    .line 186
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v5, v1, v3

    .line 187
    invoke-virtual {p0, v5}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->removeResource(Lcom/amazon/nwstd/resources/DynamicResource;)Z

    move-result v5

    and-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 189
    :cond_0
    monitor-exit v0

    return v4

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getResources(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
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

    .line 155
    iget-object v0, p0, Lcom/amazon/nwstd/resources/DynamicResourcesController;->mRepository:Lcom/amazon/nwstd/resources/DynamicResourcesRepository;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/amazon/nwstd/resources/DynamicResourcesRepository;->getResources(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public registerEventListener(Lcom/amazon/nwstd/resources/IDynamicResourcesListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/amazon/nwstd/resources/DynamicResourcesController;->mRepository:Lcom/amazon/nwstd/resources/DynamicResourcesRepository;

    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/resources/DynamicResourcesRepository;->registerEventListener(Lcom/amazon/nwstd/resources/IDynamicResourcesListener;)V

    :cond_0
    return-void
.end method

.method public removeResource(Lcom/amazon/nwstd/resources/DynamicResource;)Z
    .locals 4

    if-eqz p1, :cond_1

    .line 167
    sget-object v0, Lcom/amazon/nwstd/resources/DynamicResourceValueType;->FILE:Lcom/amazon/nwstd/resources/DynamicResourceValueType;

    invoke-virtual {p1}, Lcom/amazon/nwstd/resources/DynamicResource;->getTargetType()Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->getValueType()Lcom/amazon/nwstd/resources/DynamicResourceValueType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/amazon/nwstd/resources/DynamicResourcesController;->mDiskStorage:Lcom/amazon/nwstd/resources/DynamicResourcesDiskStorage;

    invoke-virtual {p1}, Lcom/amazon/nwstd/resources/DynamicResource;->getReference()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/nwstd/resources/DynamicResourcesDiskStorage;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    sget-object v0, Lcom/amazon/nwstd/resources/DynamicResourcesController;->TAG:Ljava/lang/String;

    const/16 v1, 0x10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t delete file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/nwstd/resources/DynamicResource;->getReference()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", removing associated resource anyway."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/amazon/nwstd/resources/DynamicResourcesController;->mRepository:Lcom/amazon/nwstd/resources/DynamicResourcesRepository;

    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/resources/DynamicResourcesRepository;->removeResource(Lcom/amazon/nwstd/resources/DynamicResource;)Z

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public unregisterEventListener(Lcom/amazon/nwstd/resources/IDynamicResourcesListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/amazon/nwstd/resources/DynamicResourcesController;->mRepository:Lcom/amazon/nwstd/resources/DynamicResourcesRepository;

    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/resources/DynamicResourcesRepository;->unregisterEventListener(Lcom/amazon/nwstd/resources/IDynamicResourcesListener;)V

    :cond_0
    return-void
.end method
