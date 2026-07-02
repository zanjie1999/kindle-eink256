.class public final Lcom/amazon/kindle/setting/item/sync/SyncItemUIBuilderProvider;
.super Ljava/lang/Object;
.source "SyncItemUIBuilderProvider.kt"

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
            "Lcom/amazon/kindle/setting/item/sync/SyncItemUIBuilderMore;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/amazon/kindle/setting/item/sync/SyncItemUIBuilderMore;

    invoke-direct {v0}, Lcom/amazon/kindle/setting/item/sync/SyncItemUIBuilderMore;-><init>()V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/setting/item/sync/SyncItemUIBuilderProvider;->itemUIBuilders:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic getItemUIBuilders()Ljava/util/Collection;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/amazon/kindle/setting/item/sync/SyncItemUIBuilderProvider;->getItemUIBuilders()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getItemUIBuilders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/setting/item/sync/SyncItemUIBuilderMore;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/amazon/kindle/setting/item/sync/SyncItemUIBuilderProvider;->itemUIBuilders:Ljava/util/List;

    return-object v0
.end method
