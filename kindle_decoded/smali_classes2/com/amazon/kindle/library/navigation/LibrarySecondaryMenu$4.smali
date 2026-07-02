.class Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$4;
.super Ljava/lang/Object;
.source "LibrarySecondaryMenu.java"

# interfaces
.implements Lcom/amazon/kcp/library/fragments/ILibraryItemCountProvider$ILibraryItemChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->attachFragmentHandler(Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;

.field final synthetic val$handler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$4;->this$0:Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;

    iput-object p2, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$4;->val$handler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemCountChanged(Lcom/amazon/kindle/krx/library/LibraryView;Lcom/amazon/kindle/krx/library/LibraryGroupType;I)V
    .locals 0

    .line 290
    iget-object p1, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$4;->this$0:Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;

    invoke-virtual {p1}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->setRefineButtonEnabled()V

    .line 291
    invoke-static {}, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->isLargeLibraryEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 292
    iget-object p1, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$4;->this$0:Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;

    iget-object p2, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$4;->val$handler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->shouldShowRefineMenuBtn(Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->setRefineButtonVisibility(Z)V

    :cond_0
    return-void
.end method
