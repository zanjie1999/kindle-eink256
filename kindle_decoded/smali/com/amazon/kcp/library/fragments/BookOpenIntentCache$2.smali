.class Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$2;
.super Ljava/lang/Object;
.source "BookOpenIntentCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;->getDocViewer(Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/amazon/android/docviewer/KindleDocViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;

.field final synthetic val$docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field final synthetic val$initDocViewJobLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;Lcom/amazon/android/docviewer/KindleDocViewer;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$2;->this$0:Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;

    iput-object p2, p0, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$2;->val$docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    iput-object p3, p0, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$2;->val$initDocViewJobLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$2;->this$0:Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$2;->val$docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-static {v0, v1}, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;->access$200(Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;Lcom/amazon/android/docviewer/KindleDocViewer;)V

    .line 243
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$2;->val$initDocViewJobLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
