.class final Lcom/amazon/kcp/home/widget/OldWebViewWidget$initWebView$webView$1$1;
.super Ljava/lang/Object;
.source "OldWebViewWidget.kt"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/widget/OldWebViewWidget;->initWebView()Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/home/widget/OldWebViewWidget$initWebView$webView$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$initWebView$webView$1$1;

    invoke-direct {v0}, Lcom/amazon/kcp/home/widget/OldWebViewWidget$initWebView$webView$1$1;-><init>()V

    sput-object v0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$initWebView$webView$1$1;->INSTANCE:Lcom/amazon/kcp/home/widget/OldWebViewWidget$initWebView$webView$1$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
