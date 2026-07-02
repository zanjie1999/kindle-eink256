.class Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu$1;
.super Ljava/lang/Object;
.source "LibraryFilterMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->setupClearFiltersView(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu$1;->this$0:Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 246
    iget-object p1, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu$1;->this$0:Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;

    invoke-static {p1}, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->access$100(Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;)Lcom/amazon/kcp/library/LibraryFilterStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/library/LibraryFilterStateManager;->clearItemIds()V

    return-void
.end method
