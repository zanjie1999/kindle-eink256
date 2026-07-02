.class public Lcom/amazon/kindle/library/ui/popup/CollectionItemsViewSortMenu;
.super Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;
.source "CollectionItemsViewSortMenu.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public show()V
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->sortTypeRadioGroup:Lcom/amazon/kindle/library/ui/popup/LibrarySortTypeRadioGroup;

    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->lib_menu_sort_custom:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->viewSortMenu:Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu$ILibrarySortMenu;

    invoke-interface {v0}, Lcom/amazon/kindle/library/ui/popup/IPopup;->show()V

    return-void
.end method
