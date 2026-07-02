.class public final Lcom/amazon/kcp/library/fragments/LibraryFragmentClientProxy;
.super Ljava/lang/Object;
.source "LibraryFragmentClientProxy.java"

# interfaces
.implements Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;


# instance fields
.field private NO_OP_CLIENT:Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;

.field private libraryFragmentClient:Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/amazon/kcp/library/fragments/LibraryFragmentClientProxy$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentClientProxy$1;-><init>(Lcom/amazon/kcp/library/fragments/LibraryFragmentClientProxy;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentClientProxy;->NO_OP_CLIENT:Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;

    .line 21
    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentClientProxy;->libraryFragmentClient:Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;

    return-void
.end method


# virtual methods
.method public getFragmentManager()Landroidx/fragment/app/FragmentManager;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentClientProxy;->libraryFragmentClient:Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;

    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

.method public getScreenletContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentClientProxy;->libraryFragmentClient:Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;

    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;->getScreenletContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;

    move-result-object v0

    return-object v0
.end method

.method public setLibraryFragmentClient(Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;)V
    .locals 0

    if-nez p1, :cond_0

    .line 36
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentClientProxy;->NO_OP_CLIENT:Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;

    :cond_0
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentClientProxy;->libraryFragmentClient:Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;

    return-void
.end method

.method public setLibraryMenuOptionsBarEnabled(Z)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentClientProxy;->libraryFragmentClient:Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;->setLibraryMenuOptionsBarEnabled(Z)V

    return-void
.end method

.method public showGroupItem(Lcom/amazon/kcp/library/ILibraryDisplayItem;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentClientProxy;->libraryFragmentClient:Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;->showGroupItem(Lcom/amazon/kcp/library/ILibraryDisplayItem;)V

    return-void
.end method
