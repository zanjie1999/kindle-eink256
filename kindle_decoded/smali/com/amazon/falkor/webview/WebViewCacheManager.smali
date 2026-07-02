.class public interface abstract Lcom/amazon/falkor/webview/WebViewCacheManager;
.super Ljava/lang/Object;
.source "WebViewCacheManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/falkor/webview/WebViewCacheManager$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/falkor/webview/WebViewCacheManager$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/amazon/falkor/webview/WebViewCacheManager$Companion;->$$INSTANCE:Lcom/amazon/falkor/webview/WebViewCacheManager$Companion;

    sput-object v0, Lcom/amazon/falkor/webview/WebViewCacheManager;->Companion:Lcom/amazon/falkor/webview/WebViewCacheManager$Companion;

    return-void
.end method


# virtual methods
.method public abstract cleanUpDiscards(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
.end method

.method public abstract createWebView(Landroid/content/Context;Landroid/webkit/WebViewClient;Lcom/amazon/falkor/FalkorJSInterface;Ljava/lang/String;)Lcom/amazon/falkor/webview/RoundedWebview;
.end method

.method public abstract discardCache(Ljava/lang/String;)V
.end method

.method public abstract getWebView(Ljava/lang/String;)Lcom/amazon/falkor/webview/RoundedWebview;
.end method
