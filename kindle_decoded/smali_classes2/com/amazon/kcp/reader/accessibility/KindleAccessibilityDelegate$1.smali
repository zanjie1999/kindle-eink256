.class Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate$1;
.super Ljava/lang/Object;
.source "KindleAccessibilityDelegate.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate$1;->this$0:Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p9, p7

    const/4 p2, 0x1

    const/4 p4, 0x0

    if-lez p9, :cond_0

    const/4 p6, 0x1

    goto :goto_0

    :cond_0
    const/4 p6, 0x0

    :goto_0
    sub-int/2addr p5, p3

    if-gtz p5, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    if-eqz p6, :cond_2

    if-eqz p2, :cond_2

    const/16 p2, 0x800

    .line 105
    invoke-virtual {p1, p2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 106
    iget-object p1, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate$1;->this$0:Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;

    invoke-virtual {p1}, Landroidx/customview/widget/ExploreByTouchHelper;->getFocusedVirtualView()I

    move-result p2

    const/high16 p3, 0x10000

    invoke-virtual {p1, p2, p3}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    :cond_2
    return-void
.end method
