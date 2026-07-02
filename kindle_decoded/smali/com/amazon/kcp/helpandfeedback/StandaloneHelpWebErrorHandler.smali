.class public final Lcom/amazon/kcp/helpandfeedback/StandaloneHelpWebErrorHandler;
.super Ljava/lang/Object;
.source "StandaloneHelpWebErrorHandler.kt"

# interfaces
.implements Lcom/amazon/kcp/helpandfeedback/HelpWebErrorHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateWebViewState(Landroid/webkit/WebView;Lcom/amazon/kcp/helpandfeedback/WebViewState;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    instance-of p2, p2, Lcom/amazon/kcp/helpandfeedback/WebViewState$NetworkError;

    if-eqz p2, :cond_0

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method
