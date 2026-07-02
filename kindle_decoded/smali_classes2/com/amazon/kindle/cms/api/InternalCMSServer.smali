.class abstract Lcom/amazon/kindle/cms/api/InternalCMSServer;
.super Ljava/lang/Object;
.source "InternalCMSServer.java"

# interfaces
.implements Lcom/amazon/kindle/cms/api/CMSServer;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract getService()Lcom/amazon/kindle/cms/ipc/CMSServiceCalls;
.end method

.method abstract releaseUpdate(Ljava/lang/String;)Z
.end method

.method abstract saveSyncHash(Ljava/lang/String;Ljava/lang/String;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation
.end method
