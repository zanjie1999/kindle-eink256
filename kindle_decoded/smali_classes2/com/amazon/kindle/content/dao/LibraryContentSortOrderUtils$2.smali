.class Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$2;
.super Ljava/lang/Object;
.source "LibraryContentSortOrderUtils.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->evaluateSortOrders(ZLjava/util/List;Ljava/util/Map;Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate<",
        "Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;

.field final synthetic val$comparator:Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$2;->this$0:Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;

    iput-object p2, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$2;->val$comparator:Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;)Z
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$2;->this$0:Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;

    invoke-static {v0}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->access$600(Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;)Ljava/util/Set;

    move-result-object v0

    iget-object p1, p1, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;->bookId:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$2;->val$comparator:Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;

    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$2;->this$0:Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;

    .line 331
    invoke-static {v0}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->access$700(Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;)Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;

    move-result-object v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0

    .line 327
    check-cast p1, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$2;->apply(Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;)Z

    move-result p1

    return p1
.end method
