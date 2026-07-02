.class public Lcom/amazon/kcp/reader/ui/UnifiedDefinitionButton;
.super Landroid/widget/Button;
.source "UnifiedDefinitionButton.java"

# interfaces
.implements Lcom/amazon/kcp/reader/ui/buttons/ISelectionButtonView;


# instance fields
.field private customButtonID:I

.field private isOverflowButton:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/UnifiedDefinitionButton;->isOverflowButton:Z

    return-void
.end method


# virtual methods
.method public getCustomButtonID()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/amazon/kcp/reader/ui/UnifiedDefinitionButton;->customButtonID:I

    return v0
.end method

.method public isOverflowButton()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/UnifiedDefinitionButton;->isOverflowButton:Z

    return v0
.end method

.method public setBackgroundImage(I)V
    .locals 1

    .line 59
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCustomButtonID(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/amazon/kcp/reader/ui/UnifiedDefinitionButton;->customButtonID:I

    return-void
.end method

.method public setOverflowButton(Z)V
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/UnifiedDefinitionButton;->isOverflowButton:Z

    return-void
.end method
