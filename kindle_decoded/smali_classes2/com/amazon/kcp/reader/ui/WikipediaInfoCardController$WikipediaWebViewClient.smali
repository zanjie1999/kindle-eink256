.class Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$WikipediaWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "WikipediaInfoCardController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WikipediaWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;


# direct methods
.method private constructor <init>(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$WikipediaWebViewClient;->this$0:Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$1;)V
    .locals 0

    .line 320
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$WikipediaWebViewClient;-><init>(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 355
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$WikipediaWebViewClient;->this$0:Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;

    .line 356
    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;->access$100(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;)Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->showWikipediaContent()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    .line 323
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$WikipediaWebViewClient;->this$0:Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;

    .line 324
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 326
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wiki"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "HyperlinkClick"

    if-nez v0, :cond_0

    .line 328
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 330
    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;->access$100(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;)Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 331
    invoke-static {v2}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->emitMetric(Ljava/lang/String;)V

    return v1

    .line 341
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 342
    invoke-virtual {p2}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 343
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 344
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 347
    :cond_1
    invoke-virtual {p1, v0}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;->loadQuery(Ljava/lang/String;)V

    .line 349
    invoke-static {v2}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->emitMetric(Ljava/lang/String;)V

    return v1
.end method
