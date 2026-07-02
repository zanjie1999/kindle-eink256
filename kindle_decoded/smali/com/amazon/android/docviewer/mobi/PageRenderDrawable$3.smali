.class Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$3;
.super Ljava/lang/Object;
.source "PageRenderDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->render(Lcom/amazon/android/docviewer/mobi/IPageProvider;Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$Listener;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$renderElementReadyListener:Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$Listener;

.field final synthetic val$renderPageId:I


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$Listener;I)V
    .locals 0

    .line 417
    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$3;->val$renderElementReadyListener:Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$Listener;

    iput p3, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$3;->val$renderPageId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 420
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$3;->val$renderElementReadyListener:Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$Listener;

    iget v1, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$3;->val$renderPageId:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$Listener;->onRenderElementReady(IZ)V

    return-void
.end method
