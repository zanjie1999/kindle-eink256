.class Lcom/amazon/kindle/webservices/WebRequestManager$WebRequestTask;
.super Ljava/lang/Object;
.source "WebRequestManager.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/webservices/WebRequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WebRequestTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/amazon/kindle/webservices/IWebRequest;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Comparable<",
        "Lcom/amazon/kindle/webservices/WebRequestManager$WebRequestTask;",
        ">;"
    }
.end annotation


# instance fields
.field final request:Lcom/amazon/kindle/webservices/IWebRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final sequenceId:J

.field final synthetic this$0:Lcom/amazon/kindle/webservices/WebRequestManager;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/webservices/WebRequestManager;Lcom/amazon/kindle/webservices/IWebRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lcom/amazon/kindle/webservices/WebRequestManager$WebRequestTask;->this$0:Lcom/amazon/kindle/webservices/WebRequestManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-static {}, Lcom/amazon/kindle/webservices/WebRequestManager;->access$000()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kindle/webservices/WebRequestManager$WebRequestTask;->sequenceId:J

    .line 83
    iput-object p2, p0, Lcom/amazon/kindle/webservices/WebRequestManager$WebRequestTask;->request:Lcom/amazon/kindle/webservices/IWebRequest;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/amazon/kindle/webservices/WebRequestManager$WebRequestTask;)I
    .locals 4

    .line 125
    iget-object v0, p0, Lcom/amazon/kindle/webservices/WebRequestManager$WebRequestTask;->request:Lcom/amazon/kindle/webservices/IWebRequest;

    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IWebRequest;->getPriority()Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;->getPriority()I

    move-result v0

    iget-object v1, p1, Lcom/amazon/kindle/webservices/WebRequestManager$WebRequestTask;->request:Lcom/amazon/kindle/webservices/IWebRequest;

    .line 126
    invoke-interface {v1}, Lcom/amazon/kindle/webservices/IWebRequest;->getPriority()Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;->getPriority()I

    move-result v1

    .line 125
    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->compare(II)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 131
    :cond_0
    iget-wide v0, p0, Lcom/amazon/kindle/webservices/WebRequestManager$WebRequestTask;->sequenceId:J

    iget-wide v2, p1, Lcom/amazon/kindle/webservices/WebRequestManager$WebRequestTask;->sequenceId:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Longs;->compare(JJ)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 78
    check-cast p1, Lcom/amazon/kindle/webservices/WebRequestManager$WebRequestTask;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/webservices/WebRequestManager$WebRequestTask;->compareTo(Lcom/amazon/kindle/webservices/WebRequestManager$WebRequestTask;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 141
    instance-of v0, p1, Lcom/amazon/kindle/webservices/WebRequestManager$WebRequestTask;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kindle/webservices/WebRequestManager$WebRequestTask;

    iget-object p1, p1, Lcom/amazon/kindle/webservices/WebRequestManager$WebRequestTask;->request:Lcom/amazon/kindle/webservices/IWebRequest;

    iget-object v0, p0, Lcom/amazon/kindle/webservices/WebRequestManager$WebRequestTask;->request:Lcom/amazon/kindle/webservices/IWebRequest;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method executeRequest(Lcom/amazon/kindle/webservices/IWebRequest;)V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/amazon/kindle/webservices/WebRequestManager$WebRequestTask;->this$0:Lcom/amazon/kindle/webservices/WebRequestManager;

    invoke-static {v0}, Lcom/amazon/kindle/webservices/WebRequestManager;->access$300(Lcom/amazon/kindle/webservices/WebRequestManager;)Lcom/amazon/kindle/webservices/IWebRequestExecutor;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/webservices/IWebRequestExecutor;->execute(Lcom/amazon/kindle/webservices/IWebRequest;)V

    return-void
.end method

.method public hashCode()I
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/amazon/kindle/webservices/WebRequestManager$WebRequestTask;->request:Lcom/amazon/kindle/webservices/IWebRequest;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public run()V
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/amazon/kindle/webservices/WebRequestManager$WebRequestTask;->request:Lcom/amazon/kindle/webservices/IWebRequest;

    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IWebRequest;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/amazon/kindle/webservices/WebRequestManager$WebRequestTask;->this$0:Lcom/amazon/kindle/webservices/WebRequestManager;

    iget-object v1, p0, Lcom/amazon/kindle/webservices/WebRequestManager$WebRequestTask;->request:Lcom/amazon/kindle/webservices/IWebRequest;

    sget-object v2, Lcom/amazon/kindle/webservices/RequestStatus;->DOWNLOADING:Lcom/amazon/kindle/webservices/RequestStatus;

    invoke-static {v0, v1, v2}, Lcom/amazon/kindle/webservices/WebRequestManager;->access$100(Lcom/amazon/kindle/webservices/WebRequestManager;Lcom/amazon/kindle/webservices/IWebRequest;Lcom/amazon/kindle/webservices/RequestStatus;)V

    .line 92
    iget-object v0, p0, Lcom/amazon/kindle/webservices/WebRequestManager$WebRequestTask;->request:Lcom/amazon/kindle/webservices/IWebRequest;

    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IWebRequest;->onBeforeExecute()V

    .line 94
    iget-object v0, p0, Lcom/amazon/kindle/webservices/WebRequestManager$WebRequestTask;->request:Lcom/amazon/kindle/webservices/IWebRequest;

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/webservices/WebRequestManager$WebRequestTask;->executeRequest(Lcom/amazon/kindle/webservices/IWebRequest;)V

    .line 97
    iget-object v0, p0, Lcom/amazon/kindle/webservices/WebRequestManager$WebRequestTask;->request:Lcom/amazon/kindle/webservices/IWebRequest;

    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IWebRequest;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 102
    iget-object v0, p0, Lcom/amazon/kindle/webservices/WebRequestManager$WebRequestTask;->request:Lcom/amazon/kindle/webservices/IWebRequest;

    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IWebRequest;->onRequestComplete()Z

    move-result v0

    .line 103
    iget-object v1, p0, Lcom/amazon/kindle/webservices/WebRequestManager$WebRequestTask;->request:Lcom/amazon/kindle/webservices/IWebRequest;

    invoke-interface {v1}, Lcom/amazon/kindle/webservices/IWebRequest;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 104
    sget-object v0, Lcom/amazon/kindle/webservices/RequestStatus;->COMPLETE:Lcom/amazon/kindle/webservices/RequestStatus;

    goto :goto_0

    .line 106
    :cond_0
    sget-object v0, Lcom/amazon/kindle/webservices/RequestStatus;->ERROR:Lcom/amazon/kindle/webservices/RequestStatus;

    .line 108
    :goto_0
    iget-object v1, p0, Lcom/amazon/kindle/webservices/WebRequestManager$WebRequestTask;->this$0:Lcom/amazon/kindle/webservices/WebRequestManager;

    iget-object v2, p0, Lcom/amazon/kindle/webservices/WebRequestManager$WebRequestTask;->request:Lcom/amazon/kindle/webservices/IWebRequest;

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/webservices/WebRequestManager;->access$100(Lcom/amazon/kindle/webservices/WebRequestManager;Lcom/amazon/kindle/webservices/IWebRequest;Lcom/amazon/kindle/webservices/RequestStatus;)V

    goto :goto_1

    .line 111
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/webservices/WebRequestManager;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Request cannot run as it is cancelled"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method
