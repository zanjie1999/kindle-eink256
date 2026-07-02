.class Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray$4;
.super Ljava/lang/Object;
.source "PageRenderDrawableArray.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->reRenderAllPages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray$4;->this$0:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray$4;->this$0:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    iget-object v0, v0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->m_pages:[Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->refresh()V

    .line 257
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray$4;->this$0:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    iget-object v0, v0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->m_pages:[Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->refresh()V

    return-void
.end method
