.class Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu$LibrarySortBottomSheet;
.super Lcom/amazon/kindle/library/ui/popup/BottomSheetPopup;
.source "LibraryViewSortMenu.java"

# interfaces
.implements Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu$ILibrarySortMenu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LibrarySortBottomSheet"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 189
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/library/ui/popup/BottomSheetPopup;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected()V
    .locals 0

    return-void
.end method
