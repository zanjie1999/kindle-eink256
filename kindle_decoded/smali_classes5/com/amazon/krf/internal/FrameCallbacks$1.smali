.class Lcom/amazon/krf/internal/FrameCallbacks$1;
.super Ljava/lang/Object;
.source "KRFGLESView.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/krf/internal/FrameCallbacks;-><init>(Lcom/amazon/krf/internal/KRFGLESView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/krf/internal/FrameCallbacks;


# direct methods
.method constructor <init>(Lcom/amazon/krf/internal/FrameCallbacks;)V
    .locals 0

    .line 1135
    iput-object p1, p0, Lcom/amazon/krf/internal/FrameCallbacks$1;->this$0:Lcom/amazon/krf/internal/FrameCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 2

    .line 1138
    iget-object v0, p0, Lcom/amazon/krf/internal/FrameCallbacks$1;->this$0:Lcom/amazon/krf/internal/FrameCallbacks;

    invoke-static {v0}, Lcom/amazon/krf/internal/FrameCallbacks;->access$000(Lcom/amazon/krf/internal/FrameCallbacks;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1139
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/krf/internal/FrameCallbacks$1;->this$0:Lcom/amazon/krf/internal/FrameCallbacks;

    invoke-static {v1}, Lcom/amazon/krf/internal/FrameCallbacks;->access$100(Lcom/amazon/krf/internal/FrameCallbacks;)Landroid/view/Choreographer$FrameCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 1140
    iget-object v0, p0, Lcom/amazon/krf/internal/FrameCallbacks$1;->this$0:Lcom/amazon/krf/internal/FrameCallbacks;

    invoke-static {v0}, Lcom/amazon/krf/internal/FrameCallbacks;->access$200(Lcom/amazon/krf/internal/FrameCallbacks;)Lcom/amazon/krf/internal/KRFGLESView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/amazon/krf/internal/KRFGLESView;->nativeDoFrame(J)V

    :cond_0
    return-void
.end method
