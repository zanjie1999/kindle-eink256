.class Lcom/amazon/kcp/info/TutorialFragment$1;
.super Ljava/lang/Object;
.source "TutorialFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/info/TutorialFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/info/TutorialFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/info/TutorialFragment;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/amazon/kcp/info/TutorialFragment$1;->this$0:Lcom/amazon/kcp/info/TutorialFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 37
    invoke-static {}, Lcom/amazon/kcp/info/TutorialLockHelper;->getLock()Lcom/amazon/kcp/info/TutorialLock;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/info/TutorialLock;->unlockTutorials()V

    .line 38
    iget-object p1, p0, Lcom/amazon/kcp/info/TutorialFragment$1;->this$0:Lcom/amazon/kcp/info/TutorialFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/info/TutorialFragment$ITutorialListener;

    iget-object v0, p0, Lcom/amazon/kcp/info/TutorialFragment$1;->this$0:Lcom/amazon/kcp/info/TutorialFragment;

    invoke-static {v0}, Lcom/amazon/kcp/info/TutorialFragment;->access$000(Lcom/amazon/kcp/info/TutorialFragment;)Lcom/amazon/kcp/info/TutorialManager$JITTutorial;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/kcp/info/TutorialFragment$ITutorialListener;->dismissTutorial(Lcom/amazon/kcp/info/TutorialManager$JITTutorial;)V

    return-void
.end method
