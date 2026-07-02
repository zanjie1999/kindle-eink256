.class Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2$6;
.super Ljava/lang/Object;
.source "MobiDocTextFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2;->getTaskCompleteCallbackForActiveAreaType(Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;J)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2;

.field final synthetic val$krfTask:Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2;Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;)V
    .locals 0

    .line 721
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2$6;->this$1:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2;

    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2$6;->val$krfTask:Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 724
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2$6;->this$1:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2;

    iget-object v0, v0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$700(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;->onMobiPositionChanged(IZ)V

    .line 725
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2$6;->this$1:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2;

    iget-object v0, v0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$800(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2$6;->val$krfTask:Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
