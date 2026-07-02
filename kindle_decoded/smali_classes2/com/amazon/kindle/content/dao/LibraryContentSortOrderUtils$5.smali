.class Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$5;
.super Ljava/lang/Object;
.source "LibraryContentSortOrderUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->onLocaleChanged(Lcom/amazon/kindle/event/LocaleChangedEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;)V
    .locals 0

    .line 690
    iput-object p1, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$5;->this$0:Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 692
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$5;->this$0:Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;

    invoke-static {v0}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->access$200(Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 694
    iget-object v1, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$5;->this$0:Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;

    invoke-static {v1}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->access$400(Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;)V

    .line 697
    iget-object v1, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$5;->this$0:Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->access$702(Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;)Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;

    .line 698
    iget-object v1, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$5;->this$0:Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;

    invoke-static {v1, v2}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->access$1202(Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;)Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;

    .line 699
    iget-object v1, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$5;->this$0:Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;

    invoke-static {v1, v2}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->access$1402(Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;)Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;

    .line 700
    iget-object v1, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$5;->this$0:Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;

    invoke-virtual {v1}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->setupComparators()V

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 702
    invoke-static {}, Lcom/amazon/kcp/debug/TCNSortingUtils;->isTCNSortingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$5;->this$0:Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;

    invoke-static {v0, v2}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->access$000(Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;Z)V

    .line 704
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$5;->this$0:Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;

    invoke-static {v0}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->access$100(Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;)Z

    .line 707
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$5;->this$0:Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->access$300(Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;ZZ)V

    :cond_1
    return-void
.end method
