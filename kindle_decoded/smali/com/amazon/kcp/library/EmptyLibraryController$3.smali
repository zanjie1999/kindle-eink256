.class Lcom/amazon/kcp/library/EmptyLibraryController$3;
.super Ljava/lang/Object;
.source "EmptyLibraryController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/EmptyLibraryController;->showEmptyLibraryLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$inflatedEmptyLibraryView:Lcom/amazon/kcp/library/ui/EmptyLibraryView;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/EmptyLibraryController;Lcom/amazon/kcp/library/ui/EmptyLibraryView;)V
    .locals 0

    .line 139
    iput-object p2, p0, Lcom/amazon/kcp/library/EmptyLibraryController$3;->val$inflatedEmptyLibraryView:Lcom/amazon/kcp/library/ui/EmptyLibraryView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 142
    iget-object p1, p0, Lcom/amazon/kcp/library/EmptyLibraryController$3;->val$inflatedEmptyLibraryView:Lcom/amazon/kcp/library/ui/EmptyLibraryView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
