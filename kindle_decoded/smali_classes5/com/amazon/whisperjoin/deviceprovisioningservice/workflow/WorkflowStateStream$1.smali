.class Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowStateStream$1;
.super Ljava/lang/Object;
.source "WorkflowStateStream.java"

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowStateStream;->buildWorkflowStream()Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowStateStream;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 62
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowStateStream;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cleaning up workflow stream"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
