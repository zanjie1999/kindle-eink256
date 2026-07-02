.class public Lcom/amazon/kcp/periodicals/model/SectionListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SectionListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/amazon/kcp/periodicals/model/SectionListItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/nwstd/toc/IPeriodicalTOC;)V
    .locals 1

    .line 14
    sget v0, Lcom/amazon/kindle/newsstand/core/R$layout;->periodical_toc_sectionlist_item:I

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 15
    invoke-interface {p2}, Lcom/amazon/nwstd/toc/IPeriodicalTOC;->getTOCSections()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/nwstd/toc/ISectionTOCItem;

    .line 17
    new-instance v0, Lcom/amazon/kcp/periodicals/model/SectionListItem;

    invoke-direct {v0, p2}, Lcom/amazon/kcp/periodicals/model/SectionListItem;-><init>(Lcom/amazon/nwstd/toc/ISectionTOCItem;)V

    invoke-virtual {p0, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
