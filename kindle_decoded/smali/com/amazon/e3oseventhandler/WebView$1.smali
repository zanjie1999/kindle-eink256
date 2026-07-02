.class Lcom/amazon/e3oseventhandler/WebView$1;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/e3oseventhandler/WebView;->handleScrollUsingJavaScript(Landroid/view/MotionEvent;Landroid/webkit/WebView;)Z
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
.field final synthetic this$0:Lcom/amazon/e3oseventhandler/WebView;


# direct methods
.method constructor <init>(Lcom/amazon/e3oseventhandler/WebView;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/amazon/e3oseventhandler/WebView$1;->this$0:Lcom/amazon/e3oseventhandler/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .line 156
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/amazon/e3oseventhandler/WebView$1;->onReceiveValue(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveValue(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_2

    const-string/jumbo v0, "true"

    .line 159
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 163
    :cond_0
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/WebView$1;->this$0:Lcom/amazon/e3oseventhandler/WebView;

    invoke-static {p1}, Lcom/amazon/e3oseventhandler/WebView;->access$000(Lcom/amazon/e3oseventhandler/WebView;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 164
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/WebView$1;->this$0:Lcom/amazon/e3oseventhandler/WebView;

    invoke-static {p1}, Lcom/amazon/e3oseventhandler/WebView;->access$000(Lcom/amazon/e3oseventhandler/WebView;)Landroid/os/Bundle;

    move-result-object p1

    sget-object v0, Lcom/amazon/e3oseventhandler/AbstractInteractionHandler$GestureType;->SCROLL:Lcom/amazon/e3oseventhandler/AbstractInteractionHandler$GestureType;

    invoke-virtual {v0}, Lcom/amazon/e3oseventhandler/AbstractInteractionHandler$GestureType;->getmId()I

    move-result v0

    int-to-float v0, v0

    const-string v1, "Last-Gesture"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    :cond_1
    return-void

    .line 160
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scroll doesn\'t happened as result is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method
