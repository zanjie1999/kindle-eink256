.class Lcom/amazon/kcp/groupcontent/GroupContentPlugin$1;
.super Ljava/lang/Object;
.source "GroupContentPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/groupcontent/GroupContentPlugin;->onSyncFinished(Lcom/amazon/kindle/sync/SynchronizationManagerEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/kcp/groupcontent/GroupContentPlugin;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 98
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getGroupService()Lcom/amazon/kindle/content/IGroupService;

    move-result-object v0

    .line 99
    invoke-static {}, Lcom/amazon/kcp/util/GroupContentUtils;->hasUserEnabledSeriesGrouping()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/amazon/kcp/util/fastmetrics/LibraryContextMetricsRecorder;->reportSeriesGroupMetrics(Lcom/amazon/kindle/content/IGroupService;Z)V

    return-void
.end method
