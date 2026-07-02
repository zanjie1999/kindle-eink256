.class Lcom/amazon/krf/internal/KRFGLESView$1;
.super Ljava/lang/Object;
.source "KRFGLESView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/krf/internal/KRFGLESView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/krf/internal/KRFGLESView;


# direct methods
.method constructor <init>(Lcom/amazon/krf/internal/KRFGLESView;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/amazon/krf/internal/KRFGLESView$1;->this$0:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 242
    iget-object p1, p0, Lcom/amazon/krf/internal/KRFGLESView$1;->this$0:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-static {p1}, Lcom/amazon/krf/internal/KRFGLESView;->access$000(Lcom/amazon/krf/internal/KRFGLESView;)Lcom/amazon/krf/internal/input/InputEventDetector;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/amazon/krf/internal/input/InputEventDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
