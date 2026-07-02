.class Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient$1;
.super Ljava/lang/Object;
.source "StoreFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;Ljava/lang/String;)V
    .locals 0

    .line 740
    iput-object p1, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient$1;->this$1:Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;

    iput-object p2, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 743
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient$1;->this$1:Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;

    iget-object v0, v0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    iget-object v1, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient$1;->val$url:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/kcp/store/StoreFragment;->access$1200(Lcom/amazon/kcp/store/StoreFragment;Ljava/lang/String;)V

    return-void
.end method
