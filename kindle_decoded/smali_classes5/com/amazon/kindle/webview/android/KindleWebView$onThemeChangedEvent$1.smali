.class final Lcom/amazon/kindle/webview/android/KindleWebView$onThemeChangedEvent$1;
.super Ljava/lang/Object;
.source "KindleWebView.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/webview/android/KindleWebView;->onThemeChangedEvent(Lcom/amazon/kindle/krx/events/ThemeChangedEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/webview/android/KindleWebView;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/webview/android/KindleWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/webview/android/KindleWebView$onThemeChangedEvent$1;->this$0:Lcom/amazon/kindle/webview/android/KindleWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 127
    iget-object v0, p0, Lcom/amazon/kindle/webview/android/KindleWebView$onThemeChangedEvent$1;->this$0:Lcom/amazon/kindle/webview/android/KindleWebView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/amazon/kindle/webview/android/KindleWebView;->loadWebPage$default(Lcom/amazon/kindle/webview/android/KindleWebView;ZILjava/lang/Object;)V

    return-void
.end method
