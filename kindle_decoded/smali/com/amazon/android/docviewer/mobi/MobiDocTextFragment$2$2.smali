.class Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2$2;
.super Ljava/lang/Object;
.source "MobiDocTextFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2;->handleAction(Lcom/amazon/android/docviewer/IObjectSelector$UserAction;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2;)V
    .locals 0

    .line 617
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2$2;->this$1:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 620
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2$2;->this$1:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2;

    iget-object v0, v0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    iget-object v0, v0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_pageRenderDrawables:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    if-eqz v0, :cond_0

    .line 621
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->refreshCurrentPage()V

    .line 622
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2$2;->this$1:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2;

    iget-object v0, v0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    iget-object v0, v0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_pageRenderDrawables:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->setInToggleOffTransient(Z)V

    :cond_0
    return-void
.end method
