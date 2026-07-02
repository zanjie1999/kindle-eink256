.class Lcom/amazon/kcp/store/BrowserHost$1;
.super Ljava/lang/Object;
.source "BrowserHost.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/store/BrowserHost;->TOSOpened()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/store/BrowserHost;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/store/BrowserHost;)V
    .locals 0

    .line 777
    iput-object p1, p0, Lcom/amazon/kcp/store/BrowserHost$1;->this$0:Lcom/amazon/kcp/store/BrowserHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 780
    iget-object v0, p0, Lcom/amazon/kcp/store/BrowserHost$1;->this$0:Lcom/amazon/kcp/store/BrowserHost;

    invoke-static {v0}, Lcom/amazon/kcp/store/BrowserHost;->access$100(Lcom/amazon/kcp/store/BrowserHost;)Lcom/amazon/kcp/store/listener/StoreInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/store/listener/StoreInterface;->onTosOpened()V

    return-void
.end method
