.class public Lcom/amazon/versioning/reader/ui/views/KCULearnMoreLinkTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "KCULearnMoreLinkTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-direct {p0, p1}, Lcom/amazon/versioning/reader/ui/views/KCULearnMoreLinkTextView;->setupFontForTextView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-direct {p0, p1}, Lcom/amazon/versioning/reader/ui/views/KCULearnMoreLinkTextView;->setupFontForTextView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-direct {p0, p1}, Lcom/amazon/versioning/reader/ui/views/KCULearnMoreLinkTextView;->setupFontForTextView(Landroid/content/Context;)V

    return-void
.end method

.method private setupFontForTextView(Landroid/content/Context;)V
    .locals 1

    const-string v0, "Amazon-Ember-Regular.ttf"

    .line 35
    invoke-static {p1, v0}, Lcom/amazon/versioning/reader/ui/helper/KCUFontCache;->getTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 37
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    const/4 p1, 0x2

    const/high16 v0, 0x41600000    # 14.0f

    .line 40
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    return-void
.end method
