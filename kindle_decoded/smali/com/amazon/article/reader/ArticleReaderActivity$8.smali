.class Lcom/amazon/article/reader/ArticleReaderActivity$8;
.super Landroid/webkit/WebViewClient;
.source "ArticleReaderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/article/reader/ArticleReaderActivity;->initWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/article/reader/ArticleReaderActivity;


# direct methods
.method constructor <init>(Lcom/amazon/article/reader/ArticleReaderActivity;)V
    .locals 0

    .line 403
    iput-object p1, p0, Lcom/amazon/article/reader/ArticleReaderActivity$8;->this$0:Lcom/amazon/article/reader/ArticleReaderActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    .line 427
    iget-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity$8;->this$0:Lcom/amazon/article/reader/ArticleReaderActivity;

    iget-boolean v1, v0, Lcom/amazon/article/reader/ArticleReaderActivity;->isAccessibilityEnabled:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/amazon/article/reader/ArticleReaderActivity;->isExploreByTouchEnabled:Z

    if-eqz v1, :cond_0

    .line 428
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    .line 430
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 431
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 432
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    const/16 v2, 0x4000

    .line 433
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 434
    const-class v2, Lcom/amazon/article/reader/ArticleReaderActivity$8;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    const-string v2, ""

    .line 435
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 436
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    const-string v3, "Article loaded"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity$8;->this$0:Lcom/amazon/article/reader/ArticleReaderActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amazon/article/reader/ArticleReaderActivity;->isPageLoaded:Z

    .line 441
    invoke-static {v0}, Lcom/amazon/article/reader/ArticleReaderActivity;->access$900(Lcom/amazon/article/reader/ArticleReaderActivity;)V

    .line 442
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 444
    iget-object p1, p0, Lcom/amazon/article/reader/ArticleReaderActivity$8;->this$0:Lcom/amazon/article/reader/ArticleReaderActivity;

    iget-boolean p2, p1, Lcom/amazon/article/reader/ArticleReaderActivity;->isGoBack:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-boolean p2, p1, Lcom/amazon/article/reader/ArticleReaderActivity;->isPageNotCompletelyLoadedBackPressed:Z

    if-nez p2, :cond_1

    .line 453
    invoke-static {p1}, Lcom/amazon/article/reader/ArticleReaderActivity;->access$200(Lcom/amazon/article/reader/ArticleReaderActivity;)Landroidx/core/widget/NestedScrollView;

    move-result-object p1

    const p2, 0x3b9aca00

    invoke-virtual {p1, v0, p2}, Landroid/widget/FrameLayout;->scrollBy(II)V

    .line 454
    iget-object p1, p0, Lcom/amazon/article/reader/ArticleReaderActivity$8;->this$0:Lcom/amazon/article/reader/ArticleReaderActivity;

    invoke-static {p1}, Lcom/amazon/article/reader/ArticleReaderActivity;->access$200(Lcom/amazon/article/reader/ArticleReaderActivity;)Landroidx/core/widget/NestedScrollView;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Landroid/widget/FrameLayout;->scrollBy(II)V

    .line 455
    iget-object p1, p0, Lcom/amazon/article/reader/ArticleReaderActivity$8;->this$0:Lcom/amazon/article/reader/ArticleReaderActivity;

    invoke-static {p1}, Lcom/amazon/article/reader/ArticleReaderActivity;->access$200(Lcom/amazon/article/reader/ArticleReaderActivity;)Landroidx/core/widget/NestedScrollView;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Landroid/widget/FrameLayout;->scrollBy(II)V

    .line 456
    iget-object p1, p0, Lcom/amazon/article/reader/ArticleReaderActivity$8;->this$0:Lcom/amazon/article/reader/ArticleReaderActivity;

    iput-boolean v0, p1, Lcom/amazon/article/reader/ArticleReaderActivity;->isGoBack:Z

    .line 458
    :cond_1
    iget-object p1, p0, Lcom/amazon/article/reader/ArticleReaderActivity$8;->this$0:Lcom/amazon/article/reader/ArticleReaderActivity;

    iget-boolean p2, p1, Lcom/amazon/article/reader/ArticleReaderActivity;->isPageNotCompletelyLoadedBackPressed:Z

    if-eqz p2, :cond_2

    .line 459
    iput-boolean v0, p1, Lcom/amazon/article/reader/ArticleReaderActivity;->isPageNotCompletelyLoadedBackPressed:Z

    :cond_2
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .line 406
    iget-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity$8;->this$0:Lcom/amazon/article/reader/ArticleReaderActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/amazon/article/reader/ArticleReaderActivity;->isPageLoaded:Z

    .line 407
    iget-boolean v1, v0, Lcom/amazon/article/reader/ArticleReaderActivity;->isGoBack:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 408
    iput-boolean v2, v0, Lcom/amazon/article/reader/ArticleReaderActivity;->shouldScrollToTop:Z

    .line 410
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 411
    iget-object p1, p0, Lcom/amazon/article/reader/ArticleReaderActivity$8;->this$0:Lcom/amazon/article/reader/ArticleReaderActivity;

    invoke-static {p1}, Lcom/amazon/article/reader/ArticleReaderActivity;->access$400(Lcom/amazon/article/reader/ArticleReaderActivity;)Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object p1

    invoke-virtual {p1, v2, v2}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 416
    iget-object p1, p0, Lcom/amazon/article/reader/ArticleReaderActivity$8;->this$0:Lcom/amazon/article/reader/ArticleReaderActivity;

    invoke-static {p1}, Lcom/amazon/article/reader/ArticleReaderActivity;->access$500(Lcom/amazon/article/reader/ArticleReaderActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 417
    iget-object p1, p0, Lcom/amazon/article/reader/ArticleReaderActivity$8;->this$0:Lcom/amazon/article/reader/ArticleReaderActivity;

    invoke-static {p1}, Lcom/amazon/article/reader/ArticleReaderActivity;->access$600(Lcom/amazon/article/reader/ArticleReaderActivity;)V

    const/4 p1, 0x1

    return p1

    .line 420
    :cond_0
    iget-object p1, p0, Lcom/amazon/article/reader/ArticleReaderActivity$8;->this$0:Lcom/amazon/article/reader/ArticleReaderActivity;

    invoke-static {p1}, Lcom/amazon/article/reader/ArticleReaderActivity;->access$700(Lcom/amazon/article/reader/ArticleReaderActivity;)V

    .line 421
    iget-object p1, p0, Lcom/amazon/article/reader/ArticleReaderActivity$8;->this$0:Lcom/amazon/article/reader/ArticleReaderActivity;

    invoke-static {p1}, Lcom/amazon/article/reader/ArticleReaderActivity;->access$800(Lcom/amazon/article/reader/ArticleReaderActivity;)Landroid/widget/Button;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    return p2
.end method
