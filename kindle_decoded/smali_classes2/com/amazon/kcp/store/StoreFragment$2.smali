.class Lcom/amazon/kcp/store/StoreFragment$2;
.super Ljava/lang/Object;
.source "StoreFragment.java"

# interfaces
.implements Lcom/amazon/kcp/store/IWebViewJSWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/store/StoreFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/store/StoreFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/store/StoreFragment;)V
    .locals 0

    .line 417
    iput-object p1, p0, Lcom/amazon/kcp/store/StoreFragment$2;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;)V
    .locals 3

    .line 420
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment$2;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v1}, Lcom/amazon/kcp/store/StoreFragment;->onJsWrapper(Ljava/lang/String;ZLjava/lang/String;Z)V

    return-void
.end method

.method public execute(Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 426
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment$2;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    invoke-static {v0, p3}, Lcom/amazon/kcp/store/StoreFragment;->access$002(Lcom/amazon/kcp/store/StoreFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 427
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment$2;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    invoke-static {v0, p1}, Lcom/amazon/kcp/store/StoreFragment;->access$102(Lcom/amazon/kcp/store/StoreFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment$2;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/amazon/kcp/store/StoreFragment;->onJsWrapper(Ljava/lang/String;ZLjava/lang/String;Z)V

    return-void
.end method
