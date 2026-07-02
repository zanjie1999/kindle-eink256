.class public Lcom/amazon/bookwizard/ui/view/GenreButton;
.super Landroid/widget/Button;
.source "GenreButton.java"


# instance fields
.field private isPreferred:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getGenre()Lcom/amazon/bookwizard/data/Genre;
    .locals 1

    .line 81
    invoke-virtual {p0}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/bookwizard/data/Genre;

    return-object v0
.end method

.method public isPreferred()Z
    .locals 1

    .line 113
    iget-boolean v0, p0, Lcom/amazon/bookwizard/ui/view/GenreButton;->isPreferred:Z

    return v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5

    .line 121
    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 123
    invoke-virtual {p0}, Lcom/amazon/bookwizard/ui/view/GenreButton;->isPreferred()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/amazon/bookwizard/R$string;->bookwizard_item_selected_description:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/amazon/bookwizard/R$string;->bookwizard_item_not_selected_description:I

    .line 124
    :goto_0
    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setGenre(Lcom/amazon/bookwizard/data/Genre;)V
    .locals 1

    .line 70
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 71
    invoke-virtual {p1}, Lcom/amazon/bookwizard/data/Genre;->isPreferred()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/bookwizard/ui/view/GenreButton;->setPreferred(Z)V

    .line 72
    invoke-virtual {p1}, Lcom/amazon/bookwizard/data/Genre;->getName()Lcom/amazon/bookwizard/data/LString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/bookwizard/data/LString;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPreferred(Z)V
    .locals 0

    .line 96
    iput-boolean p1, p0, Lcom/amazon/bookwizard/ui/view/GenreButton;->isPreferred:Z

    if-eqz p1, :cond_0

    .line 99
    sget p1, Lcom/amazon/bookwizard/R$drawable;->bookwizard_button_filled_white:I

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    const/high16 p1, -0x1000000

    .line 100
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    .line 102
    :cond_0
    sget p1, Lcom/amazon/bookwizard/R$drawable;->bookwizard_button_transparent:I

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    const/4 p1, -0x1

    .line 103
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setTextColor(I)V

    :goto_0
    return-void
.end method
