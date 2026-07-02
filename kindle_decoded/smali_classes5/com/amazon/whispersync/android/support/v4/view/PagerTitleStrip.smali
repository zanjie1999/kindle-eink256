.class public Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;
.super Landroid/view/ViewGroup;
.source "PagerTitleStrip.java"

# interfaces
.implements Lcom/amazon/whispersync/android/support/v4/view/ViewPager$Decor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip$PageListener;
    }
.end annotation


# static fields
.field private static final ATTRS:[I

.field private static final SIDE_ALPHA:I = 0x99

.field private static final TAG:Ljava/lang/String; = "PagerTitleStrip"

.field private static final TEXT_SPACING:I = 0x10


# instance fields
.field private mCurrText:Landroid/widget/TextView;

.field private mLastKnownCurrentPage:I

.field private mLastKnownPositionOffset:F

.field private mNextText:Landroid/widget/TextView;

.field private final mPageListener:Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip$PageListener;

.field mPager:Lcom/amazon/whispersync/android/support/v4/view/ViewPager;

.field private mPrevText:Landroid/widget/TextView;

.field private mScaledTextSpacing:I

.field private mUpdatingPositions:Z

.field private mUpdatingText:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 57
    fill-array-data v0, :array_0

    sput-object v0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->ATTRS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1010034
        0x1010098
        0x1010095
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, v0}, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 48
    iput v0, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mLastKnownCurrentPage:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 49
    iput v0, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    .line 55
    new-instance v0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip$PageListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip$PageListener;-><init>(Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip$1;)V

    iput-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mPageListener:Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip$PageListener;

    .line 73
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 74
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 75
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 77
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->ATTRS:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    iget-object v2, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v2, p1, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 81
    iget-object v2, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v2, p1, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 82
    iget-object v2, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v2, p1, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    const/4 v1, 0x1

    .line 84
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 86
    iget-object v2, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    iget-object v2, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    iget-object v2, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    const/4 v1, 0x2

    .line 90
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    if-eqz v1, :cond_2

    .line 92
    iget-object v2, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    int-to-float v1, v1

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 93
    iget-object v2, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 94
    iget-object v2, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 96
    :cond_2
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 98
    iget-object p2, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2

    const/high16 v0, -0x67000000

    const v1, 0xffffff

    and-int/2addr p2, v1

    or-int/2addr p2, v0

    .line 100
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    iget-object p2, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 104
    iget-object p2, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 105
    iget-object p2, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 106
    iget-object p2, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->setSingleLine()V

    .line 107
    iget-object p2, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->setSingleLine()V

    .line 108
    iget-object p2, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->setSingleLine()V

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x41800000    # 16.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    .line 111
    iput p1, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mScaledTextSpacing:I

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    .line 116
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 118
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 119
    instance-of v1, v0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;

    if-eqz v1, :cond_0

    .line 124
    check-cast v0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;

    .line 125
    invoke-virtual {v0}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->getAdapter()Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;

    move-result-object v1

    .line 127
    iget-object v2, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mPageListener:Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip$PageListener;

    invoke-virtual {v0, v2}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->setInternalPageChangeListener(Lcom/amazon/whispersync/android/support/v4/view/ViewPager$OnPageChangeListener;)Lcom/amazon/whispersync/android/support/v4/view/ViewPager$OnPageChangeListener;

    .line 128
    iget-object v2, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mPageListener:Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip$PageListener;

    invoke-virtual {v0, v2}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->setOnAdapterChangeListener(Lcom/amazon/whispersync/android/support/v4/view/ViewPager$OnAdapterChangeListener;)V

    .line 129
    iput-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mPager:Lcom/amazon/whispersync/android/support/v4/view/ViewPager;

    const/4 v0, 0x0

    .line 130
    invoke-virtual {p0, v0, v1}, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->updateAdapter(Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;)V

    return-void

    .line 120
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PagerTitleStrip must be a direct child of a ViewPager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mPager:Lcom/amazon/whispersync/android/support/v4/view/ViewPager;

    invoke-virtual {v0}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->getAdapter()Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->updateAdapter(Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;)V

    .line 136
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mPager:Lcom/amazon/whispersync/android/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->setInternalPageChangeListener(Lcom/amazon/whispersync/android/support/v4/view/ViewPager$OnPageChangeListener;)Lcom/amazon/whispersync/android/support/v4/view/ViewPager$OnPageChangeListener;

    .line 137
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mPager:Lcom/amazon/whispersync/android/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->setOnAdapterChangeListener(Lcom/amazon/whispersync/android/support/v4/view/ViewPager$OnAdapterChangeListener;)V

    .line 138
    iput-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mPager:Lcom/amazon/whispersync/android/support/v4/view/ViewPager;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 285
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mPager:Lcom/amazon/whispersync/android/support/v4/view/ViewPager;

    if-eqz p1, :cond_0

    .line 286
    invoke-virtual {p1}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->getCurrentItem()I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->updateTextPositions(IF)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 248
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 249
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 250
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 251
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_2

    const/4 v0, 0x0

    .line 260
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 262
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 264
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    sub-int v4, p2, v3

    int-to-float v5, p1

    const v6, 0x3f4ccccd    # 0.8f

    mul-float v5, v5, v6

    float-to-int v5, v5

    const/high16 v6, -0x80000000

    .line 267
    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 269
    invoke-static {v4, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 271
    iget-object v6, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v6, v5, v4}, Landroid/widget/TextView;->measure(II)V

    .line 272
    iget-object v6, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v6, v5, v4}, Landroid/widget/TextView;->measure(II)V

    .line 273
    iget-object v6, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v6, v5, v4}, Landroid/widget/TextView;->measure(II)V

    if-ne v1, v2, :cond_1

    .line 276
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    goto :goto_0

    .line 278
    :cond_1
    iget-object p2, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p2, v3

    .line 279
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    :goto_0
    return-void

    .line 254
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Must measure with an exact width"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public requestLayout()V
    .locals 1

    .line 180
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mUpdatingText:Z

    if-nez v0, :cond_0

    .line 181
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    return-void
.end method

.method updateAdapter(Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 187
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mPageListener:Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip$PageListener;

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 190
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mPageListener:Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip$PageListener;

    invoke-virtual {p2, p1}, Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 192
    :cond_1
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mPager:Lcom/amazon/whispersync/android/support/v4/view/ViewPager;

    if-eqz p1, :cond_2

    const/4 v0, -0x1

    .line 193
    iput v0, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mLastKnownCurrentPage:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 194
    iput v0, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    .line 195
    invoke-virtual {p1}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->getCurrentItem()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->updateText(ILcom/amazon/whispersync/android/support/v4/view/PagerAdapter;)V

    .line 196
    invoke-virtual {p0}, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->requestLayout()V

    :cond_2
    return-void
.end method

.method updateText(ILcom/amazon/whispersync/android/support/v4/view/PagerAdapter;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 142
    invoke-virtual {p2}, Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    .line 143
    iput-boolean v2, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mUpdatingText:Z

    const/4 v3, 0x0

    if-lt p1, v2, :cond_1

    if-eqz p2, :cond_1

    add-int/lit8 v2, p1, -0x1

    .line 147
    invoke-virtual {p2, v2}, Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v3

    .line 149
    :goto_1
    iget-object v4, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v2, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, v3

    :goto_2
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v2, p1, 0x1

    if-ge v2, v1, :cond_3

    if-eqz p2, :cond_3

    .line 155
    invoke-virtual {p2, v2}, Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 157
    :cond_3
    iget-object p2, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    sub-int/2addr p2, v1

    .line 161
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float p2, p2

    const v2, 0x3f4ccccd    # 0.8f

    mul-float p2, p2, v2

    float-to-int p2, p2

    const/high16 v2, -0x80000000

    .line 162
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    .line 164
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 165
    iget-object v2, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v2, p2, v1}, Landroid/widget/TextView;->measure(II)V

    .line 166
    iget-object v2, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v2, p2, v1}, Landroid/widget/TextView;->measure(II)V

    .line 167
    iget-object v2, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v2, p2, v1}, Landroid/widget/TextView;->measure(II)V

    .line 169
    iput p1, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mLastKnownCurrentPage:I

    .line 171
    iget-boolean p2, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mUpdatingPositions:Z

    if-nez p2, :cond_4

    .line 172
    iget p2, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->updateTextPositions(IF)V

    .line 175
    :cond_4
    iput-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mUpdatingText:Z

    return-void
.end method

.method updateTextPositions(IF)V
    .locals 12

    .line 201
    iget v0, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mLastKnownCurrentPage:I

    if-eq p1, v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mPager:Lcom/amazon/whispersync/android/support/v4/view/ViewPager;

    invoke-virtual {v0}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->getAdapter()Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->updateText(ILcom/amazon/whispersync/android/support/v4/view/PagerAdapter;)V

    goto :goto_0

    .line 203
    :cond_0
    iget p1, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    cmpl-float p1, p2, p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 207
    iput-boolean p1, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mUpdatingPositions:Z

    .line 209
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    .line 210
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    .line 211
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    .line 212
    div-int/lit8 v2, v0, 0x2

    .line 214
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    .line 215
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    .line 216
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    .line 217
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v6

    add-int v7, v4, v2

    add-int v8, v5, v2

    sub-int v7, v3, v7

    sub-int/2addr v7, v8

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v9, p2

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v11, v9, v10

    if-lez v11, :cond_2

    sub-float/2addr v9, v10

    :cond_2
    sub-int v8, v3, v8

    int-to-float v7, v7

    mul-float v7, v7, v9

    float-to-int v7, v7

    sub-int/2addr v8, v7

    sub-int/2addr v8, v2

    add-int/2addr v0, v8

    .line 230
    iget-object v2, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {v2, v8, v6, v0, v7}, Landroid/widget/TextView;->layout(IIII)V

    .line 233
    iget v2, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mScaledTextSpacing:I

    sub-int/2addr v8, v2

    sub-int/2addr v8, p1

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 234
    iget-object v4, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    add-int/2addr p1, v2

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {v4, v2, v6, p1, v7}, Landroid/widget/TextView;->layout(IIII)V

    sub-int/2addr v3, v5

    sub-int/2addr v3, v1

    .line 237
    iget p1, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mScaledTextSpacing:I

    add-int/2addr v0, p1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 239
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    add-int/2addr v1, p1

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v6

    invoke-virtual {v0, p1, v6, v1, v2}, Landroid/widget/TextView;->layout(IIII)V

    .line 242
    iput p2, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    const/4 p1, 0x0

    .line 243
    iput-boolean p1, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mUpdatingPositions:Z

    return-void
.end method
