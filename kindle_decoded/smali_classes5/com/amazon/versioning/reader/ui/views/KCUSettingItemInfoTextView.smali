.class public Lcom/amazon/versioning/reader/ui/views/KCUSettingItemInfoTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "KCUSettingItemInfoTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-direct {p0, p1}, Lcom/amazon/versioning/reader/ui/views/KCUSettingItemInfoTextView;->setupFontForTextView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-direct {p0, p1}, Lcom/amazon/versioning/reader/ui/views/KCUSettingItemInfoTextView;->setupFontForTextView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    invoke-direct {p0, p1}, Lcom/amazon/versioning/reader/ui/views/KCUSettingItemInfoTextView;->setupFontForTextView(Landroid/content/Context;)V

    return-void
.end method

.method private setupFontForTextView(Landroid/content/Context;)V
    .locals 2

    const-string v0, "Amazon-Ember-Regular.ttf"

    .line 36
    invoke-static {p1, v0}, Lcom/amazon/versioning/reader/ui/helper/KCUFontCache;->getTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    const/4 v0, 0x2

    const/high16 v1, 0x41500000    # 13.0f

    .line 37
    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method
