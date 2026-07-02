.class Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip$PageListener;
.super Landroid/database/DataSetObserver;
.source "PagerTitleStrip.java"

# interfaces
.implements Lcom/amazon/whispersync/android/support/v4/view/ViewPager$OnPageChangeListener;
.implements Lcom/amazon/whispersync/android/support/v4/view/ViewPager$OnAdapterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageListener"
.end annotation


# instance fields
.field private mScrollState:I

.field final synthetic this$0:Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;


# direct methods
.method private constructor <init>(Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip$PageListener;->this$0:Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip$1;)V
    .locals 0

    .line 290
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip$PageListener;-><init>(Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;)V

    return-void
.end method


# virtual methods
.method public onAdapterChanged(Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;)V
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip$PageListener;->this$0:Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->updateAdapter(Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;)V

    return-void
.end method

.method public onChanged()V
    .locals 3

    .line 323
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip$PageListener;->this$0:Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;

    iget-object v1, v0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mPager:Lcom/amazon/whispersync/android/support/v4/view/ViewPager;

    invoke-virtual {v1}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    iget-object v2, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip$PageListener;->this$0:Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;

    iget-object v2, v2, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mPager:Lcom/amazon/whispersync/android/support/v4/view/ViewPager;

    invoke-virtual {v2}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->getAdapter()Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->updateText(ILcom/amazon/whispersync/android/support/v4/view/PagerAdapter;)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .line 313
    iput p1, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip$PageListener;->mScrollState:I

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    const/high16 p3, 0x3f000000    # 0.5f

    cmpl-float p3, p2, p3

    if-lez p3, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 300
    :cond_0
    iget-object p3, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip$PageListener;->this$0:Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;

    invoke-virtual {p3, p1, p2}, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->updateTextPositions(IF)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 305
    iget p1, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip$PageListener;->mScrollState:I

    if-nez p1, :cond_0

    .line 307
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip$PageListener;->this$0:Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;

    iget-object v0, p1, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mPager:Lcom/amazon/whispersync/android/support/v4/view/ViewPager;

    invoke-virtual {v0}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip$PageListener;->this$0:Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;

    iget-object v1, v1, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->mPager:Lcom/amazon/whispersync/android/support/v4/view/ViewPager;

    invoke-virtual {v1}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->getAdapter()Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/whispersync/android/support/v4/view/PagerTitleStrip;->updateText(ILcom/amazon/whispersync/android/support/v4/view/PagerAdapter;)V

    :cond_0
    return-void
.end method
