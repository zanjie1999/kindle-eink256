.class public final Lcom/amazon/kindle/setting/provider/MoreBuiltInItemUIBuilderProvider;
.super Ljava/lang/Object;
.source "MoreBuiltInItemUIBuilderProvider.kt"

# interfaces
.implements Lcom/amazon/kindle/setting/item/ItemUIBuilderProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/setting/item/ItemUIBuilderProvider<",
        "Landroid/view/View;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final itemUIBuilders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/setting/item/ItemUIBuilder<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/amazon/kindle/setting/item/ItemUIBuilder;

    .line 17
    new-instance v1, Lcom/amazon/kindle/setting/item/builder/MoreClickableItemUIBuilder;

    invoke-direct {v1}, Lcom/amazon/kindle/setting/item/builder/MoreClickableItemUIBuilder;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/setting/item/builder/MoreToggleItemUIBuilder;

    invoke-direct {v1}, Lcom/amazon/kindle/setting/item/builder/MoreToggleItemUIBuilder;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/setting/item/builder/MorePrimaryItemUIBuilder;

    invoke-direct {v1}, Lcom/amazon/kindle/setting/item/builder/MorePrimaryItemUIBuilder;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 18
    new-instance v1, Lcom/amazon/kindle/setting/item/builder/MoreTextItemUIBuilder;

    invoke-direct {v1}, Lcom/amazon/kindle/setting/item/builder/MoreTextItemUIBuilder;-><init>()V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 17
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/setting/provider/MoreBuiltInItemUIBuilderProvider;->itemUIBuilders:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic getItemUIBuilders()Ljava/util/Collection;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/amazon/kindle/setting/provider/MoreBuiltInItemUIBuilderProvider;->getItemUIBuilders()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getItemUIBuilders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/setting/item/ItemUIBuilder<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/amazon/kindle/setting/provider/MoreBuiltInItemUIBuilderProvider;->itemUIBuilders:Ljava/util/List;

    return-object v0
.end method
