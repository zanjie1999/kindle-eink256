.class Lcom/amazon/kcp/ui/brochure/BrochureLayout$1;
.super Ljava/lang/Object;
.source "BrochureLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/ui/brochure/BrochureLayout;->initializeNextButton(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/ui/brochure/BrochureLayout;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/ui/brochure/BrochureLayout;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout$1;->this$0:Lcom/amazon/kcp/ui/brochure/BrochureLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 125
    iget-object p1, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout$1;->this$0:Lcom/amazon/kcp/ui/brochure/BrochureLayout;

    invoke-static {p1}, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->access$000(Lcom/amazon/kcp/ui/brochure/BrochureLayout;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 126
    iget-object v0, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout$1;->this$0:Lcom/amazon/kcp/ui/brochure/BrochureLayout;

    invoke-static {v0}, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->access$000(Lcom/amazon/kcp/ui/brochure/BrochureLayout;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 128
    iget-object p1, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout$1;->this$0:Lcom/amazon/kcp/ui/brochure/BrochureLayout;

    const-string v0, "button"

    invoke-static {p1, v0}, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->access$100(Lcom/amazon/kcp/ui/brochure/BrochureLayout;Ljava/lang/String;)V

    .line 130
    invoke-static {}, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Done button pressed"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object p1, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout$1;->this$0:Lcom/amazon/kcp/ui/brochure/BrochureLayout;

    invoke-virtual {p1}, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->performDonePressed()V

    goto :goto_0

    .line 133
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Next button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout$1;->this$0:Lcom/amazon/kcp/ui/brochure/BrochureLayout;

    invoke-static {v0}, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->access$000(Lcom/amazon/kcp/ui/brochure/BrochureLayout;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :goto_0
    return-void
.end method
