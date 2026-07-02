.class public final Lcom/amazon/readingactions/ui/widget/BuyBookController$inflateOneTapView$delegate$1;
.super Ljava/lang/Object;
.source "BuyBookController.kt"

# interfaces
.implements Lcom/amazon/readingactions/helpers/AlignmentChangeDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/readingactions/ui/widget/BuyBookController;->inflateOneTapView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $buttonsOneTapContainer:Landroid/widget/LinearLayout;

.field private shouldChangeAlignment:Z


# direct methods
.method constructor <init>(Landroid/widget/LinearLayout;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController$inflateOneTapView$delegate$1;->$buttonsOneTapContainer:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 328
    iput-boolean p1, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController$inflateOneTapView$delegate$1;->shouldChangeAlignment:Z

    return-void
.end method


# virtual methods
.method public getShouldChangeAlignment()Z
    .locals 1

    .line 328
    iget-boolean v0, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController$inflateOneTapView$delegate$1;->shouldChangeAlignment:Z

    return v0
.end method

.method public setAlignment(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 332
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController$inflateOneTapView$delegate$1;->$buttonsOneTapContainer:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_0

    .line 334
    :cond_0
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController$inflateOneTapView$delegate$1;->$buttonsOneTapContainer:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :cond_1
    :goto_0
    return-void
.end method
