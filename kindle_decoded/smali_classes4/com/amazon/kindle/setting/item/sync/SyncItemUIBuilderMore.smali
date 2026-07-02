.class public final Lcom/amazon/kindle/setting/item/sync/SyncItemUIBuilderMore;
.super Lcom/amazon/kindle/setting/item/builder/MorePrimaryItemUIBuilder;
.source "SyncItemUIBuilderMore.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/amazon/kindle/setting/item/builder/MorePrimaryItemUIBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;Lcom/amazon/kindle/setting/item/Item;)Landroid/view/View;
    .locals 11

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    check-cast p2, Lcom/amazon/kindle/setting/item/sync/SyncItem;

    const-string v0, "layout_inflater"

    .line 16
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/view/LayoutInflater;

    .line 17
    sget v1, Lcom/amazon/kcp/more/R$layout;->sync_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/amazon/kindle/setting/item/sync/SyncItemView;

    .line 19
    invoke-virtual {v0}, Lcom/amazon/kindle/setting/item/sync/SyncItemView;->getSyncMenuItem()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0}, Lcom/amazon/kindle/setting/item/sync/SyncItemView;->getSyncIcon()Landroid/widget/ImageView;

    move-result-object v5

    .line 20
    invoke-virtual {v0}, Lcom/amazon/kindle/setting/item/sync/SyncItemView;->getSyncItemTitleView()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v0}, Lcom/amazon/kindle/setting/item/sync/SyncItemView;->getSyncStatusMessageView()Landroid/widget/TextView;

    move-result-object v7

    const/4 v8, 0x0

    const/16 v9, 0x40

    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 19
    invoke-static/range {v1 .. v10}, Lcom/amazon/kindle/setting/item/builder/MorePrimaryItemUIBuilder;->setupView$default(Lcom/amazon/kindle/setting/item/builder/MorePrimaryItemUIBuilder;Landroid/content/Context;Lcom/amazon/kindle/setting/item/template/PrimaryItem;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;ILjava/lang/Object;)V

    .line 22
    new-instance p1, Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper;

    invoke-direct {p1, v0}, Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper;-><init>(Lcom/amazon/kindle/setting/item/sync/SyncItemView;)V

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/setting/item/sync/SyncItemView;->setAnimationHelper(Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper;)V

    .line 23
    invoke-virtual {v0, p2}, Lcom/amazon/kindle/setting/item/sync/SyncItemView;->setSyncItem$MoreModule_release(Lcom/amazon/kindle/setting/item/sync/SyncItem;)V

    return-object v0

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type com.amazon.kindle.setting.item.sync.SyncItemView"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type android.view.LayoutInflater"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic build(Landroid/content/Context;Lcom/amazon/kindle/setting/item/Item;)Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/setting/item/sync/SyncItemUIBuilderMore;->build(Landroid/content/Context;Lcom/amazon/kindle/setting/item/Item;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public supportedType()Lkotlin/reflect/KClass;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/KClass<",
            "Lcom/amazon/kindle/setting/item/sync/SyncItem;",
            ">;"
        }
    .end annotation

    .line 12
    const-class v0, Lcom/amazon/kindle/setting/item/sync/SyncItem;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    return-object v0
.end method
