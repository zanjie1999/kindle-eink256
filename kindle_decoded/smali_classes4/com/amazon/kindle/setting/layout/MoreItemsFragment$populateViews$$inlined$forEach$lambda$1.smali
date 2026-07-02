.class final Lcom/amazon/kindle/setting/layout/MoreItemsFragment$populateViews$$inlined$forEach$lambda$1;
.super Ljava/lang/Object;
.source "MoreItemsFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/setting/layout/MoreItemsFragment;->populateViews(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $container$inlined:Landroid/view/ViewGroup;

.field final synthetic $item$inlined:Lcom/amazon/kindle/setting/item/Item;

.field final synthetic $itemConfiguration$inlined:Lcom/amazon/kindle/setting/layout/ItemConfiguration;

.field final synthetic this$0:Lcom/amazon/kindle/setting/layout/MoreItemsFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/setting/item/ItemUIBuilder;Lcom/amazon/kindle/setting/item/Item;Lcom/amazon/kindle/setting/layout/ItemConfiguration;Lcom/amazon/kindle/setting/layout/MoreItemsFragment;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p2, p0, Lcom/amazon/kindle/setting/layout/MoreItemsFragment$populateViews$$inlined$forEach$lambda$1;->$item$inlined:Lcom/amazon/kindle/setting/item/Item;

    iput-object p3, p0, Lcom/amazon/kindle/setting/layout/MoreItemsFragment$populateViews$$inlined$forEach$lambda$1;->$itemConfiguration$inlined:Lcom/amazon/kindle/setting/layout/ItemConfiguration;

    iput-object p4, p0, Lcom/amazon/kindle/setting/layout/MoreItemsFragment$populateViews$$inlined$forEach$lambda$1;->this$0:Lcom/amazon/kindle/setting/layout/MoreItemsFragment;

    iput-object p5, p0, Lcom/amazon/kindle/setting/layout/MoreItemsFragment$populateViews$$inlined$forEach$lambda$1;->$container$inlined:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 111
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/amazon/kindle/setting/layout/MoreItemsFragment$populateViews$$inlined$forEach$lambda$1;->this$0:Lcom/amazon/kindle/setting/layout/MoreItemsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/amazon/kindle/setting/layout/ItemsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 113
    iget-object v0, p0, Lcom/amazon/kindle/setting/layout/MoreItemsFragment$populateViews$$inlined$forEach$lambda$1;->$item$inlined:Lcom/amazon/kindle/setting/item/Item;

    invoke-interface {v0}, Lcom/amazon/kindle/setting/item/Item;->getTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TITLE_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amazon/kindle/setting/layout/MoreItemsFragment$populateViews$$inlined$forEach$lambda$1;->$itemConfiguration$inlined:Lcom/amazon/kindle/setting/layout/ItemConfiguration;

    invoke-virtual {v1}, Lcom/amazon/kindle/setting/layout/ItemConfiguration;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "ITEMS_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 116
    iget-object v0, p0, Lcom/amazon/kindle/setting/layout/MoreItemsFragment$populateViews$$inlined$forEach$lambda$1;->this$0:Lcom/amazon/kindle/setting/layout/MoreItemsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
