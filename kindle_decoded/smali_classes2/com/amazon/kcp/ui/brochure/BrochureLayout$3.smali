.class Lcom/amazon/kcp/ui/brochure/BrochureLayout$3;
.super Ljava/lang/Object;
.source "BrochureLayout.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/ui/brochure/BrochureLayout;->initializeViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field lastPosition:I

.field lastState:I

.field final synthetic this$0:Lcom/amazon/kcp/ui/brochure/BrochureLayout;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/ui/brochure/BrochureLayout;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout$3;->this$0:Lcom/amazon/kcp/ui/brochure/BrochureLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 162
    iput p1, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout$3;->lastPosition:I

    const/4 p1, 0x2

    .line 163
    iput p1, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout$3;->lastState:I

    return-void
.end method

.method private recordMetrics(I)V
    .locals 6

    .line 212
    iget-object v0, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout$3;->this$0:Lcom/amazon/kcp/ui/brochure/BrochureLayout;

    invoke-static {v0}, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->access$1100(Lcom/amazon/kcp/ui/brochure/BrochureLayout;)Lcom/amazon/kcp/ui/brochure/BrochureAdapter;

    move-result-object v0

    iget v1, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout$3;->lastPosition:I

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/ui/brochure/BrochureAdapter;->getSlide(I)Lcom/amazon/kindle/krx/ui/brochure/IBrochureSlide;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 214
    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/brochure/IBrochureSlide;->getMetricKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 217
    :goto_0
    iget v1, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout$3;->lastPosition:I

    sub-int v2, p1, v1

    const-string v3, "swipe"

    const/4 v4, 0x1

    if-lez v2, :cond_1

    iget v2, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout$3;->lastState:I

    if-ne v2, v4, :cond_1

    .line 218
    iget-object v2, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout$3;->this$0:Lcom/amazon/kcp/ui/brochure/BrochureLayout;

    invoke-static {v2, v3, v1, v0}, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->access$1200(Lcom/amazon/kcp/ui/brochure/BrochureLayout;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 219
    :cond_1
    iget v1, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout$3;->lastPosition:I

    sub-int v2, p1, v1

    if-lez v2, :cond_2

    iget v2, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout$3;->lastState:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_2

    .line 220
    iget-object v2, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout$3;->this$0:Lcom/amazon/kcp/ui/brochure/BrochureLayout;

    const-string v3, "button"

    invoke-static {v2, v3, v1, v0}, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->access$1200(Lcom/amazon/kcp/ui/brochure/BrochureLayout;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 221
    :cond_2
    iget v1, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout$3;->lastPosition:I

    sub-int v2, p1, v1

    if-gez v2, :cond_3

    iget v2, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout$3;->lastState:I

    if-ne v2, v4, :cond_3

    .line 222
    iget-object v2, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout$3;->this$0:Lcom/amazon/kcp/ui/brochure/BrochureLayout;

    invoke-static {v2, v3, v1, v0}, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->access$1200(Lcom/amazon/kcp/ui/brochure/BrochureLayout;Ljava/lang/String;ILjava/lang/String;)V

    .line 225
    :cond_3
    :goto_1
    iput p1, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout$3;->lastPosition:I

    return-void
.end method

.method private updateNextButton(I)V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout$3;->this$0:Lcom/amazon/kcp/ui/brochure/BrochureLayout;

    invoke-static {v0}, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->access$000(Lcom/amazon/kcp/ui/brochure/BrochureLayout;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 202
    invoke-static {}, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Changing next button text to \'done\'"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object p1, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout$3;->this$0:Lcom/amazon/kcp/ui/brochure/BrochureLayout;

    invoke-static {p1}, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->access$1000(Lcom/amazon/kcp/ui/brochure/BrochureLayout;)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout$3;->this$0:Lcom/amazon/kcp/ui/brochure/BrochureLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$string;->brochure_done_button_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 205
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Changing next button text to \'next\'"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object p1, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout$3;->this$0:Lcom/amazon/kcp/ui/brochure/BrochureLayout;

    invoke-static {p1}, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->access$1000(Lcom/amazon/kcp/ui/brochure/BrochureLayout;)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout$3;->this$0:Lcom/amazon/kcp/ui/brochure/BrochureLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$string;->brochure_next_button_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 195
    iput p1, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout$3;->lastState:I

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout$3;->this$0:Lcom/amazon/kcp/ui/brochure/BrochureLayout;

    invoke-static {v0}, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->access$300(Lcom/amazon/kcp/ui/brochure/BrochureLayout;)Lcom/amazon/kcp/reader/ui/DotPageIndicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/DotPageIndicator;->setSelectedItem(I)V

    .line 172
    invoke-direct {p0, p1}, Lcom/amazon/kcp/ui/brochure/BrochureLayout$3;->updateNextButton(I)V

    .line 174
    invoke-direct {p0, p1}, Lcom/amazon/kcp/ui/brochure/BrochureLayout$3;->recordMetrics(I)V

    .line 176
    iget-object v0, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout$3;->this$0:Lcom/amazon/kcp/ui/brochure/BrochureLayout;

    invoke-static {v0}, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->access$400(Lcom/amazon/kcp/ui/brochure/BrochureLayout;)I

    move-result v0

    if-le p1, v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout$3;->this$0:Lcom/amazon/kcp/ui/brochure/BrochureLayout;

    invoke-static {v0, p1}, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->access$402(Lcom/amazon/kcp/ui/brochure/BrochureLayout;I)I

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout$3;->this$0:Lcom/amazon/kcp/ui/brochure/BrochureLayout;

    invoke-static {v0}, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->access$500(Lcom/amazon/kcp/ui/brochure/BrochureLayout;)[I

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout$3;->this$0:Lcom/amazon/kcp/ui/brochure/BrochureLayout;

    invoke-static {v0}, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->access$500(Lcom/amazon/kcp/ui/brochure/BrochureLayout;)[I

    move-result-object v0

    array-length v0, v0

    if-le v0, p1, :cond_1

    .line 181
    iget-object v0, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout$3;->this$0:Lcom/amazon/kcp/ui/brochure/BrochureLayout;

    invoke-static {v0}, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->access$500(Lcom/amazon/kcp/ui/brochure/BrochureLayout;)[I

    move-result-object v0

    aget v2, v0, p1

    add-int/2addr v2, v1

    aput v2, v0, p1

    .line 183
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout$3;->this$0:Lcom/amazon/kcp/ui/brochure/BrochureLayout;

    invoke-static {p1}, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->access$600(Lcom/amazon/kcp/ui/brochure/BrochureLayout;)Z

    move-result p1

    if-nez p1, :cond_2

    iget p1, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout$3;->lastPosition:I

    iget-object v0, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout$3;->this$0:Lcom/amazon/kcp/ui/brochure/BrochureLayout;

    invoke-static {v0}, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->access$700(Lcom/amazon/kcp/ui/brochure/BrochureLayout;)I

    move-result v0

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_2

    .line 184
    iget-object p1, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout$3;->this$0:Lcom/amazon/kcp/ui/brochure/BrochureLayout;

    invoke-static {p1, v1}, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->access$602(Lcom/amazon/kcp/ui/brochure/BrochureLayout;Z)Z

    .line 186
    :cond_2
    iget-object p1, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout$3;->this$0:Lcom/amazon/kcp/ui/brochure/BrochureLayout;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->access$802(Lcom/amazon/kcp/ui/brochure/BrochureLayout;J)J

    .line 187
    iget-object p1, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout$3;->this$0:Lcom/amazon/kcp/ui/brochure/BrochureLayout;

    invoke-static {p1}, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->access$908(Lcom/amazon/kcp/ui/brochure/BrochureLayout;)I

    const/4 p1, 0x2

    .line 189
    iput p1, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout$3;->lastState:I

    return-void
.end method
