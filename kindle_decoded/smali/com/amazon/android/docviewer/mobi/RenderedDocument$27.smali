.class Lcom/amazon/android/docviewer/mobi/RenderedDocument$27;
.super Ljava/lang/Object;
.source "RenderedDocument.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/mobi/RenderedDocument;->navigateToAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

.field final synthetic val$success:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/RenderedDocument;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .line 647
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$27;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$27;->val$success:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 650
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$27;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$27;->val$success:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->access$1400(Lcom/amazon/android/docviewer/mobi/RenderedDocument;Z)V

    return-void
.end method
