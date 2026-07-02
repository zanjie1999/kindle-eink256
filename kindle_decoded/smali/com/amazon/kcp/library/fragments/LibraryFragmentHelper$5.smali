.class Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$5;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "LibraryFragmentHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->onAdapterCreated(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$5;->this$0:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 246
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    .line 247
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$5;->this$0:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    invoke-static {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->access$500(Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;)Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$IAdapterFragmentListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$5;->this$0:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    invoke-static {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->access$500(Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;)Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$IAdapterFragmentListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$IAdapterFragmentListener;->onAdapterDataChanged()V

    :cond_0
    return-void
.end method
