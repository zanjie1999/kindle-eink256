.class public Lcom/amazon/kcp/reader/ui/SelectionPopupImageButton;
.super Landroid/widget/ImageButton;
.source "SelectionPopupImageButton.java"

# interfaces
.implements Lcom/amazon/kcp/reader/ui/buttons/ISelectionButtonView;


# instance fields
.field private customButtonID:I

.field private isOverflowButton:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/SelectionPopupImageButton;->sharedInit()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/SelectionPopupImageButton;->sharedInit()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/SelectionPopupImageButton;->sharedInit()V

    return-void
.end method

.method private sharedInit()V
    .locals 1

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/SelectionPopupImageButton;->isOverflowButton:Z

    return-void
.end method


# virtual methods
.method public getCustomButtonID()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/amazon/kcp/reader/ui/SelectionPopupImageButton;->customButtonID:I

    return v0
.end method

.method public isOverflowButton()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/SelectionPopupImageButton;->isOverflowButton:Z

    return v0
.end method

.method public setBackgroundImage(I)V
    .locals 1

    .line 66
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCustomButtonID(I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/amazon/kcp/reader/ui/SelectionPopupImageButton;->customButtonID:I

    return-void
.end method

.method public setOverflowButton(Z)V
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/SelectionPopupImageButton;->isOverflowButton:Z

    return-void
.end method
