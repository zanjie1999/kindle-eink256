.class Lcom/amazon/kindle/cms/ContentManagementSystem$3;
.super Lcom/amazon/kindle/cms/ContentManagementSystem$CmsCommunicationRetryRunnable;
.source "ContentManagementSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/cms/ContentManagementSystem;->onFTUEMetadataParseStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/kindle/cms/ContentManagementSystem;Ljava/lang/String;)V
    .locals 0

    .line 319
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/cms/ContentManagementSystem$CmsCommunicationRetryRunnable;-><init>(Lcom/amazon/kindle/cms/ContentManagementSystem;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method execute()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation

    .line 322
    invoke-static {}, Lcom/amazon/kindle/cms/CMSUtils;->getSupportedUris()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 323
    sget-object v2, Lcom/amazon/kindle/cms/ContentManagementSystem;->cmsServer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 328
    sget-object v2, Lcom/amazon/kindle/cms/ContentManagementSystem;->cmsServer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/cms/api/CMSServer;

    sget-object v3, Lcom/amazon/kindle/cms/IContentManagementSystem;->SOURCE_URI:Landroid/net/Uri;

    invoke-interface {v2, v3, v1}, Lcom/amazon/kindle/cms/api/CMSServer;->notifyFTUEStart(Landroid/net/Uri;Landroid/net/Uri;)V

    goto :goto_0

    :cond_0
    const-string v0, "ContentManagementSystem"

    const-string v1, "CMS Communication Retry failed in setSyncMetadataWebService because update failed as we don\'t have a non-null cmsServer"

    .line 324
    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    new-instance v0, Lcom/amazon/kindle/cms/api/CommunicationException;

    sget-object v1, Lcom/amazon/kindle/cms/api/CommunicationException$Code;->NoConnection:Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    invoke-direct {v0, v1}, Lcom/amazon/kindle/cms/api/CommunicationException;-><init>(Lcom/amazon/kindle/cms/api/CommunicationException$Code;)V

    throw v0

    .line 331
    :cond_1
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->FTUE_START_TO_END:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
