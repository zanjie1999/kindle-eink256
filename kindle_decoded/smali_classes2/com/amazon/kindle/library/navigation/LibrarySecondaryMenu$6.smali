.class Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$6;
.super Ljava/lang/Object;
.source "LibrarySecondaryMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->setupCreateCollectionButton(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;)V
    .locals 0

    .line 419
    iput-object p1, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$6;->this$0:Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 422
    iget-object p1, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$6;->this$0:Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;

    iget-object p1, p1, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->handler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    instance-of v0, p1, Lcom/amazon/kcp/library/fragments/CollectionsFragmentHandler;

    if-eqz v0, :cond_0

    .line 423
    check-cast p1, Lcom/amazon/kcp/library/fragments/CollectionsFragmentHandler;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/fragments/CollectionsFragmentHandler;->showCreateCollectionDialog()V

    :cond_0
    return-void
.end method
