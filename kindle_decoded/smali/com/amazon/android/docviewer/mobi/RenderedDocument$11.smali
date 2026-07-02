.class Lcom/amazon/android/docviewer/mobi/RenderedDocument$11;
.super Ljava/lang/Object;
.source "RenderedDocument.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/mobi/RenderedDocument;->clearBackHistory()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)V
    .locals 0

    .line 398
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$11;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 401
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$11;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->access$1500(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;->emptyHistory()V

    .line 402
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$11;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->access$1300(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)Lcom/amazon/android/docviewer/mobi/RenderedDocument$HistoryManagerInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$11;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    invoke-static {v1}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->access$1600(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$HistoryManagerInfo;->update(Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;)V

    return-void
.end method
