.class final Lcom/amazon/kindle/cms/api/CMSServerImpl$UpdateEntry;
.super Ljava/lang/Object;
.source "CMSServerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/cms/api/CMSServerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UpdateEntry"
.end annotation


# instance fields
.field refCount:I

.field final update:Lcom/amazon/kindle/cms/api/UpdateImpl;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/cms/api/CMSServerImpl;Ljava/lang/String;Lcom/amazon/kindle/cms/api/UpdateImpl$StrategyID;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation

    .line 1124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1125
    new-instance v0, Lcom/amazon/kindle/cms/api/UpdateImpl;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazon/kindle/cms/api/UpdateImpl;-><init>(Lcom/amazon/kindle/cms/api/InternalCMSServer;Ljava/lang/String;Lcom/amazon/kindle/cms/api/UpdateImpl$StrategyID;)V

    iput-object v0, p0, Lcom/amazon/kindle/cms/api/CMSServerImpl$UpdateEntry;->update:Lcom/amazon/kindle/cms/api/UpdateImpl;

    const/4 p1, 0x0

    .line 1126
    iput p1, p0, Lcom/amazon/kindle/cms/api/CMSServerImpl$UpdateEntry;->refCount:I

    return-void
.end method
