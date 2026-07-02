.class Lcom/amazon/android/docviewer/mobi/RenderedDocument$8;
.super Ljava/lang/Object;
.source "RenderedDocument.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/mobi/RenderedDocument;->navigateToPrevPage(Lcom/amazon/foundation/internal/IBooleanCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

.field final synthetic val$resultCallback:Lcom/amazon/foundation/internal/IBooleanCallback;

.field final synthetic val$success:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/RenderedDocument;Lcom/amazon/foundation/internal/IBooleanCallback;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .line 355
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$8;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$8;->val$resultCallback:Lcom/amazon/foundation/internal/IBooleanCallback;

    iput-object p3, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$8;->val$success:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 358
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$8;->val$resultCallback:Lcom/amazon/foundation/internal/IBooleanCallback;

    if-eqz v0, :cond_0

    .line 359
    invoke-static {}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->access$700()Ljava/lang/String;

    .line 360
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$8;->val$resultCallback:Lcom/amazon/foundation/internal/IBooleanCallback;

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$8;->val$success:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IBooleanCallback;->execute(Z)V

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$8;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$8;->val$success:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->access$1000(Lcom/amazon/android/docviewer/mobi/RenderedDocument;Z)V

    return-void
.end method
