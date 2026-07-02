.class public final Lcom/amazon/kcp/library/fragments/LargeLibraryCursorLoader;
.super Lcom/amazon/kcp/library/AbstractLibraryCursorLoader;
.source "LargeLibraryItemsFragmentHelper.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kcp/library/AbstractLibraryCursorLoader<",
        "Ljava/util/List<",
        "+",
        "Lcom/amazon/kindle/observablemodel/ItemID;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/AbstractLibraryCursorLoader;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadData()Ljava/lang/Object;
    .locals 1

    .line 85
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LargeLibraryCursorLoader;->loadData()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected loadData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;"
        }
    .end annotation

    .line 90
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
