.class public final Lcom/amazon/falkor/bottomsheet/WebViewWithSpinnerFragment$setWidgetsVisibility$2$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WebViewFragments.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/falkor/bottomsheet/WebViewWithSpinnerFragment;->setWidgetsVisibility(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic receiver$0:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/amazon/falkor/bottomsheet/WebViewWithSpinnerFragment$setWidgetsVisibility$2$1;->receiver$0:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 104
    iget-object p1, p0, Lcom/amazon/falkor/bottomsheet/WebViewWithSpinnerFragment$setWidgetsVisibility$2$1;->receiver$0:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
