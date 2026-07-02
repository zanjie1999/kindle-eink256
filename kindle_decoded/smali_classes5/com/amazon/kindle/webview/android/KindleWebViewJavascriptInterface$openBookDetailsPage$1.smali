.class final Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$openBookDetailsPage$1;
.super Ljava/lang/Object;
.source "KindleWebViewJavascriptInterface.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface;->openBookDetailsPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKindleWebViewJavascriptInterface.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KindleWebViewJavascriptInterface.kt\ncom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$openBookDetailsPage$1\n*L\n1#1,222:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $asin:Ljava/lang/String;

.field final synthetic $contentTypeEnum:Lcom/amazon/kindle/krx/content/ContentType;

.field final synthetic $refTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface;Ljava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$openBookDetailsPage$1;->this$0:Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface;

    iput-object p2, p0, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$openBookDetailsPage$1;->$asin:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$openBookDetailsPage$1;->$contentTypeEnum:Lcom/amazon/kindle/krx/content/ContentType;

    iput-object p4, p0, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$openBookDetailsPage$1;->$refTag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 121
    const-class v0, Lcom/amazon/kindle/store/StoreOpenerFactory;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/store/StoreOpenerFactory;

    if-eqz v0, :cond_0

    .line 123
    iget-object v1, p0, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$openBookDetailsPage$1;->this$0:Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface;

    invoke-static {v1}, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface;->access$getSdk$p(Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 124
    iget-object v2, p0, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$openBookDetailsPage$1;->$asin:Ljava/lang/String;

    .line 125
    iget-object v3, p0, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$openBookDetailsPage$1;->$contentTypeEnum:Lcom/amazon/kindle/krx/content/ContentType;

    .line 122
    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/kindle/store/StoreOpenerFactory;->createBookDetailsOpener(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$openBookDetailsPage$1;->$refTag:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/store/StoreOpener;->setReferralTag(Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object v0

    .line 128
    invoke-interface {v0}, Lcom/amazon/kindle/store/StoreOpener;->execute()V

    :cond_0
    return-void
.end method
