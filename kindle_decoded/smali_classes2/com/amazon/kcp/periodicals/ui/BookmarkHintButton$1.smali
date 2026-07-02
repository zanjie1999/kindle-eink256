.class Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton$1;
.super Ljava/lang/Object;
.source "BookmarkHintButton.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;-><init>(Landroid/content/Context;Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;Lcom/amazon/kcp/periodicals/ui/IOverlaysVisibility;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton$1;->this$0:Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 53
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton$1;->this$0:Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

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
