.class Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2$4;
.super Ljava/lang/Object;
.source "MobiDocTextFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2;->handleFallbackAction(Lcom/amazon/android/docviewer/IObjectSelector$UserAction;)Z
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

    .line 655
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2$4;->this$1:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 658
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2$4;->this$1:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2;

    iget-object v0, v0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    iget-object v0, v0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_pageRenderDrawables:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    if-eqz v0, :cond_0

    .line 659
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->refreshCurrentPage()V

    :cond_0
    return-void
.end method
