.class Lcom/amazon/e3oseventhandler/WebViewEventHandler$1;
.super Ljava/lang/Object;
.source "WebViewEventHandler.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/e3oseventhandler/WebViewEventHandler;->handleScrollUsingJavaScript(Ljava/lang/String;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/e3oseventhandler/WebViewEventHandler;


# direct methods
.method constructor <init>(Lcom/amazon/e3oseventhandler/WebViewEventHandler;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/amazon/e3oseventhandler/WebViewEventHandler$1;->this$0:Lcom/amazon/e3oseventhandler/WebViewEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .line 168
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/amazon/e3oseventhandler/WebViewEventHandler$1;->onReceiveValue(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveValue(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    const-string/jumbo v0, "true"

    .line 171
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/WebViewEventHandler$1;->this$0:Lcom/amazon/e3oseventhandler/WebViewEventHandler;

    invoke-static {p1}, Lcom/amazon/e3oseventhandler/WebViewEventHandler;->access$100(Lcom/amazon/e3oseventhandler/WebViewEventHandler;)V

    return-void

    .line 172
    :cond_1
    :goto_0
    invoke-static {}, Lcom/amazon/e3oseventhandler/WebViewEventHandler;->access$000()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JS Scroll doesn\'t happened as result is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method
