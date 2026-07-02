.class public Lcom/amazon/kcp/debug/DebugMenuFragment;
.super Landroidx/fragment/app/Fragment;
.source "DebugMenuFragment.java"


# instance fields
.field private rootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 25
    iget-object p1, p0, Lcom/amazon/kcp/debug/DebugMenuFragment;->rootView:Landroid/view/View;

    return-object p1
.end method

.method public setRootView(Landroid/view/View;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/amazon/kcp/debug/DebugMenuFragment;->rootView:Landroid/view/View;

    return-void
.end method
