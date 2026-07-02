.class public Lcom/amazon/kindle/krx/collections/BaseCollectionsClient;
.super Ljava/lang/Object;
.source "BaseCollectionsClient.java"

# interfaces
.implements Lcom/amazon/kindle/krx/collections/ICollectionsClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionButtons()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/ui/IActionButton<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCollectionsFilter()Lcom/amazon/kindle/krx/collections/CollectionFilter;
    .locals 2

    .line 18
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can\'t get CollectionFilter from BaseCollectionsClient"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLeftPanelView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
