.class Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$4;
.super Ljava/lang/Object;
.source "PageRenderDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->notifyOnRenderElementReady(Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$Listener;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$pageId:I

.field final synthetic val$renderElementReadyListener:Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$Listener;

.field final synthetic val$swapped:Z


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$Listener;IZ)V
    .locals 0

    .line 435
    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$4;->val$renderElementReadyListener:Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$Listener;

    iput p3, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$4;->val$pageId:I

    iput-boolean p4, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$4;->val$swapped:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 439
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$4;->val$renderElementReadyListener:Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$Listener;

    iget v1, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$4;->val$pageId:I

    iget-boolean v2, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$4;->val$swapped:Z

    invoke-interface {v0, v1, v2}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$Listener;->onRenderElementReady(IZ)V

    return-void
.end method
