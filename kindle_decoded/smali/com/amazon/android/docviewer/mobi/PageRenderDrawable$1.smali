.class Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$1;
.super Ljava/lang/Object;
.source "PageRenderDrawable.java"

# interfaces
.implements Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->refresh(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

.field final synthetic val$preRenderTask:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;Ljava/lang/Runnable;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$1;->this$0:Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$1;->val$preRenderTask:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRenderElementInvalidated(I)V
    .locals 0

    return-void
.end method

.method public onRenderElementReady(IZ)V
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$1;->this$0:Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    iget-object v0, v0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->m_renderElementReadyListener:Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$Listener;

    invoke-interface {v0, p1, p2}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$Listener;->onRenderElementReady(IZ)V

    .line 254
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$1;->this$0:Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    invoke-static {p1}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->access$000(Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$1;->val$preRenderTask:Ljava/lang/Runnable;

    const-wide/16 v0, 0x32

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
