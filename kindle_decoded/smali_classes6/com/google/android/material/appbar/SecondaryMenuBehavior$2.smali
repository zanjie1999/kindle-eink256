.class Lcom/google/android/material/appbar/SecondaryMenuBehavior$2;
.super Ljava/lang/Object;
.source "SecondaryMenuBehavior.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/appbar/SecondaryMenuBehavior;->animateScrollOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/appbar/SecondaryMenuBehavior;

.field final synthetic val$child:Lcom/google/android/material/appbar/AppBarLayout;

.field final synthetic val$coordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;


# direct methods
.method constructor <init>(Lcom/google/android/material/appbar/SecondaryMenuBehavior;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/google/android/material/appbar/SecondaryMenuBehavior$2;->this$0:Lcom/google/android/material/appbar/SecondaryMenuBehavior;

    iput-object p2, p0, Lcom/google/android/material/appbar/SecondaryMenuBehavior$2;->val$coordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object p3, p0, Lcom/google/android/material/appbar/SecondaryMenuBehavior$2;->val$child:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 95
    iget-object v0, p0, Lcom/google/android/material/appbar/SecondaryMenuBehavior$2;->this$0:Lcom/google/android/material/appbar/SecondaryMenuBehavior;

    iget-object v1, p0, Lcom/google/android/material/appbar/SecondaryMenuBehavior$2;->val$coordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v2, p0, Lcom/google/android/material/appbar/SecondaryMenuBehavior$2;->val$child:Lcom/google/android/material/appbar/AppBarLayout;

    .line 96
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/high16 v4, -0x80000000

    const v5, 0x7fffffff

    .line 95
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/appbar/SecondaryMenuBehavior;->access$001(Lcom/google/android/material/appbar/SecondaryMenuBehavior;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;III)I

    return-void
.end method
