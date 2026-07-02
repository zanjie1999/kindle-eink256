.class Lcom/amazon/android/docviewer/mobi/PageDrawable$1;
.super Ljava/lang/Object;
.source "PageDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/mobi/PageDrawable;-><init>(Landroid/content/Context;Lcom/amazon/android/docviewer/mobi/MobiDocViewer;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/mobi/PageDrawable;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/PageDrawable;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable$1;->this$0:Lcom/amazon/android/docviewer/mobi/PageDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 163
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable$1;->this$0:Lcom/amazon/android/docviewer/mobi/PageDrawable;

    invoke-static {p1}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->access$000(Lcom/amazon/android/docviewer/mobi/PageDrawable;)Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable$1;->this$0:Lcom/amazon/android/docviewer/mobi/PageDrawable;

    invoke-interface {p1, v0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1

    .line 168
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable$1;->this$0:Lcom/amazon/android/docviewer/mobi/PageDrawable;

    invoke-static {p1}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->access$000(Lcom/amazon/android/docviewer/mobi/PageDrawable;)Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable$1;->this$0:Lcom/amazon/android/docviewer/mobi/PageDrawable;

    invoke-interface {p1, v0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1

    .line 173
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable$1;->this$0:Lcom/amazon/android/docviewer/mobi/PageDrawable;

    invoke-static {p1}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->access$000(Lcom/amazon/android/docviewer/mobi/PageDrawable;)Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable$1;->this$0:Lcom/amazon/android/docviewer/mobi/PageDrawable;

    invoke-interface {p1, v0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    return-void
.end method
