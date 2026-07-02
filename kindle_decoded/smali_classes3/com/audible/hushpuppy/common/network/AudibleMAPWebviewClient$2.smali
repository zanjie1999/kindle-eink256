.class Lcom/audible/hushpuppy/common/network/AudibleMAPWebviewClient$2;
.super Ljava/lang/Object;
.source "AudibleMAPWebviewClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/common/network/AudibleMAPWebviewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/hushpuppy/common/network/AudibleMAPWebviewClient;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/common/network/AudibleMAPWebviewClient;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/audible/hushpuppy/common/network/AudibleMAPWebviewClient$2;->this$0:Lcom/audible/hushpuppy/common/network/AudibleMAPWebviewClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/audible/hushpuppy/common/network/AudibleMAPWebviewClient$2;->this$0:Lcom/audible/hushpuppy/common/network/AudibleMAPWebviewClient;

    invoke-static {v0}, Lcom/audible/hushpuppy/common/network/AudibleMAPWebviewClient;->access$000(Lcom/audible/hushpuppy/common/network/AudibleMAPWebviewClient;)Lcom/audible/hushpuppy/common/network/WebviewLoadingView;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/network/WebviewLoadingView;->dismissLoadingState()V

    return-void
.end method
