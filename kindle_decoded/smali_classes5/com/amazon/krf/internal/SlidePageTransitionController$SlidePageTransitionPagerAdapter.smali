.class Lcom/amazon/krf/internal/SlidePageTransitionController$SlidePageTransitionPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "SlidePageTransitionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/krf/internal/SlidePageTransitionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlidePageTransitionPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/krf/internal/SlidePageTransitionController;


# direct methods
.method private constructor <init>(Lcom/amazon/krf/internal/SlidePageTransitionController;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/amazon/krf/internal/SlidePageTransitionController$SlidePageTransitionPagerAdapter;->this$0:Lcom/amazon/krf/internal/SlidePageTransitionController;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/krf/internal/SlidePageTransitionController;Lcom/amazon/krf/internal/SlidePageTransitionController$1;)V
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lcom/amazon/krf/internal/SlidePageTransitionController$SlidePageTransitionPagerAdapter;-><init>(Lcom/amazon/krf/internal/SlidePageTransitionController;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destroyItem at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SlidePageTransitionController"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-gt p2, v0, :cond_0

    return-void

    .line 194
    :cond_0
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 195
    iget-object p1, p0, Lcom/amazon/krf/internal/SlidePageTransitionController$SlidePageTransitionPagerAdapter;->this$0:Lcom/amazon/krf/internal/SlidePageTransitionController;

    invoke-static {p1}, Lcom/amazon/krf/internal/SlidePageTransitionController;->access$300(Lcom/amazon/krf/internal/SlidePageTransitionController;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public getCount()I
    .locals 1

    const v0, 0xc350

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 6

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "instantiateItem at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SlidePageTransitionController"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gt p2, v0, :cond_0

    return-object v1

    .line 136
    :cond_0
    iget-object v2, p0, Lcom/amazon/krf/internal/SlidePageTransitionController$SlidePageTransitionPagerAdapter;->this$0:Lcom/amazon/krf/internal/SlidePageTransitionController;

    invoke-static {v2}, Lcom/amazon/krf/internal/SlidePageTransitionController;->access$200(Lcom/amazon/krf/internal/SlidePageTransitionController;)Lcom/amazon/krf/platform/KRFPageView;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 142
    iget-object v4, p0, Lcom/amazon/krf/internal/SlidePageTransitionController$SlidePageTransitionPagerAdapter;->this$0:Lcom/amazon/krf/internal/SlidePageTransitionController;

    invoke-virtual {v4}, Lcom/amazon/krf/internal/PageTransitionController;->navigationDirectionMatchesAnimationDirection()Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit16 v4, p2, -0x4e20

    goto :goto_1

    :cond_2
    rsub-int v4, p2, 0x4e20

    .line 147
    :goto_1
    iget-object v5, p0, Lcom/amazon/krf/internal/SlidePageTransitionController$SlidePageTransitionPagerAdapter;->this$0:Lcom/amazon/krf/internal/SlidePageTransitionController;

    invoke-virtual {v5}, Lcom/amazon/krf/internal/PageTransitionController;->getDataProvider()Lcom/amazon/krf/internal/PageTransitionDataProvider;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/amazon/krf/internal/PageTransitionDataProvider;->getPageViewAtOffset(I)Lcom/amazon/krf/platform/KRFPageView;

    move-result-object v4

    goto :goto_2

    .line 149
    :cond_3
    iget-object v4, p0, Lcom/amazon/krf/internal/SlidePageTransitionController$SlidePageTransitionPagerAdapter;->this$0:Lcom/amazon/krf/internal/SlidePageTransitionController;

    invoke-static {v4}, Lcom/amazon/krf/internal/SlidePageTransitionController;->access$200(Lcom/amazon/krf/internal/SlidePageTransitionController;)Lcom/amazon/krf/platform/KRFPageView;

    move-result-object v4

    .line 150
    iget-object v5, p0, Lcom/amazon/krf/internal/SlidePageTransitionController$SlidePageTransitionPagerAdapter;->this$0:Lcom/amazon/krf/internal/SlidePageTransitionController;

    invoke-static {v5, v1}, Lcom/amazon/krf/internal/SlidePageTransitionController;->access$202(Lcom/amazon/krf/internal/SlidePageTransitionController;Lcom/amazon/krf/platform/KRFPageView;)Lcom/amazon/krf/platform/KRFPageView;

    :goto_2
    if-nez v4, :cond_4

    return-object v1

    .line 157
    :cond_4
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 158
    iget-object p1, p0, Lcom/amazon/krf/internal/SlidePageTransitionController$SlidePageTransitionPagerAdapter;->this$0:Lcom/amazon/krf/internal/SlidePageTransitionController;

    invoke-static {p1}, Lcom/amazon/krf/internal/SlidePageTransitionController;->access$300(Lcom/amazon/krf/internal/SlidePageTransitionController;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, p2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 161
    iget-object p1, p0, Lcom/amazon/krf/internal/SlidePageTransitionController$SlidePageTransitionPagerAdapter;->this$0:Lcom/amazon/krf/internal/SlidePageTransitionController;

    invoke-static {p1}, Lcom/amazon/krf/internal/SlidePageTransitionController;->access$400(Lcom/amazon/krf/internal/SlidePageTransitionController;)Lcom/amazon/krf/platform/KRFPageView;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 162
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 163
    iget-object p1, p0, Lcom/amazon/krf/internal/SlidePageTransitionController$SlidePageTransitionPagerAdapter;->this$0:Lcom/amazon/krf/internal/SlidePageTransitionController;

    invoke-static {p1}, Lcom/amazon/krf/internal/SlidePageTransitionController;->access$400(Lcom/amazon/krf/internal/SlidePageTransitionController;)Lcom/amazon/krf/platform/KRFPageView;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    :cond_5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 166
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    iget-object p2, p0, Lcom/amazon/krf/internal/SlidePageTransitionController$SlidePageTransitionPagerAdapter;->this$0:Lcom/amazon/krf/internal/SlidePageTransitionController;

    invoke-virtual {p2}, Lcom/amazon/krf/internal/PageTransitionController;->getListener()Lcom/amazon/krf/platform/PageTransitionListener;

    move-result-object p2

    invoke-interface {p2, v1, p1, v2}, Lcom/amazon/krf/platform/PageTransitionListener;->willDisplayPages(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    if-nez v2, :cond_7

    .line 172
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 173
    iget-object v1, p0, Lcom/amazon/krf/internal/SlidePageTransitionController$SlidePageTransitionPagerAdapter;->this$0:Lcom/amazon/krf/internal/SlidePageTransitionController;

    invoke-static {v1}, Lcom/amazon/krf/internal/SlidePageTransitionController;->access$400(Lcom/amazon/krf/internal/SlidePageTransitionController;)Lcom/amazon/krf/platform/KRFPageView;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 174
    iget-object v1, p0, Lcom/amazon/krf/internal/SlidePageTransitionController$SlidePageTransitionPagerAdapter;->this$0:Lcom/amazon/krf/internal/SlidePageTransitionController;

    invoke-static {v1}, Lcom/amazon/krf/internal/SlidePageTransitionController;->access$400(Lcom/amazon/krf/internal/SlidePageTransitionController;)Lcom/amazon/krf/platform/KRFPageView;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_6
    iget-object v1, p0, Lcom/amazon/krf/internal/SlidePageTransitionController$SlidePageTransitionPagerAdapter;->this$0:Lcom/amazon/krf/internal/SlidePageTransitionController;

    invoke-virtual {v1}, Lcom/amazon/krf/internal/PageTransitionController;->getListener()Lcom/amazon/krf/platform/PageTransitionListener;

    move-result-object v1

    invoke-interface {v1, p2, p1, v0, v3}, Lcom/amazon/krf/platform/PageTransitionListener;->didDisplayPages(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    :cond_7
    return-object v4
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
