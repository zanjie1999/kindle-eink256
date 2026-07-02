.class public abstract Lcom/amazon/kcp/reader/ui/ChapterNavigationButton;
.super Landroid/widget/ImageView;
.source "ChapterNavigationButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/ui/ChapterNavigationButton$Next;,
        Lcom/amazon/kcp/reader/ui/ChapterNavigationButton$Previous;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected abstract getBlackResource()I
.end method

.method protected abstract getSepiaResource()I
.end method

.method protected abstract getWhiteResource()I
.end method

.method public setColorCode(Lcom/amazon/kindle/krx/ui/ColorMode;)V
    .locals 1

    .line 20
    sget-object v0, Lcom/amazon/kcp/reader/ui/ChapterNavigationButton$1;->$SwitchMap$com$amazon$kindle$krx$ui$ColorMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ChapterNavigationButton;->getBlackResource()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ChapterNavigationButton;->getSepiaResource()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 23
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ChapterNavigationButton;->getWhiteResource()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method
