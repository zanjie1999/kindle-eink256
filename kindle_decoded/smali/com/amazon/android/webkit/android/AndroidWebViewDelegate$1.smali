.class Lcom/amazon/android/webkit/android/AndroidWebViewDelegate$1;
.super Landroid/webkit/WebView;
.source "AndroidWebViewDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;-><init>(Lcom/amazon/android/webkit/AmazonWebView;ILjava/util/concurrent/atomic/AtomicReference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;


# direct methods
.method constructor <init>(Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;Landroid/content/Context;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate$1;->this$0:Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;

    invoke-direct {p0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate$1;->this$0:Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;

    invoke-static {v0, p1, p2}, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->access$200(Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;II)V

    .line 134
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate$1;->this$0:Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;

    invoke-static {v0, p1}, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->access$300(Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public overScrollBy(IIIIIIIIZ)Z
    .locals 11

    move-object v0, p0

    .line 120
    iget-object v1, v0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate$1;->this$0:Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-static/range {v1 .. v10}, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->access$000(Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;IIIIIIIIZ)V

    .line 125
    iget-object v1, v0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate$1;->this$0:Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;

    invoke-static {v1, p1, p2, p3, p4}, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->access$100(Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;IIII)V

    .line 128
    invoke-super/range {p0 .. p9}, Landroid/webkit/WebView;->overScrollBy(IIIIIIIIZ)Z

    move-result v1

    return v1
.end method
