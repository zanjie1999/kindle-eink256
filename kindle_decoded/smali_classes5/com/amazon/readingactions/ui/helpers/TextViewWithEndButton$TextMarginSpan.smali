.class public Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$TextMarginSpan;
.super Ljava/lang/Object;
.source "TextViewWithEndButton.java"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextMarginSpan"
.end annotation


# instance fields
.field private drawLineCount:I

.field private lines:I

.field private margin:I

.field final synthetic this$0:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

.field private wasDrawCalled:Z


# direct methods
.method public constructor <init>(Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;II)V
    .locals 0

    .line 616
    iput-object p1, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$TextMarginSpan;->this$0:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 613
    iput-boolean p1, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$TextMarginSpan;->wasDrawCalled:Z

    .line 614
    iput p1, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$TextMarginSpan;->drawLineCount:I

    .line 617
    iput p3, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$TextMarginSpan;->margin:I

    .line 618
    iput p2, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$TextMarginSpan;->lines:I

    return-void
.end method


# virtual methods
.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 0

    const/4 p1, 0x1

    .line 638
    iput-boolean p1, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$TextMarginSpan;->wasDrawCalled:Z

    return-void
.end method

.method public getLeadingMargin(Z)I
    .locals 3

    .line 625
    iget-boolean p1, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$TextMarginSpan;->wasDrawCalled:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$TextMarginSpan;->drawLineCount:I

    add-int/2addr p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$TextMarginSpan;->drawLineCount:I

    .line 626
    iput-boolean v1, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$TextMarginSpan;->wasDrawCalled:Z

    .line 627
    iget v2, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$TextMarginSpan;->lines:I

    if-gt p1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 629
    :goto_1
    iget p1, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$TextMarginSpan;->drawLineCount:I

    iget v2, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$TextMarginSpan;->lines:I

    if-ne p1, v2, :cond_2

    .line 630
    iput v1, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$TextMarginSpan;->drawLineCount:I

    :cond_2
    if-eqz v0, :cond_3

    .line 633
    iget v1, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$TextMarginSpan;->margin:I

    :cond_3
    return v1
.end method

.method public getLeadingMarginLineCount()I
    .locals 1

    .line 643
    iget v0, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$TextMarginSpan;->lines:I

    return v0
.end method
