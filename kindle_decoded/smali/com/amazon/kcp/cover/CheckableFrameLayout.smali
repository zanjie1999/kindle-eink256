.class public Lcom/amazon/kcp/cover/CheckableFrameLayout;
.super Landroid/widget/FrameLayout;
.source "CheckableFrameLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final CHECKED_STATE:[I


# instance fields
.field private checkableHelper:Lcom/amazon/kcp/cover/CheckableViewHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    .line 10
    sput-object v0, Lcom/amazon/kcp/cover/CheckableFrameLayout;->CHECKED_STATE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    new-instance p1, Lcom/amazon/kcp/cover/CheckableViewHelper;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/cover/CheckableViewHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lcom/amazon/kcp/cover/CheckableFrameLayout;->checkableHelper:Lcom/amazon/kcp/cover/CheckableViewHelper;

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazon/kcp/cover/CheckableFrameLayout;->checkableHelper:Lcom/amazon/kcp/cover/CheckableViewHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/cover/CheckableViewHelper;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 20
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 21
    invoke-virtual {p0}, Lcom/amazon/kcp/cover/CheckableFrameLayout;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    sget-object v0, Lcom/amazon/kcp/cover/CheckableFrameLayout;->CHECKED_STATE:[I

    invoke-static {p1, v0}, Landroid/widget/FrameLayout;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 50
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 51
    iget-object v0, p0, Lcom/amazon/kcp/cover/CheckableFrameLayout;->checkableHelper:Lcom/amazon/kcp/cover/CheckableViewHelper;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/cover/CheckableViewHelper;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/amazon/kcp/cover/CheckableFrameLayout;->checkableHelper:Lcom/amazon/kcp/cover/CheckableViewHelper;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/cover/CheckableViewHelper;->setChecked(Z)V

    return-void
.end method

.method public toggle()V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/kcp/cover/CheckableFrameLayout;->checkableHelper:Lcom/amazon/kcp/cover/CheckableViewHelper;

    invoke-virtual {v0}, Lcom/amazon/kcp/cover/CheckableViewHelper;->toggle()V

    return-void
.end method
