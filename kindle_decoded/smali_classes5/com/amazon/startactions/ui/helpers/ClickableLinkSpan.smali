.class public Lcom/amazon/startactions/ui/helpers/ClickableLinkSpan;
.super Landroid/text/style/ClickableSpan;
.source "ClickableLinkSpan.java"


# instance fields
.field private activeColor:I

.field private defaultColor:I

.field private final externalListener:Landroid/view/View$OnClickListener;

.field private isSelected:Z


# direct methods
.method public constructor <init>(Landroid/view/View$OnClickListener;II)V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/amazon/startactions/ui/helpers/ClickableLinkSpan;->isSelected:Z

    .line 33
    iput-object p1, p0, Lcom/amazon/startactions/ui/helpers/ClickableLinkSpan;->externalListener:Landroid/view/View$OnClickListener;

    .line 35
    iput p2, p0, Lcom/amazon/startactions/ui/helpers/ClickableLinkSpan;->defaultColor:I

    .line 36
    iput p3, p0, Lcom/amazon/startactions/ui/helpers/ClickableLinkSpan;->activeColor:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/amazon/startactions/ui/helpers/ClickableLinkSpan;->externalListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 50
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/amazon/startactions/ui/helpers/ClickableLinkSpan;->isSelected:Z

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 43
    iget-boolean v0, p0, Lcom/amazon/startactions/ui/helpers/ClickableLinkSpan;->isSelected:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amazon/startactions/ui/helpers/ClickableLinkSpan;->activeColor:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/amazon/startactions/ui/helpers/ClickableLinkSpan;->defaultColor:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
