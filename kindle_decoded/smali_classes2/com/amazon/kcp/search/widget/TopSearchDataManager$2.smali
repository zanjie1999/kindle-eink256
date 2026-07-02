.class Lcom/amazon/kcp/search/widget/TopSearchDataManager$2;
.super Ljava/lang/Object;
.source "TopSearchDataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/widget/TopSearchDataManager;->updateTopSearchWordsCache()V
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

    .line 216
    iput-object p1, p0, Lcom/amazon/kcp/search/widget/TopSearchDataManager$2;->this$0:Lcom/amazon/kcp/search/widget/TopSearchDataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 219
    iget-object v0, p0, Lcom/amazon/kcp/search/widget/TopSearchDataManager$2;->this$0:Lcom/amazon/kcp/search/widget/TopSearchDataManager;

    invoke-static {v0}, Lcom/amazon/kcp/search/widget/TopSearchDataManager;->access$600(Lcom/amazon/kcp/search/widget/TopSearchDataManager;)Lcom/amazon/kcp/search/widget/TopSearchFileUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/search/widget/TopSearchFileUtil;->shiftCacheFile()V

    .line 220
    iget-object v0, p0, Lcom/amazon/kcp/search/widget/TopSearchDataManager$2;->this$0:Lcom/amazon/kcp/search/widget/TopSearchDataManager;

    invoke-static {v0}, Lcom/amazon/kcp/search/widget/TopSearchDataManager;->access$100(Lcom/amazon/kcp/search/widget/TopSearchDataManager;)Lcom/amazon/kcp/search/widget/TopSearchDataManager$TopSearchData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v1, p0, Lcom/amazon/kcp/search/widget/TopSearchDataManager$2;->this$0:Lcom/amazon/kcp/search/widget/TopSearchDataManager;

    invoke-static {v1, v0}, Lcom/amazon/kcp/search/widget/TopSearchDataManager;->access$402(Lcom/amazon/kcp/search/widget/TopSearchDataManager;Lcom/amazon/kcp/search/widget/TopSearchDataManager$TopSearchData;)Lcom/amazon/kcp/search/widget/TopSearchDataManager$TopSearchData;

    .line 223
    iget-object v0, p0, Lcom/amazon/kcp/search/widget/TopSearchDataManager$2;->this$0:Lcom/amazon/kcp/search/widget/TopSearchDataManager;

    invoke-static {v0}, Lcom/amazon/kcp/search/widget/TopSearchDataManager;->access$500(Lcom/amazon/kcp/search/widget/TopSearchDataManager;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/search/widget/TopSearchEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/amazon/kcp/search/widget/TopSearchEvent;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    :cond_0
    return-void
.end method
