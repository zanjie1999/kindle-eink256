.class Lcom/amazon/ku/KuContentManager$1;
.super Ljava/lang/Object;
.source "KuContentManager.java"

# interfaces
.implements Lcom/amazon/ku/service/ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ku/KuContentManager;->onContentRevoked(Lcom/amazon/kindle/krx/content/IBook;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/ku/service/ResponseListener<",
        "Lcom/amazon/ku/service/KuSubscriptionInfoDownloadRequest$KuSubscriptionInfoResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ku/KuContentManager;

.field final synthetic val$timestamp:J


# direct methods
.method constructor <init>(Lcom/amazon/ku/KuContentManager;J)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/amazon/ku/KuContentManager$1;->this$0:Lcom/amazon/ku/KuContentManager;

    iput-wide p2, p0, Lcom/amazon/ku/KuContentManager$1;->val$timestamp:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/amazon/ku/service/KuSubscriptionInfoDownloadRequest$KuSubscriptionInfoResponse;Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;)V
    .locals 5

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    .line 167
    invoke-virtual {p1}, Lcom/amazon/ku/service/KuSubscriptionInfoDownloadRequest$KuSubscriptionInfoResponse;->getSubscriptions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/amazon/ku/service/KuSubscriptionInfoDownloadRequest$KuSubscriptionInfoResponse;->getSubscriptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 173
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/ku/service/KuSubscriptionInfoDownloadRequest$KuSubscriptionInfoResponse;->getSubscriptions()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/ku/data/KuSubscription;->findLatestSubscription(Ljava/util/Collection;)Lcom/amazon/ku/data/KuSubscription;

    move-result-object p1

    .line 174
    invoke-virtual {p1}, Lcom/amazon/ku/data/KuSubscription;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "C"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 175
    invoke-virtual {p1}, Lcom/amazon/ku/data/KuSubscription;->getPlanType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FREE_PREVIEW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    .line 178
    :cond_1
    invoke-static {}, Lcom/amazon/ku/KuContentManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipped persisting KU books; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/bookwizard/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 183
    :goto_0
    iget-object v0, p0, Lcom/amazon/ku/KuContentManager$1;->this$0:Lcom/amazon/ku/KuContentManager;

    invoke-static {v0}, Lcom/amazon/ku/KuContentManager;->access$200(Lcom/amazon/ku/KuContentManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    monitor-enter v0

    if-eqz p1, :cond_2

    .line 185
    :try_start_0
    iget-object p1, p0, Lcom/amazon/ku/KuContentManager$1;->this$0:Lcom/amazon/ku/KuContentManager;

    iget-object v2, p0, Lcom/amazon/ku/KuContentManager$1;->this$0:Lcom/amazon/ku/KuContentManager;

    invoke-static {v2}, Lcom/amazon/ku/KuContentManager;->access$200(Lcom/amazon/ku/KuContentManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v2

    iget-wide v3, p0, Lcom/amazon/ku/KuContentManager$1;->val$timestamp:J

    invoke-virtual {p1, v2, v1, v3, v4}, Lcom/amazon/ku/KuContentManager;->persistCapturedBooks(Ljava/util/Collection;ZJ)V

    .line 187
    :cond_2
    iget-object p1, p0, Lcom/amazon/ku/KuContentManager$1;->this$0:Lcom/amazon/ku/KuContentManager;

    invoke-static {p1}, Lcom/amazon/ku/KuContentManager;->access$200(Lcom/amazon/ku/KuContentManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 188
    iget-object p1, p0, Lcom/amazon/ku/KuContentManager$1;->this$0:Lcom/amazon/ku/KuContentManager;

    invoke-static {p1}, Lcom/amazon/ku/KuContentManager;->access$100(Lcom/amazon/ku/KuContentManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 189
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 168
    :cond_3
    :goto_1
    invoke-static {}, Lcom/amazon/ku/KuContentManager;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Subscription info unavailable; skip persisting KU books"

    invoke-static {p1, v0}, Lcom/amazon/bookwizard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object p1, p0, Lcom/amazon/ku/KuContentManager$1;->this$0:Lcom/amazon/ku/KuContentManager;

    invoke-static {p1}, Lcom/amazon/ku/KuContentManager;->access$100(Lcom/amazon/ku/KuContentManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;)V
    .locals 0

    .line 163
    check-cast p1, Lcom/amazon/ku/service/KuSubscriptionInfoDownloadRequest$KuSubscriptionInfoResponse;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/ku/KuContentManager$1;->onResponse(Lcom/amazon/ku/service/KuSubscriptionInfoDownloadRequest$KuSubscriptionInfoResponse;Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;)V

    return-void
.end method
