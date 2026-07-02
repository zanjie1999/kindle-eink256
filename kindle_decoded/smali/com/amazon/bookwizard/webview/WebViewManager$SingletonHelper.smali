.class Lcom/amazon/bookwizard/webview/WebViewManager$SingletonHelper;
.super Ljava/lang/Object;
.source "WebViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/bookwizard/webview/WebViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHelper"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/amazon/bookwizard/webview/WebViewManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Lcom/amazon/bookwizard/webview/WebViewManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/bookwizard/webview/WebViewManager;-><init>(Lcom/amazon/bookwizard/webview/WebViewManager$1;)V

    sput-object v0, Lcom/amazon/bookwizard/webview/WebViewManager$SingletonHelper;->INSTANCE:Lcom/amazon/bookwizard/webview/WebViewManager;

    return-void
.end method

.method static synthetic access$100()Lcom/amazon/bookwizard/webview/WebViewManager;
    .locals 1

    .line 32
    sget-object v0, Lcom/amazon/bookwizard/webview/WebViewManager$SingletonHelper;->INSTANCE:Lcom/amazon/bookwizard/webview/WebViewManager;

    return-object v0
.end method
