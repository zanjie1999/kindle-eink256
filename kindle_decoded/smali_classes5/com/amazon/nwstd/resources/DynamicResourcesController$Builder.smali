.class public Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;
.super Ljava/lang/Object;
.source "DynamicResourcesController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/nwstd/resources/DynamicResourcesController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mController:Lcom/amazon/nwstd/resources/DynamicResourcesController;

.field private mFileSuffix:Ljava/lang/String;

.field private mLanguage:Ljava/lang/String;

.field private mOrigin:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

.field private mParentASIN:Ljava/lang/String;

.field private mReference:Ljava/lang/String;

.field private mTemporaryResourceFilePath:Ljava/lang/String;

.field private mType:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;


# direct methods
.method public constructor <init>(Lcom/amazon/nwstd/resources/DynamicResourcesController;)V
    .locals 1

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 237
    :goto_0
    invoke-static {v0}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 238
    iput-object p1, p0, Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;->mController:Lcom/amazon/nwstd/resources/DynamicResourcesController;

    return-void
.end method


# virtual methods
.method public create()Lcom/amazon/nwstd/resources/DynamicResource;
    .locals 8

    .line 248
    iget-object v0, p0, Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;->mController:Lcom/amazon/nwstd/resources/DynamicResourcesController;

    iget-object v0, v0, Lcom/amazon/nwstd/resources/DynamicResourcesController;->mRepository:Lcom/amazon/nwstd/resources/DynamicResourcesRepository;

    monitor-enter v0

    .line 249
    :try_start_0
    iget-object v1, p0, Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;->mType:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;->mReference:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;->mTemporaryResourceFilePath:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 250
    :cond_0
    iget-object v1, p0, Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;->mType:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    invoke-virtual {v1}, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->getValueType()Lcom/amazon/nwstd/resources/DynamicResourceValueType;

    move-result-object v1

    sget-object v3, Lcom/amazon/nwstd/resources/DynamicResourceValueType;->FILE:Lcom/amazon/nwstd/resources/DynamicResourceValueType;

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;->mTemporaryResourceFilePath:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;->mReference:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 252
    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceValueType;->FILE:Lcom/amazon/nwstd/resources/DynamicResourceValueType;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    .line 253
    iget-object v3, p0, Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;->mController:Lcom/amazon/nwstd/resources/DynamicResourcesController;

    iget-object v3, v3, Lcom/amazon/nwstd/resources/DynamicResourcesController;->mRepository:Lcom/amazon/nwstd/resources/DynamicResourcesRepository;

    invoke-virtual {v3, v1}, Lcom/amazon/nwstd/resources/DynamicResourcesRepository;->getResourceReferencesByType(Ljava/util/EnumSet;)Ljava/util/List;

    move-result-object v1

    .line 254
    iget-object v3, p0, Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;->mFileSuffix:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->access$000(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    :try_start_1
    iget-object v3, p0, Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;->mController:Lcom/amazon/nwstd/resources/DynamicResourcesController;

    invoke-static {v3}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->access$100(Lcom/amazon/nwstd/resources/DynamicResourcesController;)Lcom/amazon/nwstd/resources/DynamicResourcesDiskStorage;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;->mTemporaryResourceFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Lcom/amazon/nwstd/resources/DynamicResourcesDiskStorage;->storeFileInternally(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    .line 264
    :try_start_2
    iput-object v1, p0, Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;->mReference:Ljava/lang/String;

    goto :goto_0

    .line 266
    :cond_1
    monitor-exit v0

    return-object v2

    .line 260
    :catch_0
    invoke-static {}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->access$200()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot store new file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " on disk, no resource will be created."

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v4, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 261
    monitor-exit v0

    return-object v2

    .line 269
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;->mController:Lcom/amazon/nwstd/resources/DynamicResourcesController;

    iget-object v2, v1, Lcom/amazon/nwstd/resources/DynamicResourcesController;->mRepository:Lcom/amazon/nwstd/resources/DynamicResourcesRepository;

    iget-object v3, p0, Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;->mType:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    iget-object v4, p0, Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;->mReference:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;->mLanguage:Ljava/lang/String;

    iget-object v6, p0, Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;->mParentASIN:Ljava/lang/String;

    iget-object v7, p0, Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;->mOrigin:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-virtual/range {v2 .. v7}, Lcom/amazon/nwstd/resources/DynamicResourcesRepository;->addResource(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)Lcom/amazon/nwstd/resources/DynamicResource;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 271
    :cond_3
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    .line 272
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setLanguage(Ljava/lang/String;)Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;->mLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public setOriginType(Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;->mOrigin:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    return-object p0
.end method

.method public setParentASIN(Ljava/lang/String;)Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;->mParentASIN:Ljava/lang/String;

    return-object p0
.end method

.method public setReference(Ljava/lang/String;)Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;->mReference:Ljava/lang/String;

    return-object p0
.end method

.method public setResourceFile(Ljava/lang/String;)Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;->mTemporaryResourceFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public setResourceFileSuffix(Ljava/lang/String;)Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;->mFileSuffix:Ljava/lang/String;

    return-object p0
.end method

.method public setTargetType(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;)Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;->mType:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    return-object p0
.end method
