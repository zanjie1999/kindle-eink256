.class Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$4;
.super Ljava/lang/Object;
.source "MobiPeriodicalTOC.java"

# interfaces
.implements Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$NodeFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->traverseReplicaPageList(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;)V
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

    .line 657
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$4;->this$0:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;)Z
    .locals 4

    .line 661
    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;->getItem()Lcom/amazon/kindle/krf/KRF/Reader/INavigationControlNode;

    move-result-object p1

    .line 662
    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KRF/Reader/INavigationControlNode;->getNodeClass()Ljava/lang/String;

    move-result-object v0

    .line 663
    sget-object v1, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;->ReplicaPage:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;->ReplicaPageWithoutTarget:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 665
    :cond_0
    sget-object v1, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;->ReplicaPageWithoutTarget:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 666
    new-instance v1, Lcom/amazon/android/docviewer/mobi/MobiReplicaPageItem;

    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$4;->this$0:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;

    invoke-static {v2}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->access$100(Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;)Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$4;->this$0:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;

    invoke-static {v3}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->access$800(Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;)Ljava/util/SortedMap;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/SortedMap;->size()I

    move-result v3

    invoke-direct {v1, v2, p1, v3, v0}, Lcom/amazon/android/docviewer/mobi/MobiReplicaPageItem;-><init>(Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;Lcom/amazon/kindle/krf/KRF/Reader/INavigationControlNode;IZ)V

    .line 667
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$4;->this$0:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;

    invoke-static {p1}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->access$800(Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;)Ljava/util/SortedMap;

    move-result-object p1

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/MobiReplicaPageItem;->getPageIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$4;->this$0:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;

    invoke-static {p1}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->access$600(Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
