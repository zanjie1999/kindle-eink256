.class Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$4;
.super Ljava/lang/Object;
.source "LibraryContentSortOrderUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->addOrUpdateContentMetadata(Ljava/util/Collection;)V
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

    .line 601
    iput-object p1, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$4;->this$0:Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;

    iput-object p2, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$4;->val$metadata:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private processContentMetadata(Ljava/util/List;Ljava/util/List;Lcom/amazon/kindle/content/ContentMetadata;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;",
            ">;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;",
            ">;",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 629
    invoke-virtual/range {p3 .. p3}, Lcom/amazon/kindle/content/ContentMetadata;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 630
    invoke-virtual/range {p3 .. p3}, Lcom/amazon/kindle/content/ContentMetadata;->getTitlePronunciation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Lcom/amazon/kindle/content/ContentMetadata;->getLanguage()Ljava/lang/String;

    move-result-object v5

    .line 629
    invoke-static {v3, v4, v5}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->getSortableName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 631
    invoke-virtual/range {p3 .. p3}, Lcom/amazon/kindle/content/ContentMetadata;->getAuthor()Ljava/lang/String;

    move-result-object v3

    .line 632
    invoke-virtual/range {p3 .. p3}, Lcom/amazon/kindle/content/ContentMetadata;->getAuthorPronunciation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Lcom/amazon/kindle/content/ContentMetadata;->getLanguage()Ljava/lang/String;

    move-result-object v5

    .line 631
    invoke-static {v3, v4, v5}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->getSortableName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 633
    iget-object v3, v0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$4;->this$0:Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;

    invoke-static {v3}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->access$1000(Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;

    if-eqz v3, :cond_1

    .line 635
    iget-object v4, v3, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;->sortableTitle:Ljava/lang/String;

    invoke-static {v4, v8}, Lcom/amazon/kindle/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    const-wide/16 v5, -0x1

    if-nez v4, :cond_0

    .line 636
    iget-object v4, v0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$4;->this$0:Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;

    invoke-static {v4}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->access$800(Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 637
    iput-object v8, v3, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;->sortableTitle:Ljava/lang/String;

    .line 638
    iput-wide v5, v3, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;->titleOrder:J

    .line 639
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 641
    :cond_0
    iget-object v1, v3, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;->sortableAuthor:Ljava/lang/String;

    invoke-static {v1, v9}, Lcom/amazon/kindle/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 642
    iget-object v1, v0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$4;->this$0:Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;

    invoke-static {v1}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->access$1100(Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 643
    iput-object v9, v3, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;->sortableAuthor:Ljava/lang/String;

    .line 644
    iput-wide v5, v3, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;->authorOrder:J

    .line 645
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 648
    :cond_1
    new-instance v3, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;

    invoke-virtual/range {p3 .. p3}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v7

    .line 649
    invoke-virtual/range {p3 .. p3}, Lcom/amazon/kindle/content/ContentMetadata;->getPublicationDateInMillis()J

    move-result-wide v10

    const-wide/16 v12, -0x1

    const-wide/16 v14, -0x1

    const-wide/16 v16, -0x1

    move-object v6, v3

    invoke-direct/range {v6 .. v17}, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJ)V

    .line 650
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 651
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 603
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$4;->val$metadata:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 604
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$4;->val$metadata:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 606
    iget-object v2, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$4;->val$metadata:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/content/ContentMetadata;

    .line 607
    invoke-direct {p0, v0, v1, v3}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$4;->processContentMetadata(Ljava/util/List;Ljava/util/List;Lcom/amazon/kindle/content/ContentMetadata;)V

    goto :goto_0

    .line 609
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 611
    iget-object v3, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$4;->this$0:Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;

    .line 613
    invoke-static {v3}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->access$800(Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$4;->this$0:Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;

    invoke-static {v5}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->access$700(Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;)Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;

    move-result-object v5

    .line 611
    invoke-virtual {v3, v0, v4, v5}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->addOrUpdateSortOrders(Ljava/util/List;Ljava/util/List;Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 615
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$4;->this$0:Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;

    .line 617
    invoke-static {v0}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->access$1100(Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$4;->this$0:Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;

    invoke-static {v4}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->access$1200(Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;)Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;

    move-result-object v4

    .line 615
    invoke-virtual {v0, v1, v3, v4}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->addOrUpdateSortOrders(Ljava/util/List;Ljava/util/List;Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 619
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$4;->this$0:Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;

    .line 621
    invoke-static {v0}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->access$1300(Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$4;->this$0:Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;

    invoke-static {v4}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->access$1400(Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;)Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;

    move-result-object v4

    .line 619
    invoke-virtual {v0, v1, v3, v4}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->addOrUpdateSortOrders(Ljava/util/List;Ljava/util/List;Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 623
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$4;->this$0:Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->access$900(Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;Ljava/util/Collection;Z)V

    return-void
.end method
