.class Lcom/amazon/kindle/pagecurl/TouchEventHandler$1;
.super Ljava/lang/Object;
.source "TouchEventHandler.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/pagecurl/TouchEventHandler;->onTouch(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/pagecurl/TouchEventHandler;

.field final synthetic val$me:Landroid/view/MotionEvent;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/pagecurl/TouchEventHandler;Landroid/view/MotionEvent;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/amazon/kindle/pagecurl/TouchEventHandler$1;->this$0:Lcom/amazon/kindle/pagecurl/TouchEventHandler;

    iput-object p2, p0, Lcom/amazon/kindle/pagecurl/TouchEventHandler$1;->val$me:Landroid/view/MotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/TouchEventHandler$1;->this$0:Lcom/amazon/kindle/pagecurl/TouchEventHandler;

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/TouchEventHandler;->access$000(Lcom/amazon/kindle/pagecurl/TouchEventHandler;)Lcom/amazon/kindle/pagecurl/CurlView;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/TouchEventHandler$1;->val$me:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/pagecurl/CurlView;->computeTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17
    invoke-virtual {p0}, Lcom/amazon/kindle/pagecurl/TouchEventHandler$1;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
