.class Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler$2;
.super Ljava/lang/Object;
.source "BaseLibraryFragmentHandler.java"

# interfaces
.implements Lcom/amazon/kcp/library/fragments/ILibraryItemCountProvider$ILibraryItemChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->setCountDelegator(Lcom/amazon/kcp/library/fragments/ILibraryItemCountProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler$2;->this$0:Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemCountChanged(Lcom/amazon/kindle/krx/library/LibraryView;Lcom/amazon/kindle/krx/library/LibraryGroupType;I)V
    .locals 0

    .line 109
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler$2;->this$0:Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 110
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler$2;->this$0:Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->getItemCount()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->setEmptyLibraryCount(I)V

    :cond_0
    return-void
.end method
