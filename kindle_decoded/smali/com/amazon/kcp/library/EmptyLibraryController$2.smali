.class Lcom/amazon/kcp/library/EmptyLibraryController$2;
.super Ljava/lang/Object;
.source "EmptyLibraryController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/EmptyLibraryController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/EmptyLibraryController;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/EmptyLibraryController;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/amazon/kcp/library/EmptyLibraryController$2;->this$0:Lcom/amazon/kcp/library/EmptyLibraryController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 69
    iget-object p1, p0, Lcom/amazon/kcp/library/EmptyLibraryController$2;->this$0:Lcom/amazon/kcp/library/EmptyLibraryController;

    invoke-static {p1}, Lcom/amazon/kcp/library/EmptyLibraryController;->access$100(Lcom/amazon/kcp/library/EmptyLibraryController;)Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->getTab()Lcom/amazon/kindle/krx/library/LibraryView;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryView;->COLLECTIONS:Lcom/amazon/kindle/krx/library/LibraryView;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/amazon/kcp/library/EmptyLibraryController$2;->this$0:Lcom/amazon/kcp/library/EmptyLibraryController;

    .line 70
    invoke-static {p1}, Lcom/amazon/kcp/library/EmptyLibraryController;->access$100(Lcom/amazon/kcp/library/EmptyLibraryController;)Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    move-result-object p1

    instance-of p1, p1, Lcom/amazon/kcp/library/fragments/CollectionsFragmentHandler;

    if-eqz p1, :cond_0

    .line 71
    iget-object p1, p0, Lcom/amazon/kcp/library/EmptyLibraryController$2;->this$0:Lcom/amazon/kcp/library/EmptyLibraryController;

    invoke-static {p1}, Lcom/amazon/kcp/library/EmptyLibraryController;->access$100(Lcom/amazon/kcp/library/EmptyLibraryController;)Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/library/fragments/CollectionsFragmentHandler;

    .line 72
    invoke-virtual {p1}, Lcom/amazon/kcp/library/fragments/CollectionsFragmentHandler;->showCreateCollectionDialog()V

    :cond_0
    return-void
.end method
