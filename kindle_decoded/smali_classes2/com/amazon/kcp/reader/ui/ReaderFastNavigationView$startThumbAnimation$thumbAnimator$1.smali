.class public final Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$startThumbAnimation$thumbAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ReaderFastNavigationView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->startThumbAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 472
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$startThumbAnimation$thumbAnimator$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 474
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$startThumbAnimation$thumbAnimator$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->access$updateVisibility(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;)V

    return-void
.end method
