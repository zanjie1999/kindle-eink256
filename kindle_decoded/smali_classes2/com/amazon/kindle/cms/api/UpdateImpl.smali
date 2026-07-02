.class final Lcom/amazon/kindle/cms/api/UpdateImpl;
.super Ljava/lang/Object;
.source "UpdateImpl.java"

# interfaces
.implements Lcom/amazon/kindle/cms/api/Update;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/cms/api/UpdateImpl$StrategyID;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CmsApi.UpdateImpl"


# instance fields
.field private m_server:Lcom/amazon/kindle/cms/api/InternalCMSServer;

.field private final m_sourceId:Ljava/lang/String;

.field private m_strategy:Lcom/amazon/kindle/cms/api/UpdateStrategy;

.field private final m_syncState:Lcom/amazon/kindle/cms/api/SyncState;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/cms/api/InternalCMSServer;Ljava/lang/String;Lcom/amazon/kindle/cms/api/UpdateImpl$StrategyID;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/amazon/kindle/cms/api/UpdateImpl;->m_server:Lcom/amazon/kindle/cms/api/InternalCMSServer;

    .line 28
    iput-object p2, p0, Lcom/amazon/kindle/cms/api/UpdateImpl;->m_sourceId:Ljava/lang/String;

    .line 29
    invoke-interface {p1}, Lcom/amazon/kindle/cms/api/CMSServer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/cms/api/CMSApi;->instance(Landroid/content/Context;)Lcom/amazon/kindle/cms/api/CMSApi;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/cms/api/UpdateImpl;->m_sourceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/cms/api/CMSApi;->getSyncState(Ljava/lang/String;)Lcom/amazon/kindle/cms/api/SyncState;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/cms/api/UpdateImpl;->m_syncState:Lcom/amazon/kindle/cms/api/SyncState;

    .line 30
    invoke-virtual {v0}, Lcom/amazon/kindle/cms/api/SyncState;->lockForChange()V

    .line 31
    sget-object v0, Lcom/amazon/kindle/cms/api/UpdateImpl$StrategyID;->Simple:Lcom/amazon/kindle/cms/api/UpdateImpl$StrategyID;

    if-ne p3, v0, :cond_0

    .line 32
    new-instance p3, Lcom/amazon/kindle/cms/api/SimpleUpdate;

    invoke-direct {p3, p1, p2}, Lcom/amazon/kindle/cms/api/SimpleUpdate;-><init>(Lcom/amazon/kindle/cms/api/InternalCMSServer;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/amazon/kindle/cms/api/UpdateImpl;->m_strategy:Lcom/amazon/kindle/cms/api/UpdateStrategy;

    goto :goto_0

    .line 34
    :cond_0
    new-instance p3, Lcom/amazon/kindle/cms/api/BulkUpdate;

    invoke-direct {p3, p1, p2}, Lcom/amazon/kindle/cms/api/BulkUpdate;-><init>(Lcom/amazon/kindle/cms/api/InternalCMSServer;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/amazon/kindle/cms/api/UpdateImpl;->m_strategy:Lcom/amazon/kindle/cms/api/UpdateStrategy;

    :goto_0
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/UpdateImpl;->m_server:Lcom/amazon/kindle/cms/api/InternalCMSServer;

    iget-object v1, p0, Lcom/amazon/kindle/cms/api/UpdateImpl;->m_sourceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/cms/api/InternalCMSServer;->releaseUpdate(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    monitor-enter p0

    .line 54
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 55
    iget-object v2, p0, Lcom/amazon/kindle/cms/api/UpdateImpl;->m_syncState:Lcom/amazon/kindle/cms/api/SyncState;

    invoke-virtual {v2}, Lcom/amazon/kindle/cms/api/SyncState;->save()Ljava/lang/String;

    move-result-object v2

    .line 56
    iget-object v3, p0, Lcom/amazon/kindle/cms/api/UpdateImpl;->m_syncState:Lcom/amazon/kindle/cms/api/SyncState;

    invoke-virtual {v3}, Lcom/amazon/kindle/cms/api/SyncState;->unlockForChange()V

    .line 57
    iget-object v3, p0, Lcom/amazon/kindle/cms/api/UpdateImpl;->m_strategy:Lcom/amazon/kindle/cms/api/UpdateStrategy;

    invoke-interface {v3}, Lcom/amazon/kindle/cms/api/UpdateStrategy;->close()V

    .line 60
    iget-object v3, p0, Lcom/amazon/kindle/cms/api/UpdateImpl;->m_server:Lcom/amazon/kindle/cms/api/InternalCMSServer;

    iget-object v4, p0, Lcom/amazon/kindle/cms/api/UpdateImpl;->m_sourceId:Ljava/lang/String;

    invoke-virtual {v3, v4, v2, v0, v1}, Lcom/amazon/kindle/cms/api/InternalCMSServer;->saveSyncHash(Ljava/lang/String;Ljava/lang/String;J)V

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/amazon/kindle/cms/api/UpdateImpl;->m_server:Lcom/amazon/kindle/cms/api/InternalCMSServer;

    .line 62
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public final declared-synchronized deleteItem(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation

    monitor-enter p0

    .line 86
    :try_start_0
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/amazon/kindle/cms/api/UpdateImpl;->m_strategy:Lcom/amazon/kindle/cms/api/UpdateStrategy;

    invoke-interface {v1, p1, v0, p3}, Lcom/amazon/kindle/cms/api/UpdateStrategy;->delete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/UpdateImpl;->m_syncState:Lcom/amazon/kindle/cms/api/SyncState;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/amazon/kindle/cms/api/SyncState;->addEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/cms/ipc/ItemPayload;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/UpdateImpl;->m_server:Lcom/amazon/kindle/cms/api/InternalCMSServer;

    if-eqz v0, :cond_0

    const-string v0, "CmsApi.UpdateImpl"

    const-string v1, "Update not finished"

    .line 42
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method declared-synchronized setStrategy(Lcom/amazon/kindle/cms/api/UpdateImpl$StrategyID;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation

    monitor-enter p0

    .line 138
    :try_start_0
    sget-object v0, Lcom/amazon/kindle/cms/api/UpdateImpl$StrategyID;->Bulk:Lcom/amazon/kindle/cms/api/UpdateImpl$StrategyID;

    if-ne p1, v0, :cond_0

    .line 140
    iget-object p1, p0, Lcom/amazon/kindle/cms/api/UpdateImpl;->m_strategy:Lcom/amazon/kindle/cms/api/UpdateStrategy;

    instance-of p1, p1, Lcom/amazon/kindle/cms/api/SimpleUpdate;

    if-eqz p1, :cond_0

    .line 142
    iget-object p1, p0, Lcom/amazon/kindle/cms/api/UpdateImpl;->m_strategy:Lcom/amazon/kindle/cms/api/UpdateStrategy;

    invoke-interface {p1}, Lcom/amazon/kindle/cms/api/UpdateStrategy;->close()V

    .line 143
    new-instance p1, Lcom/amazon/kindle/cms/api/BulkUpdate;

    iget-object v0, p0, Lcom/amazon/kindle/cms/api/UpdateImpl;->m_server:Lcom/amazon/kindle/cms/api/InternalCMSServer;

    iget-object v1, p0, Lcom/amazon/kindle/cms/api/UpdateImpl;->m_sourceId:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Lcom/amazon/kindle/cms/api/BulkUpdate;-><init>(Lcom/amazon/kindle/cms/api/InternalCMSServer;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kindle/cms/api/UpdateImpl;->m_strategy:Lcom/amazon/kindle/cms/api/UpdateStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized updateItem(Lcom/amazon/kindle/cms/api/Item;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation

    monitor-enter p0

    .line 69
    :try_start_0
    check-cast p1, Lcom/amazon/kindle/cms/api/AbstractItem;

    .line 70
    invoke-virtual {p1}, Lcom/amazon/kindle/cms/api/AbstractItem;->getProducerId()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-virtual {p1}, Lcom/amazon/kindle/cms/api/AbstractItem;->getItemInfo()Lcom/amazon/kindle/cms/ipc/ItemInfo;

    move-result-object v1

    .line 72
    iget-object v2, p0, Lcom/amazon/kindle/cms/api/UpdateImpl;->m_strategy:Lcom/amazon/kindle/cms/api/UpdateStrategy;

    invoke-virtual {p1}, Lcom/amazon/kindle/cms/api/AbstractItem;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/amazon/kindle/cms/api/AbstractItem;->getLibraryId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v0, v1}, Lcom/amazon/kindle/cms/api/UpdateStrategy;->update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/cms/ipc/ItemInfo;)V

    .line 73
    iget-object v2, p0, Lcom/amazon/kindle/cms/api/UpdateImpl;->m_syncState:Lcom/amazon/kindle/cms/api/SyncState;

    invoke-virtual {p1}, Lcom/amazon/kindle/cms/api/AbstractItem;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/amazon/kindle/cms/api/AbstractItem;->getLibraryId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1, v0, v1}, Lcom/amazon/kindle/cms/api/SyncState;->addEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/cms/ipc/ItemPayload;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
