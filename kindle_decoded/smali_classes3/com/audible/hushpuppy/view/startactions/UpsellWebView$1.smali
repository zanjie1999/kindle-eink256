.class Lcom/audible/hushpuppy/view/startactions/UpsellWebView$1;
.super Ljava/lang/Object;
.source "UpsellWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/view/startactions/UpsellWebView;->refresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/hushpuppy/view/startactions/UpsellWebView;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/view/startactions/UpsellWebView;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/audible/hushpuppy/view/startactions/UpsellWebView$1;->this$0:Lcom/audible/hushpuppy/view/startactions/UpsellWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/audible/hushpuppy/view/startactions/UpsellWebView$1;->this$0:Lcom/audible/hushpuppy/view/startactions/UpsellWebView;

    invoke-static {v0}, Lcom/audible/hushpuppy/view/startactions/UpsellWebView;->access$000(Lcom/audible/hushpuppy/view/startactions/UpsellWebView;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/view/startactions/UpsellWebView$1;->this$0:Lcom/audible/hushpuppy/view/startactions/UpsellWebView;

    invoke-static {v0}, Lcom/audible/hushpuppy/view/startactions/UpsellWebView;->access$100(Lcom/audible/hushpuppy/view/startactions/UpsellWebView;)V

    .line 183
    iget-object v0, p0, Lcom/audible/hushpuppy/view/startactions/UpsellWebView$1;->this$0:Lcom/audible/hushpuppy/view/startactions/UpsellWebView;

    invoke-static {v0}, Lcom/audible/hushpuppy/view/startactions/UpsellWebView;->access$200(Lcom/audible/hushpuppy/view/startactions/UpsellWebView;)V

    return-void
.end method
