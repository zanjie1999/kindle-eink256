.class Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$6;
.super Ljava/lang/Object;
.source "LibraryContentSortOrderUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->onContentDelete(Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;

.field final synthetic val$bookIds:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;Ljava/util/Collection;)V
    .locals 0

    .line 714
    iput-object p1, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$6;->this$0:Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;

    iput-object p2, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$6;->val$bookIds:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 716
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$6;->val$bookIds:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 717
    iget-object v2, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$6;->this$0:Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;

    invoke-static {v2}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->access$1000(Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;)Ljava/util/Map;

    move-result-object v2

    .line 718
    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;

    if-eqz v2, :cond_0

    .line 720
    iget-object v3, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$6;->this$0:Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;

    invoke-static {v3}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->access$800(Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;)Ljava/util/List;

    move-result-object v3

    .line 721
    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 722
    iget-object v3, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$6;->this$0:Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;

    invoke-static {v3}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->access$1100(Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;)Ljava/util/List;

    move-result-object v3

    .line 723
    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 724
    iget-object v3, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$6;->this$0:Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;

    invoke-static {v3}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->access$1300(Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;)Ljava/util/List;

    move-result-object v3

    .line 725
    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 727
    :cond_0
    iget-object v2, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$6;->this$0:Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;

    invoke-static {v2}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->access$600(Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method
