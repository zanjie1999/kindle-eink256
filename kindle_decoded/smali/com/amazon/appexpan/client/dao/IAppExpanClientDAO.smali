.class public interface abstract Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;
.super Ljava/lang/Object;
.source "IAppExpanClientDAO.java"


# virtual methods
.method public abstract clearSyncToken()V
.end method

.method public abstract deleteAllResourcesAndSets()V
.end method

.method public abstract getActiveResourceSetVersion(Ljava/lang/String;)Ljava/lang/Integer;
.end method

.method public abstract getAllActiveRemoteResourceSets()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/appexpan/client/model/ResourceSetModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllNonLocalResourcesForResourceSet(Lcom/amazon/appexpan/client/model/ResourceSetModel;)Ljava/util/List;
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
.end method

.method public abstract getAllResourceSets()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/appexpan/client/model/ResourceSetModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDownloadIdsOfDownloadingResources()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMaxVersionResourceSet(Ljava/lang/String;)Lcom/amazon/appexpan/client/model/ResourceSetModel;
.end method

.method public abstract getResourceForDownloadId(J)Lcom/amazon/appexpan/client/model/ResourceModel;
.end method

.method public abstract getResourceSet(Ljava/lang/String;I)Lcom/amazon/appexpan/client/model/ResourceSetModel;
.end method

.method public abstract getResourceSetsByName(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/appexpan/client/model/ResourceSetModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getResourcesForResourceSet(Lcom/amazon/appexpan/client/model/ResourceSetModel;)Ljava/util/List;
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
.end method

.method public abstract getSyncToken()Ljava/lang/String;
.end method

.method public abstract insertManifest(Lcom/amazon/appexpan/client/model/Manifest;)V
.end method

.method public abstract markResourceSetAndItsResourcesAsRemote(Lcom/amazon/appexpan/client/model/ResourceSetModel;)V
.end method

.method public abstract promoteLatestNotRequestedResourceSetToRemote(Ljava/lang/String;)I
.end method

.method public abstract promoteResourceSetToFailure(Lcom/amazon/appexpan/client/model/ResourceSetModel;)Z
.end method

.method public abstract promoteResourceSetToLocal(Lcom/amazon/appexpan/client/model/ResourceSetModel;)Z
.end method

.method public abstract promoteResourceSetToNotRequested(Lcom/amazon/appexpan/client/model/ResourceSetModel;)Z
.end method

.method public abstract updateManifest(Lcom/amazon/appexpan/client/model/Manifest;)V
.end method

.method public abstract updateResourceState(Lcom/amazon/appexpan/client/model/ResourceModel;Lcom/amazon/appexpan/client/model/ResourceModel$State;Ljava/lang/Long;)V
.end method

.method public abstract updateResourceState(Lcom/amazon/appexpan/client/model/ResourceModel;Lcom/amazon/appexpan/client/model/ResourceModel$State;Ljava/lang/Long;Lcom/amazon/appexpan/client/model/ResourceModel$DownloadRetry;)V
.end method
