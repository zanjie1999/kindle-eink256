.class public Lcom/amazon/android/docviewer/TOCReplicaList;
.super Ljava/lang/Object;
.source "TOCReplicaList.java"

# interfaces
.implements Lcom/amazon/nwstd/model/replica/IReplicaPageItemList;


# instance fields
.field private toc:Lcom/amazon/nwstd/toc/IPeriodicalTOC;


# direct methods
.method public constructor <init>(Lcom/amazon/nwstd/toc/IPeriodicalTOC;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/amazon/android/docviewer/TOCReplicaList;->toc:Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    return-void
.end method


# virtual methods
.method public get(I)Lcom/amazon/nwstd/toc/IReplicaPageItem;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amazon/android/docviewer/TOCReplicaList;->toc:Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    invoke-interface {v0}, Lcom/amazon/nwstd/toc/IPeriodicalTOC;->getReplicaPageItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/nwstd/toc/IReplicaPageItem;

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amazon/android/docviewer/TOCReplicaList;->toc:Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    invoke-interface {v0}, Lcom/amazon/nwstd/toc/IPeriodicalTOC;->getReplicaPageItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
