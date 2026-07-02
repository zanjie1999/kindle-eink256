.class Lcom/amazon/kindle/webservices/IStatusTrackerShimWebRequest$1;
.super Ljava/lang/Object;
.source "IStatusTrackerShimWebRequest.java"

# interfaces
.implements Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/webservices/IStatusTrackerShimWebRequest;->createProgressTrackerShim(Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;)Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/webservices/IStatusTrackerShimWebRequest;

.field final synthetic val$proxyProgressTracker:Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/webservices/IStatusTrackerShimWebRequest;Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/amazon/kindle/webservices/IStatusTrackerShimWebRequest$1;->this$0:Lcom/amazon/kindle/webservices/IStatusTrackerShimWebRequest;

    iput-object p2, p0, Lcom/amazon/kindle/webservices/IStatusTrackerShimWebRequest$1;->val$proxyProgressTracker:Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reportProgress(Lcom/amazon/kindle/webservices/IWebRequest;J)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/amazon/kindle/webservices/IStatusTrackerShimWebRequest$1;->val$proxyProgressTracker:Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;

    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;->reportProgress(Lcom/amazon/kindle/webservices/IWebRequest;J)V

    .line 79
    iget-object p1, p0, Lcom/amazon/kindle/webservices/IStatusTrackerShimWebRequest$1;->this$0:Lcom/amazon/kindle/webservices/IStatusTrackerShimWebRequest;

    invoke-static {p1}, Lcom/amazon/kindle/webservices/IStatusTrackerShimWebRequest;->access$000(Lcom/amazon/kindle/webservices/IStatusTrackerShimWebRequest;)Lcom/amazon/kindle/services/download/IStatusTracker;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 80
    iget-object p1, p0, Lcom/amazon/kindle/webservices/IStatusTrackerShimWebRequest$1;->this$0:Lcom/amazon/kindle/webservices/IStatusTrackerShimWebRequest;

    invoke-static {p1}, Lcom/amazon/kindle/webservices/IStatusTrackerShimWebRequest;->access$000(Lcom/amazon/kindle/webservices/IStatusTrackerShimWebRequest;)Lcom/amazon/kindle/services/download/IStatusTracker;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/amazon/kindle/services/download/IStatusTracker;->reportCurrentProgress(J)V

    :cond_0
    return-void
.end method

.method public reportStatus(Lcom/amazon/kindle/webservices/IWebRequest;Lcom/amazon/kindle/webservices/RequestStatus;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/amazon/kindle/webservices/IStatusTrackerShimWebRequest$1;->val$proxyProgressTracker:Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;->reportStatus(Lcom/amazon/kindle/webservices/IWebRequest;Lcom/amazon/kindle/webservices/RequestStatus;)V

    .line 71
    iget-object v0, p0, Lcom/amazon/kindle/webservices/IStatusTrackerShimWebRequest$1;->this$0:Lcom/amazon/kindle/webservices/IStatusTrackerShimWebRequest;

    invoke-static {v0}, Lcom/amazon/kindle/webservices/IStatusTrackerShimWebRequest;->access$000(Lcom/amazon/kindle/webservices/IStatusTrackerShimWebRequest;)Lcom/amazon/kindle/services/download/IStatusTracker;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/kindle/webservices/RequestStatus;->ERROR:Lcom/amazon/kindle/webservices/RequestStatus;

    if-ne p2, v0, :cond_0

    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 72
    iget-object p2, p0, Lcom/amazon/kindle/webservices/IStatusTrackerShimWebRequest$1;->this$0:Lcom/amazon/kindle/webservices/IStatusTrackerShimWebRequest;

    invoke-static {p2}, Lcom/amazon/kindle/webservices/IStatusTrackerShimWebRequest;->access$000(Lcom/amazon/kindle/webservices/IStatusTrackerShimWebRequest;)Lcom/amazon/kindle/services/download/IStatusTracker;

    move-result-object p2

    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getErrorDescriber()Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/amazon/kindle/services/download/IStatusTracker;->reportState(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setMaxProgress(Lcom/amazon/kindle/webservices/IWebRequest;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    return-void
.end method
