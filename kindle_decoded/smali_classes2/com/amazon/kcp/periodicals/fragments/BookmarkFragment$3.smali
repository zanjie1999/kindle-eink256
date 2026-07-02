.class Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment$3;
.super Ljava/lang/Object;
.source "BookmarkFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment$3;->this$0:Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 141
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment$3;->this$0:Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
