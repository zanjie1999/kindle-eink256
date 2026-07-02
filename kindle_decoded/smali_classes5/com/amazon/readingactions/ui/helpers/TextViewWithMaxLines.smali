.class public final Lcom/amazon/readingactions/ui/helpers/TextViewWithMaxLines;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "TextViewWithMaxLines.kt"


# instance fields
.field private lines:I

.field private maxLines:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final getActualMaxLines()I
    .locals 2

    .line 30
    iget v0, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithMaxLines;->lines:I

    if-nez v0, :cond_0

    .line 31
    iget v0, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithMaxLines;->maxLines:I

    return v0

    .line 33
    :cond_0
    iget v1, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithMaxLines;->maxLines:I

    if-nez v1, :cond_1

    goto :goto_0

    .line 35
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    return v0
.end method


# virtual methods
.method public getMaxLines()I
    .locals 2

    .line 50
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 51
    invoke-super {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v0

    goto :goto_0

    .line 54
    :cond_0
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/helpers/TextViewWithMaxLines;->getActualMaxLines()I

    move-result v0

    :goto_0
    return v0
.end method

.method public setLines(I)V
    .locals 0

    .line 45
    invoke-super {p0, p1}, Landroid/widget/TextView;->setLines(I)V

    .line 46
    iput p1, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithMaxLines;->lines:I

    return-void
.end method

.method public setMaxLines(I)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 41
    iput p1, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithMaxLines;->maxLines:I

    return-void
.end method
