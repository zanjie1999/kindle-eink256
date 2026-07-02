.class public Lcom/amazon/sitb/android/view/component/EllipsizableClickableTextView;
.super Landroid/widget/TextView;
.source "EllipsizableClickableTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/sitb/android/view/component/EllipsizableClickableTextView$PostProcessor;
    }
.end annotation


# instance fields
.field private postProcessor:Lcom/amazon/sitb/android/view/component/EllipsizableClickableTextView$PostProcessor;

.field private userText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, v0}, Lcom/amazon/sitb/android/view/component/EllipsizableClickableTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/sitb/android/view/component/EllipsizableClickableTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private postProcess(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/amazon/sitb/android/view/component/EllipsizableClickableTextView;->postProcessor:Lcom/amazon/sitb/android/view/component/EllipsizableClickableTextView$PostProcessor;

    if-eqz v0, :cond_0

    .line 70
    invoke-interface {v0, p1, p2}, Lcom/amazon/sitb/android/view/component/EllipsizableClickableTextView$PostProcessor;->processEllipsizedText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p2
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 0

    .line 54
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    if-lez p1, :cond_0

    if-eq p3, p1, :cond_0

    .line 57
    iget-object p1, p0, Lcom/amazon/sitb/android/view/component/EllipsizableClickableTextView;->userText:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setPostProcessor(Lcom/amazon/sitb/android/view/component/EllipsizableClickableTextView$PostProcessor;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/amazon/sitb/android/view/component/EllipsizableClickableTextView;->postProcessor:Lcom/amazon/sitb/android/view/component/EllipsizableClickableTextView$PostProcessor;

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 3

    .line 39
    iput-object p1, p0, Lcom/amazon/sitb/android/view/component/EllipsizableClickableTextView;->userText:Ljava/lang/CharSequence;

    .line 42
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 44
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p1, v0, v1, v2}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/amazon/sitb/android/view/component/EllipsizableClickableTextView;->postProcess(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 48
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method
