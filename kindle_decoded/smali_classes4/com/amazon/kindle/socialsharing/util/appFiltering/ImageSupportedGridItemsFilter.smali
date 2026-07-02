.class public Lcom/amazon/kindle/socialsharing/util/appFiltering/ImageSupportedGridItemsFilter;
.super Ljava/lang/Object;
.source "ImageSupportedGridItemsFilter.java"

# interfaces
.implements Lcom/amazon/kindle/socialsharing/util/appFiltering/IGridItemsFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterGridItems(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;",
            ">;"
        }
    .end annotation

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;

    .line 32
    invoke-virtual {v1}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->isImageSharingSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->isAppInstalled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 33
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method
