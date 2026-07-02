.class Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator$1;
.super Ljava/lang/Object;
.source "AnimatedTextViewDelegator.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator;-><init>(Lcom/amazon/android/docviewer/mobi/PageDrawable;Lcom/amazon/android/docviewer/mobi/PageDrawable;Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator$1;->this$0:Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator$1;->this$0:Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator;->access$000(Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator;)Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator$1;->this$0:Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator;->access$000(Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator;)Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->getAsyncHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p2, p1, p3, p4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator$1;->this$0:Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator;->access$000(Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator;)Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->getAsyncHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method
