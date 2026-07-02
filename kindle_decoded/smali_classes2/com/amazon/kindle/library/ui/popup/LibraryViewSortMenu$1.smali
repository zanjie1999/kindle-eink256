.class Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu$1;
.super Ljava/lang/Object;
.source "LibraryViewSortMenu.java"

# interfaces
.implements Lcom/amazon/kindle/library/ui/popup/LibrarySortTypeRadioGroup$SortTypeMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->createSortTypeRadioGroup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu$1;->this$0:Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemChecked(Ljava/lang/CharSequence;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu$1;->this$0:Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;

    invoke-static {v0}, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->access$000(Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;)Lcom/amazon/kindle/library/ui/popup/LibrarySortTypeRadioGroup$SortTypeMenuListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu$1;->this$0:Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;

    invoke-static {v0}, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->access$000(Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;)Lcom/amazon/kindle/library/ui/popup/LibrarySortTypeRadioGroup$SortTypeMenuListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kcp/widget/CheckableRadioGroup$MenuItemActionListener;->onMenuItemChecked(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onMenuItemSelected(Lcom/amazon/kcp/widget/LibraryCheckableItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/widget/LibraryCheckableItem<",
            "Lcom/amazon/kcp/library/LibrarySortType;",
            ">;)V"
        }
    .end annotation

    .line 92
    invoke-virtual {p1}, Lcom/amazon/kcp/cover/CheckableFrameLayout;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu$1;->this$0:Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;

    invoke-static {v0}, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->access$000(Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;)Lcom/amazon/kindle/library/ui/popup/LibrarySortTypeRadioGroup$SortTypeMenuListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu$1;->this$0:Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;

    invoke-static {v0}, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->access$000(Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;)Lcom/amazon/kindle/library/ui/popup/LibrarySortTypeRadioGroup$SortTypeMenuListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kcp/widget/CheckableRadioGroup$MenuItemActionListener;->onMenuItemSelected(Lcom/amazon/kcp/widget/LibraryCheckableItem;)V

    .line 95
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu$1;->this$0:Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;

    iget-object p1, p1, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->viewSortMenu:Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu$ILibrarySortMenu;

    invoke-interface {p1}, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu$ILibrarySortMenu;->onMenuItemSelected()V

    return-void
.end method
