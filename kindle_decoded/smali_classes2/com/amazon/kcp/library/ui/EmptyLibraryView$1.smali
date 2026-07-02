.class Lcom/amazon/kcp/library/ui/EmptyLibraryView$1;
.super Ljava/lang/Object;
.source "EmptyLibraryView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/ui/EmptyLibraryView;->addButton(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/ui/EmptyLibraryView;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/ui/EmptyLibraryView;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/amazon/kcp/library/ui/EmptyLibraryView$1;->this$0:Lcom/amazon/kcp/library/ui/EmptyLibraryView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 88
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 89
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 91
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 92
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 93
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_0

    const p2, 0x3e99999a    # 0.3f

    .line 96
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    if-eq p2, v3, :cond_1

    const/4 v3, 0x3

    if-eq p2, v3, :cond_1

    .line 97
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p2

    if-nez p2, :cond_2

    :cond_1
    const/high16 p2, 0x3f800000    # 1.0f

    .line 98
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
