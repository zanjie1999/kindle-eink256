.class final Lcom/amazon/kindle/cms/api/SimpleUpdate;
.super Ljava/lang/Object;
.source "SimpleUpdate.java"

# interfaces
.implements Lcom/amazon/kindle/cms/api/UpdateStrategy;


# static fields
.field private static final TAG:Ljava/lang/String; = "CmsApi.SimpleUpdate"


# instance fields
.field private m_server:Lcom/amazon/kindle/cms/api/InternalCMSServer;

.field private final m_sourceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/cms/api/InternalCMSServer;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/amazon/kindle/cms/api/SimpleUpdate;->m_server:Lcom/amazon/kindle/cms/api/InternalCMSServer;

    .line 17
    iput-object p2, p0, Lcom/amazon/kindle/cms/api/SimpleUpdate;->m_sourceId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/SimpleUpdate;->m_server:Lcom/amazon/kindle/cms/api/InternalCMSServer;

    invoke-virtual {v0}, Lcom/amazon/kindle/cms/api/InternalCMSServer;->getService()Lcom/amazon/kindle/cms/ipc/CMSServiceCalls;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/cms/api/SimpleUpdate;->m_sourceId:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/amazon/kindle/cms/ipc/CMSServiceCalls;->deleteForUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 48
    new-instance p2, Lcom/amazon/kindle/cms/api/CommunicationException;

    sget-object p3, Lcom/amazon/kindle/cms/api/CommunicationException$Code;->RemoteException:Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    invoke-direct {p2, p3, p1}, Lcom/amazon/kindle/cms/api/CommunicationException;-><init>(Lcom/amazon/kindle/cms/api/CommunicationException$Code;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/cms/ipc/ItemInfo;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation

    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/SimpleUpdate;->m_server:Lcom/amazon/kindle/cms/api/InternalCMSServer;

    invoke-virtual {v0}, Lcom/amazon/kindle/cms/api/InternalCMSServer;->getService()Lcom/amazon/kindle/cms/ipc/CMSServiceCalls;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/cms/api/SimpleUpdate;->m_sourceId:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/amazon/kindle/cms/ipc/CMSServiceCalls;->updateForUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/cms/ipc/ItemInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 35
    new-instance p2, Lcom/amazon/kindle/cms/api/CommunicationException;

    sget-object p3, Lcom/amazon/kindle/cms/api/CommunicationException$Code;->RemoteException:Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    invoke-direct {p2, p3, p1}, Lcom/amazon/kindle/cms/api/CommunicationException;-><init>(Lcom/amazon/kindle/cms/api/CommunicationException$Code;Ljava/lang/Throwable;)V

    throw p2
.end method
