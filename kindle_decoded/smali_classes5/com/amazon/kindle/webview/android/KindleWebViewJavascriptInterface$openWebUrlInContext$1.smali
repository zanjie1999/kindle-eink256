.class final Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$openWebUrlInContext$1;
.super Ljava/lang/Object;
.source "KindleWebViewJavascriptInterface.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface;->openWebUrlInContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/ui/ScreenletContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKindleWebViewJavascriptInterface.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KindleWebViewJavascriptInterface.kt\ncom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$openWebUrlInContext$1\n*L\n1#1,222:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $refTag:Ljava/lang/String;

.field final synthetic $screenletContext:Lcom/amazon/kindle/krx/ui/ScreenletContext;

.field final synthetic $url:Ljava/lang/String;

.field final synthetic $viewTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/ui/ScreenletContext;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$openWebUrlInContext$1;->this$0:Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface;

    iput-object p2, p0, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$openWebUrlInContext$1;->$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$openWebUrlInContext$1;->$viewTitle:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$openWebUrlInContext$1;->$refTag:Ljava/lang/String;

    iput-object p5, p0, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$openWebUrlInContext$1;->$screenletContext:Lcom/amazon/kindle/krx/ui/ScreenletContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$openWebUrlInContext$1;->$url:Ljava/lang/String;

    .line 65
    iget-object v1, p0, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$openWebUrlInContext$1;->$viewTitle:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 66
    iget-object v0, p0, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$openWebUrlInContext$1;->$url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$openWebUrlInContext$1;->$viewTitle:Ljava/lang/String;

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Uri.parse(url)\n         \u2026              .toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    :cond_1
    const-class v1, Lcom/amazon/kindle/store/StoreOpenerFactory;

    invoke-static {v1}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/store/StoreOpenerFactory;

    if-eqz v1, :cond_2

    .line 72
    iget-object v2, p0, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$openWebUrlInContext$1;->this$0:Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface;

    invoke-static {v2}, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface;->access$getSdk$p(Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/amazon/kindle/store/StoreOpenerFactory;->createUrlOpener(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$openWebUrlInContext$1;->$refTag:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/store/StoreOpener;->setReferralTag(Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$openWebUrlInContext$1;->$screenletContext:Lcom/amazon/kindle/krx/ui/ScreenletContext;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/store/StoreOpener;->setScreenletContext(Lcom/amazon/kindle/krx/ui/ScreenletContext;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object v0

    .line 75
    invoke-interface {v0}, Lcom/amazon/kindle/store/StoreOpener;->execute()V

    :cond_2
    return-void
.end method
