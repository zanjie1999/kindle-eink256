.class Lcom/amazon/kcp/application/WebViewSSLErrorHandler$1;
.super Ljava/lang/Object;
.source "WebViewSSLErrorHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/application/WebViewSSLErrorHandler;->handleWebViewSSLError()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/WebViewSSLErrorHandler;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 74
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
