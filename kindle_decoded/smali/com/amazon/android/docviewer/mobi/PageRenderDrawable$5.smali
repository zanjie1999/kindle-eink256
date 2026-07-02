.class Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$5;
.super Ljava/lang/Object;
.source "PageRenderDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->notifyOnRenderElementInvalidated(Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$Listener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$pageId:I

.field final synthetic val$renderElementReadyListener:Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$Listener;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$Listener;I)V
    .locals 0

    .line 449
    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$5;->val$renderElementReadyListener:Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$Listener;

    iput p3, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$5;->val$pageId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 451
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$5;->val$renderElementReadyListener:Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$Listener;

    iget v1, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$5;->val$pageId:I

    invoke-interface {v0, v1}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$Listener;->onRenderElementInvalidated(I)V

    return-void
.end method
