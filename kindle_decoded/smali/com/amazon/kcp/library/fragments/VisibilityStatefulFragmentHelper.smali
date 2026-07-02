.class public Lcom/amazon/kcp/library/fragments/VisibilityStatefulFragmentHelper;
.super Ljava/lang/Object;
.source "VisibilityStatefulFragmentHelper.java"


# static fields
.field private static final VISIBILITY_STATE_KEY:Ljava/lang/String; = "mVisible"


# instance fields
.field private fragment:Landroidx/fragment/app/Fragment;

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/amazon/kcp/library/fragments/VisibilityStatefulFragmentHelper;->mVisible:Z

    .line 33
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/VisibilityStatefulFragmentHelper;->fragment:Landroidx/fragment/app/Fragment;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "mVisible"

    .line 38
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/kcp/library/fragments/VisibilityStatefulFragmentHelper;->mVisible:Z

    .line 40
    :cond_0
    iget-boolean p1, p0, Lcom/amazon/kcp/library/fragments/VisibilityStatefulFragmentHelper;->mVisible:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/VisibilityStatefulFragmentHelper;->fragment:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_1

    .line 41
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/VisibilityStatefulFragmentHelper;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_1
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 46
    iput-boolean p1, p0, Lcom/amazon/kcp/library/fragments/VisibilityStatefulFragmentHelper;->mVisible:Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 50
    iget-boolean v0, p0, Lcom/amazon/kcp/library/fragments/VisibilityStatefulFragmentHelper;->mVisible:Z

    const-string/jumbo v1, "mVisible"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
