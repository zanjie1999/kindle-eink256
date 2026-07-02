.class Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$2;
.super Ljava/lang/Object;
.source "MobiPeriodicalTOC.java"

# interfaces
.implements Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$NodeFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->traverseArticleBlocksList(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;)V
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

    .line 522
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$2;->this$0:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;)Z
    .locals 14

    const-string v0, "NumberFormatException in text block creation."

    .line 526
    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;->getItem()Lcom/amazon/kindle/krf/KRF/Reader/INavigationControlNode;

    move-result-object p1

    .line 527
    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KRF/Reader/INavigationControlNode;->getNodeClass()Ljava/lang/String;

    move-result-object v1

    .line 528
    sget-object v2, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;->ReplicaArticleBlock:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    const/16 v1, 0x8

    :try_start_0
    const-string/jumbo v3, "pageNumber"

    .line 532
    invoke-virtual {p1, v3}, Lcom/amazon/kindle/krf/KRF/Reader/INavigationControlNode;->getStringFromTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 533
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_2

    .line 534
    iget-object v5, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$2;->this$0:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;

    invoke-static {v5}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->access$600(Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    const-string v5, "Blocks"

    .line 536
    invoke-virtual {p1, v5}, Lcom/amazon/kindle/krf/KRF/Reader/INavigationControlNode;->getStringFromTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 537
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 538
    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KRF/Reader/INavigationControlNode;->getPositionId()Lcom/amazon/kindle/krf/KRF/Reader/Position;

    move-result-object v6

    invoke-static {v6}, Lcom/amazon/krfhacks/KRFHacks;->positionToIntPosition(Lcom/amazon/kindle/krf/KRF/Reader/Position;)I

    move-result v6

    .line 539
    new-instance v7, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$NewsstandArticleBlocks;

    iget-object v8, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$2;->this$0:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;

    invoke-direct {v7, v8, v6}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$NewsstandArticleBlocks;-><init>(Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v6, 0x1

    :goto_0
    if-gt v6, v5, :cond_1

    .line 546
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Block"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 547
    invoke-virtual {p1, v8}, Lcom/amazon/kindle/krf/KRF/Reader/INavigationControlNode;->getStringFromTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ","

    .line 548
    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 549
    array-length v9, v8

    const/4 v10, 0x4

    if-ne v9, v10, :cond_0

    .line 551
    new-instance v9, Landroid/graphics/RectF;

    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    aget-object v11, v8, v2

    .line 552
    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    const/4 v12, 0x2

    aget-object v12, v8, v12

    .line 553
    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    const/4 v13, 0x3

    aget-object v8, v8, v13

    .line 554
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-direct {v9, v10, v11, v12, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 551
    invoke-virtual {v7, v9}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$NewsstandArticleBlocks;->addRectangle(Landroid/graphics/RectF;)V

    goto :goto_1

    .line 558
    :cond_0
    invoke-static {}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->access$700()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "invalidate coordinate for text block in page "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v1, v9}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 562
    :catch_0
    :try_start_2
    invoke-static {}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->access$700()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v1, v0}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 565
    :cond_1
    invoke-virtual {v7}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$NewsstandArticleBlocks;->getRectangles()Ljava/util/Collection;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {v7}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$NewsstandArticleBlocks;->getRectangles()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 567
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$2;->this$0:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;

    invoke-static {p1}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->access$600(Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/android/docviewer/mobi/MobiReplicaPageItem;

    invoke-virtual {p1, v7}, Lcom/amazon/android/docviewer/mobi/MobiReplicaPageItem;->addArticleBlocks(Lcom/amazon/nwstd/toc/IArticleBlocks;)V

    goto :goto_2

    .line 572
    :cond_2
    invoke-static {}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->access$700()Ljava/lang/String;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalidate page number for text block creation. Page number : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v1, v3}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 576
    :catch_1
    invoke-static {}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->access$700()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1, v0}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    :cond_3
    :goto_2
    return v2
.end method
