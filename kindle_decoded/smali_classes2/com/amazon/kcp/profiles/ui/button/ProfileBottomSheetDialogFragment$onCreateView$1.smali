.class final Lcom/amazon/kcp/profiles/ui/button/ProfileBottomSheetDialogFragment$onCreateView$1;
.super Ljava/lang/Object;
.source "ProfileBottomSheetDialogFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/profiles/ui/button/ProfileBottomSheetDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/profiles/ui/button/ProfileBottomSheetDialogFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/profiles/ui/button/ProfileBottomSheetDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/profiles/ui/button/ProfileBottomSheetDialogFragment$onCreateView$1;->this$0:Lcom/amazon/kcp/profiles/ui/button/ProfileBottomSheetDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 25
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/amazon/kcp/profiles/ui/button/ProfileBottomSheetDialogFragment$onCreateView$1;->this$0:Lcom/amazon/kcp/profiles/ui/button/ProfileBottomSheetDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/amazon/kcp/profiles/FamilySharingSettingPageActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    iget-object v0, p0, Lcom/amazon/kcp/profiles/ui/button/ProfileBottomSheetDialogFragment$onCreateView$1;->this$0:Lcom/amazon/kcp/profiles/ui/button/ProfileBottomSheetDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
