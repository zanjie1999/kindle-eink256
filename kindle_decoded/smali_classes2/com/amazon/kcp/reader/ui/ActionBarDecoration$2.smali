.class Lcom/amazon/kcp/reader/ui/ActionBarDecoration$2;
.super Ljava/lang/Object;
.source "ActionBarDecoration.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/ActionBarDecoration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ActionBarDecoration;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ActionBarDecoration;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration$2;->this$0:Lcom/amazon/kcp/reader/ui/ActionBarDecoration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 109
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration$2;->this$0:Lcom/amazon/kcp/reader/ui/ActionBarDecoration;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->access$202(Lcom/amazon/kcp/reader/ui/ActionBarDecoration;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 104
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration$2;->this$0:Lcom/amazon/kcp/reader/ui/ActionBarDecoration;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->access$202(Lcom/amazon/kcp/reader/ui/ActionBarDecoration;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 99
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration$2;->this$0:Lcom/amazon/kcp/reader/ui/ActionBarDecoration;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->access$202(Lcom/amazon/kcp/reader/ui/ActionBarDecoration;Z)Z

    return-void
.end method
