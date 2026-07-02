.class public Lcom/amazon/kcp/cover/CheckableViewHelper;
.super Ljava/lang/Object;
.source "CheckableViewHelper.java"


# instance fields
.field private checked:Z

.field private root:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/amazon/kcp/cover/CheckableViewHelper;->root:Landroid/view/ViewGroup;

    return-void
.end method

.method private findContentDescription(Landroid/view/ViewGroup;)Ljava/lang/CharSequence;
    .locals 3

    const/4 v0, 0x0

    .line 60
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 62
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 63
    invoke-virtual {v1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    .line 66
    :cond_0
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 67
    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v1}, Lcom/amazon/kcp/cover/CheckableViewHelper;->findContentDescription(Landroid/view/ViewGroup;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/amazon/kcp/cover/CheckableViewHelper;->checked:Z

    return v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5

    .line 43
    invoke-virtual {p0}, Lcom/amazon/kcp/cover/CheckableViewHelper;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 48
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/amazon/kcp/cover/CheckableViewHelper;->root:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/cover/CheckableViewHelper;->findContentDescription(Landroid/view/ViewGroup;)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    .line 53
    iget-object v1, p0, Lcom/amazon/kcp/cover/CheckableViewHelper;->root:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/librarymodule/R$string;->object_state_selected:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 23
    iget-boolean v0, p0, Lcom/amazon/kcp/cover/CheckableViewHelper;->checked:Z

    if-eq p1, v0, :cond_0

    .line 24
    iput-boolean p1, p0, Lcom/amazon/kcp/cover/CheckableViewHelper;->checked:Z

    .line 25
    iget-object p1, p0, Lcom/amazon/kcp/cover/CheckableViewHelper;->root:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->refreshDrawableState()V

    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .line 30
    iget-boolean v0, p0, Lcom/amazon/kcp/cover/CheckableViewHelper;->checked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/cover/CheckableViewHelper;->setChecked(Z)V

    return-void
.end method
