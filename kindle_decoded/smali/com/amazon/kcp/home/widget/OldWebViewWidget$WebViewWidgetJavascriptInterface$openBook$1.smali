.class final Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$openBook$1;
.super Ljava/lang/Object;
.source "OldWebViewWidget.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface;->openBook(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $asin:Ljava/lang/String;

.field final synthetic $bookTypeEnum:Lcom/amazon/kcp/library/models/BookType;

.field final synthetic $refTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface;Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$openBook$1;->this$0:Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface;

    iput-object p2, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$openBook$1;->$asin:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$openBook$1;->$bookTypeEnum:Lcom/amazon/kcp/library/models/BookType;

    iput-object p4, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$openBook$1;->$refTag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 604
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$openBook$1;->this$0:Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface;->getHomeWidgetListener()Lcom/amazon/kindle/home/card/HomeWidgetListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$openBook$1;->$asin:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$openBook$1;->$bookTypeEnum:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v2}, Lcom/amazon/kcp/library/models/BookType;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v2

    const-string v3, "bookTypeEnum.contentType"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$openBook$1;->$refTag:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/kindle/home/card/HomeWidgetListener;->openBook(Ljava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
