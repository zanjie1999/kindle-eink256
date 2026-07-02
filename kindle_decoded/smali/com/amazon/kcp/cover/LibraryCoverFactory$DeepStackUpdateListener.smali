.class public Lcom/amazon/kcp/cover/LibraryCoverFactory$DeepStackUpdateListener;
.super Ljava/lang/Object;
.source "LibraryCoverFactory.java"

# interfaces
.implements Lcom/amazon/kcp/cover/BadgeableCover$BadgeableCoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/cover/LibraryCoverFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeepStackUpdateListener"
.end annotation


# instance fields
.field deepStack:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onUpdateWidth(I)V
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/amazon/kcp/cover/LibraryCoverFactory$DeepStackUpdateListener;->deepStack:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 458
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 459
    iget-object p1, p0, Lcom/amazon/kcp/cover/LibraryCoverFactory$DeepStackUpdateListener;->deepStack:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setDeepStack(Landroid/widget/LinearLayout;)V
    .locals 0

    .line 463
    iput-object p1, p0, Lcom/amazon/kcp/cover/LibraryCoverFactory$DeepStackUpdateListener;->deepStack:Landroid/widget/LinearLayout;

    return-void
.end method
