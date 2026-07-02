.class public Lcom/amazon/kindle/library/ui/popup/RefineLibraryViewSortMenu;
.super Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;
.source "RefineLibraryViewSortMenu.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public setEnabledSortType([Lcom/amazon/kcp/library/LibrarySortType;)V
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->sortTypeRadioGroup:Lcom/amazon/kindle/library/ui/popup/LibrarySortTypeRadioGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/amazon/kindle/library/ui/popup/LibrarySortTypeRadioGroup;->setEnabledSortType([Lcom/amazon/kcp/library/LibrarySortType;Z)V

    return-void
.end method
