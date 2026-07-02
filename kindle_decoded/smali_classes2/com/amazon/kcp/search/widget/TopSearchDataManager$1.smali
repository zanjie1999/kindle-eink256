.class Lcom/amazon/kcp/search/widget/TopSearchDataManager$1;
.super Ljava/lang/Object;
.source "TopSearchDataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/widget/TopSearchDataManager;->updateTopSearchWords()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/widget/TopSearchDataManager;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/widget/TopSearchDataManager;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/amazon/kcp/search/widget/TopSearchDataManager$1;->this$0:Lcom/amazon/kcp/search/widget/TopSearchDataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 122
    invoke-static {}, Lcom/amazon/kcp/search/widget/TopSearchS3Helper;->isNewVersionResourceSetRetrieved()Z

    move-result v0

    if-nez v0, :cond_3

    .line 123
    invoke-static {}, Lcom/amazon/kcp/search/widget/TopSearchUtil;->isDownloadRetryNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/search/widget/TopSearchDataManager$1;->this$0:Lcom/amazon/kcp/search/widget/TopSearchDataManager;

    invoke-static {v0}, Lcom/amazon/kcp/search/widget/TopSearchDataManager;->access$100(Lcom/amazon/kcp/search/widget/TopSearchDataManager;)Lcom/amazon/kcp/search/widget/TopSearchDataManager$TopSearchData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 129
    iget-object v1, p0, Lcom/amazon/kcp/search/widget/TopSearchDataManager$1;->this$0:Lcom/amazon/kcp/search/widget/TopSearchDataManager;

    invoke-static {v1, v0}, Lcom/amazon/kcp/search/widget/TopSearchDataManager;->access$200(Lcom/amazon/kcp/search/widget/TopSearchDataManager;Lcom/amazon/kcp/search/widget/TopSearchDataManager$TopSearchData;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    invoke-static {}, Lcom/amazon/kcp/search/widget/TopSearchDataManager;->access$300()Ljava/lang/String;

    .line 131
    iget-object v1, p0, Lcom/amazon/kcp/search/widget/TopSearchDataManager$1;->this$0:Lcom/amazon/kcp/search/widget/TopSearchDataManager;

    invoke-static {v1, v0}, Lcom/amazon/kcp/search/widget/TopSearchDataManager;->access$402(Lcom/amazon/kcp/search/widget/TopSearchDataManager;Lcom/amazon/kcp/search/widget/TopSearchDataManager$TopSearchData;)Lcom/amazon/kcp/search/widget/TopSearchDataManager$TopSearchData;

    .line 132
    iget-object v1, p0, Lcom/amazon/kcp/search/widget/TopSearchDataManager$1;->this$0:Lcom/amazon/kcp/search/widget/TopSearchDataManager;

    invoke-static {v1}, Lcom/amazon/kcp/search/widget/TopSearchDataManager;->access$500(Lcom/amazon/kcp/search/widget/TopSearchDataManager;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v1

    new-instance v2, Lcom/amazon/kcp/search/widget/TopSearchEvent;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/amazon/kcp/search/widget/TopSearchEvent;-><init>(I)V

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    :cond_1
    if-eqz v0, :cond_2

    .line 134
    invoke-virtual {v0}, Lcom/amazon/kcp/search/widget/TopSearchDataManager$TopSearchData;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 135
    :cond_2
    invoke-static {}, Lcom/amazon/kcp/search/widget/TopSearchDataManager;->access$300()Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcom/amazon/kcp/search/widget/TopSearchDataManager$1;->this$0:Lcom/amazon/kcp/search/widget/TopSearchDataManager;

    invoke-static {v0}, Lcom/amazon/kcp/search/widget/TopSearchDataManager;->access$000(Lcom/amazon/kcp/search/widget/TopSearchDataManager;)V

    goto :goto_1

    .line 125
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/search/widget/TopSearchDataManager$1;->this$0:Lcom/amazon/kcp/search/widget/TopSearchDataManager;

    invoke-static {v0}, Lcom/amazon/kcp/search/widget/TopSearchDataManager;->access$000(Lcom/amazon/kcp/search/widget/TopSearchDataManager;)V

    :cond_4
    :goto_1
    return-void
.end method
