.class Lcom/amazon/krf/internal/KRFGLESView$2;
.super Ljava/lang/Object;
.source "KRFGLESView.java"

# interfaces
.implements Landroid/view/View$OnGenericMotionListener;


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

    .line 249
    iput-object p1, p0, Lcom/amazon/krf/internal/KRFGLESView$2;->this$0:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 254
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 256
    iget-object p1, p0, Lcom/amazon/krf/internal/KRFGLESView$2;->this$0:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-static {p1}, Lcom/amazon/krf/internal/KRFGLESView;->access$000(Lcom/amazon/krf/internal/KRFGLESView;)Lcom/amazon/krf/internal/input/InputEventDetector;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/amazon/krf/internal/input/InputEventDetector;->onScrollEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
