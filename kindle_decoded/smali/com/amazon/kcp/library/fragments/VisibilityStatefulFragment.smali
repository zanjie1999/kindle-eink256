.class public Lcom/amazon/kcp/library/fragments/VisibilityStatefulFragment;
.super Landroidx/fragment/app/Fragment;
.source "VisibilityStatefulFragment.java"


# instance fields
.field private visibilityHelper:Lcom/amazon/kcp/library/fragments/VisibilityStatefulFragmentHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 16
    new-instance v0, Lcom/amazon/kcp/library/fragments/VisibilityStatefulFragmentHelper;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/fragments/VisibilityStatefulFragmentHelper;-><init>(Landroidx/fragment/app/Fragment;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/VisibilityStatefulFragment;->visibilityHelper:Lcom/amazon/kcp/library/fragments/VisibilityStatefulFragmentHelper;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 20
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 21
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/VisibilityStatefulFragment;->visibilityHelper:Lcom/amazon/kcp/library/fragments/VisibilityStatefulFragmentHelper;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/fragments/VisibilityStatefulFragmentHelper;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 1

    .line 26
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 27
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/VisibilityStatefulFragment;->visibilityHelper:Lcom/amazon/kcp/library/fragments/VisibilityStatefulFragmentHelper;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/fragments/VisibilityStatefulFragmentHelper;->onHiddenChanged(Z)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 32
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 33
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/VisibilityStatefulFragment;->visibilityHelper:Lcom/amazon/kcp/library/fragments/VisibilityStatefulFragmentHelper;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/fragments/VisibilityStatefulFragmentHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
