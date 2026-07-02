.class public Lcom/amazon/kindle/library/navigation/ViewTypeMenuBaseListener;
.super Ljava/lang/Object;
.source "ViewTypeMenuBaseListener.java"

# interfaces
.implements Lcom/amazon/kindle/library/ui/popup/RefineLibraryViewTypeRadioGroup$RefineViewTypeMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/library/navigation/ViewTypeMenuBaseListener$LibraryViewDisplayer;
    }
.end annotation


# instance fields
.field private handler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

.field private final libraryViewDisplayer:Lcom/amazon/kindle/library/navigation/ViewTypeMenuBaseListener$LibraryViewDisplayer;

.field private final viewOptionsModel:Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/library/navigation/ViewTypeMenuBaseListener$LibraryViewDisplayer;Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/amazon/kindle/library/navigation/ViewTypeMenuBaseListener;->libraryViewDisplayer:Lcom/amazon/kindle/library/navigation/ViewTypeMenuBaseListener$LibraryViewDisplayer;

    .line 29
    iput-object p2, p0, Lcom/amazon/kindle/library/navigation/ViewTypeMenuBaseListener;->viewOptionsModel:Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;

    return-void
.end method


# virtual methods
.method public attachFragmentHandler(Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/amazon/kindle/library/navigation/ViewTypeMenuBaseListener;->handler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    return-void
.end method

.method public onMenuItemChecked(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public onMenuItemSelected(Lcom/amazon/kcp/widget/LibraryCheckableItem;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/widget/LibraryCheckableItem<",
            "Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;",
            ">;)V"
        }
    .end annotation

    .line 58
    invoke-virtual {p1}, Lcom/amazon/kcp/widget/LibraryCheckableItem;->getIdentityObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    .line 59
    sget-object v0, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;->COLLECTIONS:Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    if-ne p1, v0, :cond_0

    .line 60
    iget-object p1, p0, Lcom/amazon/kindle/library/navigation/ViewTypeMenuBaseListener;->libraryViewDisplayer:Lcom/amazon/kindle/library/navigation/ViewTypeMenuBaseListener$LibraryViewDisplayer;

    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryView;->COLLECTIONS:Lcom/amazon/kindle/krx/library/LibraryView;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/library/navigation/ViewTypeMenuBaseListener$LibraryViewDisplayer;->showLibraryView(Lcom/amazon/kindle/krx/library/LibraryView;)V

    goto :goto_0

    .line 62
    :cond_0
    invoke-static {p1}, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;->toLibraryViewType(Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;)Lcom/amazon/kindle/krx/library/LibraryViewType;

    move-result-object p1

    .line 63
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/ViewTypeMenuBaseListener;->viewOptionsModel:Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;

    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;->getLibraryView()Lcom/amazon/kindle/krx/library/LibraryView;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/library/LibraryView;->COLLECTIONS:Lcom/amazon/kindle/krx/library/LibraryView;

    if-ne v0, v1, :cond_1

    .line 64
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/ViewTypeMenuBaseListener;->viewOptionsModel:Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;

    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;->getLibraryView()Lcom/amazon/kindle/krx/library/LibraryView;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;->setViewType(Lcom/amazon/kindle/krx/library/LibraryViewType;Lcom/amazon/kindle/krx/library/LibraryView;)V

    .line 65
    iget-object p1, p0, Lcom/amazon/kindle/library/navigation/ViewTypeMenuBaseListener;->libraryViewDisplayer:Lcom/amazon/kindle/library/navigation/ViewTypeMenuBaseListener$LibraryViewDisplayer;

    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryView;->FILTER:Lcom/amazon/kindle/krx/library/LibraryView;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/library/navigation/ViewTypeMenuBaseListener$LibraryViewDisplayer;->showLibraryView(Lcom/amazon/kindle/krx/library/LibraryView;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 66
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/ViewTypeMenuBaseListener;->handler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->getUserSelectedViewType()Lcom/amazon/kindle/krx/library/LibraryViewType;

    move-result-object v0

    if-eq v0, p1, :cond_2

    .line 67
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/ViewTypeMenuBaseListener;->handler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->onViewModeSelected(Lcom/amazon/kindle/krx/library/LibraryViewType;)V

    :cond_2
    :goto_0
    return-void
.end method
