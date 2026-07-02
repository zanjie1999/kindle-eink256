.class public Lcom/amazon/versioning/reader/ui/views/KCUEmptyTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "KCUEmptyTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-direct {p0, p1}, Lcom/amazon/versioning/reader/ui/views/KCUEmptyTextView;->setupFontForTextView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-direct {p0, p1}, Lcom/amazon/versioning/reader/ui/views/KCUEmptyTextView;->setupFontForTextView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    invoke-direct {p0, p1}, Lcom/amazon/versioning/reader/ui/views/KCUEmptyTextView;->setupFontForTextView(Landroid/content/Context;)V

    return-void
.end method

.method private setupFontForTextView(Landroid/content/Context;)V
    .locals 1

    const-string v0, "Amazon-Ember-Regular.ttf"

    .line 36
    invoke-static {p1, v0}, Lcom/amazon/versioning/reader/ui/helper/KCUFontCache;->getTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 41
    :cond_0
    invoke-static {p1}, Lcom/amazon/versioning/reader/ui/helper/KCUHelper;->isAndroidTablet(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x2

    if-eqz p1, :cond_1

    const/high16 p1, 0x41800000    # 16.0f

    .line 42
    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    goto :goto_0

    :cond_1
    const/high16 p1, 0x41600000    # 14.0f

    .line 44
    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    :goto_0
    return-void
.end method
