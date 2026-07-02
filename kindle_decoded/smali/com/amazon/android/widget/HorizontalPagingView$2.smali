.class Lcom/amazon/android/widget/HorizontalPagingView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HorizontalPagingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/widget/HorizontalPagingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/widget/HorizontalPagingView;


# direct methods
.method constructor <init>(Lcom/amazon/android/widget/HorizontalPagingView;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/amazon/android/widget/HorizontalPagingView$2;->this$0:Lcom/amazon/android/widget/HorizontalPagingView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 157
    iget-object p1, p0, Lcom/amazon/android/widget/HorizontalPagingView$2;->this$0:Lcom/amazon/android/widget/HorizontalPagingView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/amazon/android/widget/HorizontalPagingView;->access$402(Lcom/amazon/android/widget/HorizontalPagingView;Z)Z

    return-void
.end method
