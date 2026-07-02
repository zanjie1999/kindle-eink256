.class public final Lcom/audible/hushpuppy/common/system/TextViewUtil;
.super Ljava/lang/Object;
.source "TextViewUtil.java"


# static fields
.field private static final LINK_END_MARKER:Ljava/lang/String; = "]]"

.field private static final LINK_START_MARKER:Ljava/lang/String; = "[["


# direct methods
.method public static applyLinkStyle(Landroid/widget/TextView;I)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v1, "[["

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "]]"

    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v1, :cond_1

    if-le v2, v1, :cond_1

    add-int/lit8 v3, v1, 0x2

    const-string v4, ""

    .line 48
    invoke-virtual {v0, v1, v3, v4}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, -0x2

    add-int/lit8 v3, v2, 0x2

    .line 50
    invoke-virtual {v0, v2, v3, v4}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    new-instance v3, Landroid/text/SpannableString;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 52
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v4, 0x21

    invoke-interface {v3, v0, v1, v2, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 54
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v3, v0, v1, v2, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 56
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public static setTextColor(Landroid/view/View;I)V
    .locals 2

    .line 67
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 68
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 69
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 70
    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 71
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 72
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/audible/hushpuppy/common/system/TextViewUtil;->setTextColor(Landroid/view/View;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
