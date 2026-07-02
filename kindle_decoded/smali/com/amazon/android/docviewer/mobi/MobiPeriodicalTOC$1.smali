.class Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$1;
.super Ljava/lang/Object;
.source "MobiPeriodicalTOC.java"

# interfaces
.implements Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$NodeFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->traverseNCXMap(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;)V
    .locals 0

    .line 466
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$1;->this$0:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;)Z
    .locals 6

    .line 470
    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;->getItem()Lcom/amazon/kindle/krf/KRF/Reader/INavigationControlNode;

    move-result-object v0

    .line 471
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Reader/INavigationControlNode;->getNodeClass()Ljava/lang/String;

    move-result-object v1

    .line 472
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Reader/INavigationControlNode;->getDepthLevel()J

    move-result-wide v2

    long-to-int v3, v2

    if-nez v3, :cond_0

    .line 475
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$1;->this$0:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;

    const-string/jumbo v4, "mastheadImage"

    invoke-virtual {v0, v4}, Lcom/amazon/kindle/krf/KRF/Reader/INavigationControlNode;->getStringFromTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->access$002(Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;Ljava/lang/String;)Ljava/lang/String;

    .line 478
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$1;->this$0:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;

    invoke-static {v2}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->access$000(Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 479
    invoke-virtual {v0, v4}, Lcom/amazon/kindle/krf/KRF/Reader/INavigationControlNode;->getIntFromTag(Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v2, v4

    if-ltz v2, :cond_0

    .line 481
    iget-object v4, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$1;->this$0:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->access$002(Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;Ljava/lang/String;)Ljava/lang/String;

    .line 486
    :cond_0
    sget-object v2, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;->Section:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;->hasChild()Z

    move-result p1

    if-eqz p1, :cond_1

    if-ne v3, v4, :cond_3

    .line 490
    new-instance p1, Lcom/amazon/android/docviewer/mobi/MobiSectionTOCItem;

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$1;->this$0:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;

    invoke-static {v1}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->access$100(Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;)Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Lcom/amazon/android/docviewer/mobi/MobiSectionTOCItem;-><init>(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;Lcom/amazon/kindle/krf/KRF/Reader/INavigationControlNode;)V

    .line 491
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$1;->this$0:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->access$200(Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$1;->this$0:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->access$300(Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/MobiSectionTOCItem;->getPosition()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$1;->this$0:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;

    invoke-static {v1}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->access$200(Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 495
    :cond_1
    sget-object p1, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;->Article:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 497
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$1;->this$0:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;

    invoke-static {p1}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->access$200(Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 499
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$1;->this$0:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;

    invoke-static {p1}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->access$200(Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$1;->this$0:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;

    invoke-static {v1}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->access$200(Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/android/docviewer/mobi/MobiSectionTOCItem;

    .line 500
    new-instance v1, Lcom/amazon/android/docviewer/mobi/MobiArticleTOCItem;

    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$1;->this$0:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;

    invoke-static {v2}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->access$100(Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;)Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v2

    invoke-direct {v1, v2, p1, v0}, Lcom/amazon/android/docviewer/mobi/MobiArticleTOCItem;-><init>(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;Lcom/amazon/nwstd/toc/ISectionTOCItem;Lcom/amazon/kindle/krf/KRF/Reader/INavigationControlNode;)V

    .line 501
    invoke-virtual {p1, v1}, Lcom/amazon/android/docviewer/mobi/MobiSectionTOCItem;->addArticle(Lcom/amazon/android/docviewer/mobi/MobiArticleTOCItem;)V

    .line 502
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$1;->this$0:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;

    invoke-static {p1}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->access$400(Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$1;->this$0:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;

    invoke-static {p1}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->access$500(Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;)Ljava/util/SortedMap;

    move-result-object p1

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/MobiArticleTOCItem;->getPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$1;->this$0:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;

    invoke-static {v1}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->access$400(Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 506
    :cond_2
    sget-object p1, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;->ArticleFragment:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 508
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$1;->this$0:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;

    invoke-static {p1}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->access$400(Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 510
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$1;->this$0:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;

    invoke-static {p1}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->access$400(Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$1;->this$0:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;

    invoke-static {v1}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->access$400(Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/android/docviewer/mobi/MobiArticleTOCItem;

    .line 511
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Reader/INavigationControlNode;->getPositionId()Lcom/amazon/kindle/krf/KRF/Reader/Position;

    move-result-object v1

    const-string/jumbo v2, "pageNumber"

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/krf/KRF/Reader/INavigationControlNode;->getStringFromTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/amazon/android/docviewer/mobi/MobiArticleTOCItem;->addFragmentToReplicaMap(Lcom/amazon/kindle/krf/KRF/Reader/Position;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return v4
.end method
