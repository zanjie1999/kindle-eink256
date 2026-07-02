.class Lcom/amazon/krf/internal/SlidePageTransitionController$SlidePageTransitionOnPageChangeListener;
.super Ljava/lang/Object;
.source "SlidePageTransitionController.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/krf/internal/SlidePageTransitionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlidePageTransitionOnPageChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/krf/internal/SlidePageTransitionController;


# direct methods
.method private constructor <init>(Lcom/amazon/krf/internal/SlidePageTransitionController;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/amazon/krf/internal/SlidePageTransitionController$SlidePageTransitionOnPageChangeListener;->this$0:Lcom/amazon/krf/internal/SlidePageTransitionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/krf/internal/SlidePageTransitionController;Lcom/amazon/krf/internal/SlidePageTransitionController$1;)V
    .locals 0

    .line 203
    invoke-direct {p0, p1}, Lcom/amazon/krf/internal/SlidePageTransitionController$SlidePageTransitionOnPageChangeListener;-><init>(Lcom/amazon/krf/internal/SlidePageTransitionController;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 2

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageScrollStateChanged to state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SlidePageTransitionController"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .line 208
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onPageScrolled at "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SlidePageTransitionController"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageSelected at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SlidePageTransitionController"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x4e20

    if-ne p1, v1, :cond_1

    .line 223
    iget-object v1, p0, Lcom/amazon/krf/internal/SlidePageTransitionController$SlidePageTransitionOnPageChangeListener;->this$0:Lcom/amazon/krf/internal/SlidePageTransitionController;

    invoke-static {v1}, Lcom/amazon/krf/internal/SlidePageTransitionController;->access$200(Lcom/amazon/krf/internal/SlidePageTransitionController;)Lcom/amazon/krf/platform/KRFPageView;

    move-result-object v1

    if-eqz v1, :cond_1

    return-void

    .line 227
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 228
    iget-object v2, p0, Lcom/amazon/krf/internal/SlidePageTransitionController$SlidePageTransitionOnPageChangeListener;->this$0:Lcom/amazon/krf/internal/SlidePageTransitionController;

    invoke-static {v2}, Lcom/amazon/krf/internal/SlidePageTransitionController;->access$400(Lcom/amazon/krf/internal/SlidePageTransitionController;)Lcom/amazon/krf/platform/KRFPageView;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 229
    iget-object v2, p0, Lcom/amazon/krf/internal/SlidePageTransitionController$SlidePageTransitionOnPageChangeListener;->this$0:Lcom/amazon/krf/internal/SlidePageTransitionController;

    invoke-static {v2}, Lcom/amazon/krf/internal/SlidePageTransitionController;->access$400(Lcom/amazon/krf/internal/SlidePageTransitionController;)Lcom/amazon/krf/platform/KRFPageView;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    :cond_2
    iget-object v2, p0, Lcom/amazon/krf/internal/SlidePageTransitionController$SlidePageTransitionOnPageChangeListener;->this$0:Lcom/amazon/krf/internal/SlidePageTransitionController;

    invoke-static {v2}, Lcom/amazon/krf/internal/SlidePageTransitionController;->access$300(Lcom/amazon/krf/internal/SlidePageTransitionController;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/krf/platform/KRFPageView;

    .line 233
    iget-object v2, p0, Lcom/amazon/krf/internal/SlidePageTransitionController$SlidePageTransitionOnPageChangeListener;->this$0:Lcom/amazon/krf/internal/SlidePageTransitionController;

    invoke-static {v2, p1}, Lcom/amazon/krf/internal/SlidePageTransitionController;->access$402(Lcom/amazon/krf/internal/SlidePageTransitionController;Lcom/amazon/krf/platform/KRFPageView;)Lcom/amazon/krf/platform/KRFPageView;

    .line 235
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 236
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    iget-object p1, p0, Lcom/amazon/krf/internal/SlidePageTransitionController$SlidePageTransitionOnPageChangeListener;->this$0:Lcom/amazon/krf/internal/SlidePageTransitionController;

    invoke-virtual {p1}, Lcom/amazon/krf/internal/PageTransitionController;->getListener()Lcom/amazon/krf/platform/PageTransitionListener;

    move-result-object p1

    invoke-interface {p1, v1, v2, v0, v0}, Lcom/amazon/krf/platform/PageTransitionListener;->didDisplayPages(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    return-void
.end method
