.class Lcom/amazon/kcp/store/listener/PostAuthScriptPageListener$1;
.super Ljava/lang/Object;
.source "PostAuthScriptPageListener.java"

# interfaces
.implements Lcom/amazon/foundation/IStringCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/store/listener/PostAuthScriptPageListener;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/store/listener/PostAuthScriptPageListener;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/store/listener/PostAuthScriptPageListener;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/amazon/kcp/store/listener/PostAuthScriptPageListener$1;->this$0:Lcom/amazon/kcp/store/listener/PostAuthScriptPageListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;)V
    .locals 3

    .line 76
    iget-object p1, p0, Lcom/amazon/kcp/store/listener/PostAuthScriptPageListener$1;->this$0:Lcom/amazon/kcp/store/listener/PostAuthScriptPageListener;

    invoke-static {p1}, Lcom/amazon/kcp/store/listener/PostAuthScriptPageListener;->access$000(Lcom/amazon/kcp/store/listener/PostAuthScriptPageListener;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 77
    iget-object p1, p0, Lcom/amazon/kcp/store/listener/PostAuthScriptPageListener$1;->this$0:Lcom/amazon/kcp/store/listener/PostAuthScriptPageListener;

    invoke-static {p1}, Lcom/amazon/kcp/store/listener/PostAuthScriptPageListener;->access$200(Lcom/amazon/kcp/store/listener/PostAuthScriptPageListener;)Lcom/amazon/kcp/store/listener/StoreInterface;

    move-result-object p1

    const/4 v0, 0x0

    new-instance v1, Lcom/amazon/kcp/store/listener/PostAuthScriptPageListener$FTUEPageListener;

    iget-object v2, p0, Lcom/amazon/kcp/store/listener/PostAuthScriptPageListener$1;->this$0:Lcom/amazon/kcp/store/listener/PostAuthScriptPageListener;

    invoke-static {v2}, Lcom/amazon/kcp/store/listener/PostAuthScriptPageListener;->access$100(Lcom/amazon/kcp/store/listener/PostAuthScriptPageListener;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/kcp/store/listener/PostAuthScriptPageListener$FTUEPageListener;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0, v1}, Lcom/amazon/kcp/store/listener/StoreInterface;->setPageListener(Ljava/lang/String;Lcom/amazon/kcp/store/listener/IPageListener;)V

    .line 78
    iget-object p1, p0, Lcom/amazon/kcp/store/listener/PostAuthScriptPageListener$1;->this$0:Lcom/amazon/kcp/store/listener/PostAuthScriptPageListener;

    invoke-static {p1}, Lcom/amazon/kcp/store/listener/PostAuthScriptPageListener;->access$300(Lcom/amazon/kcp/store/listener/PostAuthScriptPageListener;)V

    goto :goto_0

    .line 80
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/FTUELoadingActivity;->forceClose()V

    :goto_0
    return-void
.end method
