.class Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$3;
.super Ljava/lang/Object;
.source "LibraryContentSortOrderUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->addGroupMetadata(Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;

.field final synthetic val$metadata:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;Ljava/util/Collection;)V
    .locals 0

    .line 549
    iput-object p1, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$3;->this$0:Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;

    iput-object p2, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$3;->val$metadata:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getPubDate(Lcom/amazon/kindle/content/GroupMetadata;)J
    .locals 6

    .line 584
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 587
    invoke-virtual {p1}, Lcom/amazon/kindle/content/GroupMetadata;->getGroupContents()Ljava/util/List;

    move-result-object p1

    .line 588
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/content/GroupItemMetadata;

    .line 589
    iget-object v3, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$3;->this$0:Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;

    invoke-static {v3}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->access$1000(Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2}, Lcom/amazon/kindle/content/GroupItemMetadata;->getItemId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;

    if-eqz v2, :cond_0

    .line 590
    invoke-virtual {v2}, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;->getPublicationDate()J

    move-result-wide v3

    cmp-long v5, v3, v0

    if-gez v5, :cond_0

    .line 591
    invoke-virtual {v2}, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;->getPublicationDate()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method private processGroupMetadata(Ljava/util/List;Lcom/amazon/kindle/content/GroupMetadata;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;",
            ">;",
            "Lcom/amazon/kindle/content/GroupMetadata;",
            ")V"
        }
    .end annotation

    .line 565
    invoke-static {p2}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->getSortableName(Lcom/amazon/kindle/content/GroupMetadata;)Ljava/lang/String;

    move-result-object v2

    .line 566
    invoke-virtual {p2}, Lcom/amazon/kindle/content/GroupMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v1

    .line 567
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$3;->this$0:Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;

    invoke-static {v0}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->access$1000(Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;

    if-eqz v0, :cond_0

    .line 569
    iget-object p2, v0, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;->sortableTitle:Ljava/lang/String;

    invoke-static {p2, v2}, Lcom/amazon/kindle/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 570
    iget-object p2, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$3;->this$0:Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;

    invoke-static {p2}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->access$800(Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 571
    iput-object v2, v0, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;->sortableTitle:Ljava/lang/String;

    const-wide/16 v1, -0x1

    .line 572
    iput-wide v1, v0, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;->titleOrder:J

    .line 573
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 576
    :cond_0
    invoke-direct {p0, p2}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$3;->getPubDate(Lcom/amazon/kindle/content/GroupMetadata;)J

    move-result-wide v4

    .line 577
    new-instance p2, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;

    const/4 v3, 0x0

    const-wide/16 v6, -0x1

    const-wide/16 v8, -0x1

    const-wide/16 v10, -0x1

    move-object v0, p2

    invoke-direct/range {v0 .. v11}, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJ)V

    .line 578
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$3;->this$0:Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;

    invoke-static {v0}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->access$600(Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p2, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;->bookId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 579
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 552
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$3;->val$metadata:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 553
    iget-object v1, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$3;->val$metadata:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/content/GroupMetadata;

    .line 554
    invoke-direct {p0, v0, v2}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$3;->processGroupMetadata(Ljava/util/List;Lcom/amazon/kindle/content/GroupMetadata;)V

    goto :goto_0

    .line 556
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 558
    iget-object v2, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$3;->this$0:Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;

    .line 560
    invoke-static {v2}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->access$800(Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$3;->this$0:Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;

    invoke-static {v4}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->access$700(Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;)Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;

    move-result-object v4

    .line 558
    invoke-virtual {v2, v0, v3, v4}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->addOrUpdateSortOrders(Ljava/util/List;Ljava/util/List;Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 561
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$3;->this$0:Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->access$900(Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;Ljava/util/Collection;Z)V

    return-void
.end method
