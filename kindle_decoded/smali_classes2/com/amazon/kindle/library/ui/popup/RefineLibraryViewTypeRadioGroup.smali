.class public Lcom/amazon/kindle/library/ui/popup/RefineLibraryViewTypeRadioGroup;
.super Lcom/amazon/kcp/widget/CheckableRadioGroup;
.source "RefineLibraryViewTypeRadioGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/library/ui/popup/RefineLibraryViewTypeRadioGroup$RefineViewTypeMenuListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kcp/widget/CheckableRadioGroup<",
        "Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final ITEM_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/kindle/library/ui/popup/RefineLibraryViewTypeRadioGroup;->ITEM_MAP:Ljava/util/Map;

    .line 27
    sget-object v1, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;->GRID:Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    sget v2, Lcom/amazon/kindle/librarymodule/R$string;->lib_menu_view_grid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/amazon/kcp/debug/DetailsViewDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/DetailsViewDebugUtils;

    invoke-virtual {v0}, Lcom/amazon/kcp/debug/DetailsViewDebugUtils;->isDetailsViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    sget-object v0, Lcom/amazon/kindle/library/ui/popup/RefineLibraryViewTypeRadioGroup;->ITEM_MAP:Ljava/util/Map;

    sget-object v1, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;->DETAILS:Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    sget v2, Lcom/amazon/kindle/librarymodule/R$string;->lib_menu_view_details:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    :cond_0
    sget-object v0, Lcom/amazon/kindle/library/ui/popup/RefineLibraryViewTypeRadioGroup;->ITEM_MAP:Ljava/util/Map;

    sget-object v1, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;->LIST:Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    sget v2, Lcom/amazon/kindle/librarymodule/R$string;->lib_menu_view_list:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/amazon/kindle/library/ui/popup/RefineLibraryViewTypeRadioGroup;->ITEM_MAP:Ljava/util/Map;

    sget-object v1, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;->COLLECTIONS:Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    sget v2, Lcom/amazon/kindle/librarymodule/R$string;->collections:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/widget/CheckableRadioGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected getItemMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 41
    sget-object v0, Lcom/amazon/kindle/library/ui/popup/RefineLibraryViewTypeRadioGroup;->ITEM_MAP:Ljava/util/Map;

    return-object v0
.end method

.method public onFinishInflate()V
    .locals 2

    .line 46
    invoke-super {p0}, Lcom/amazon/kcp/widget/CheckableRadioGroup;->onFinishInflate()V

    .line 47
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->lib_menu_grid_view:I

    sget-object v1, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;->GRID:Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/widget/CheckableRadioGroup;->configureOptionItem(ILjava/lang/Object;)V

    .line 48
    sget-object v0, Lcom/amazon/kcp/debug/DetailsViewDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/DetailsViewDebugUtils;

    invoke-virtual {v0}, Lcom/amazon/kcp/debug/DetailsViewDebugUtils;->isDetailsViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->lib_menu_details_view:I

    sget-object v1, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;->DETAILS:Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/widget/CheckableRadioGroup;->configureOptionItem(ILjava/lang/Object;)V

    .line 51
    :cond_0
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->lib_menu_list_view:I

    sget-object v1, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;->LIST:Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/widget/CheckableRadioGroup;->configureOptionItem(ILjava/lang/Object;)V

    .line 52
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->lib_menu_collections_view:I

    sget-object v1, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;->COLLECTIONS:Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/widget/CheckableRadioGroup;->configureOptionItem(ILjava/lang/Object;)V

    .line 53
    sget-object v0, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;->COLLECTIONS:Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/widget/CheckableRadioGroup;->setMenuItemVisible(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setEnabledRefineViewType([Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;)V
    .locals 3

    .line 62
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 64
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 67
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/widget/CheckableRadioGroup;->items:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/widget/LibraryCheckableItem;

    .line 68
    invoke-virtual {v1}, Lcom/amazon/kcp/widget/LibraryCheckableItem;->getIdentityObject()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 69
    invoke-virtual {v1, v2}, Lcom/amazon/kcp/widget/LibraryCheckableItem;->setEnabled(Z)V

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 71
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v2, 0x1

    .line 72
    invoke-virtual {v1, v2}, Lcom/amazon/kcp/widget/LibraryCheckableItem;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    .line 74
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_2
    return-void
.end method
