.class Lcom/amazon/kcp/info/CustomTutorialFragment$1;
.super Ljava/lang/Object;
.source "CustomTutorialFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/info/CustomTutorialFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/info/CustomTutorialFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/info/CustomTutorialFragment;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/amazon/kcp/info/CustomTutorialFragment$1;->this$0:Lcom/amazon/kcp/info/CustomTutorialFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 84
    invoke-static {}, Lcom/amazon/kcp/info/TutorialLockHelper;->getLock()Lcom/amazon/kcp/info/TutorialLock;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/info/TutorialLock;->unlockTutorials()V

    .line 85
    iget-object p1, p0, Lcom/amazon/kcp/info/CustomTutorialFragment$1;->this$0:Lcom/amazon/kcp/info/CustomTutorialFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 86
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/info/CustomTutorialFragment$1;->this$0:Lcom/amazon/kcp/info/CustomTutorialFragment;

    .line 87
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 88
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method
