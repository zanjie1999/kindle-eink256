.class Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$1;
.super Ljava/lang/Object;
.source "NewsstandDocViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;-><init>(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory$KindleDocumentProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

.field final synthetic val$local_book:Lcom/amazon/kindle/model/content/ILocalBookItem;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;Lcom/amazon/kindle/model/content/ILocalBookItem;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$1;->this$0:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$1;->val$local_book:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 181
    invoke-static {}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const-string/jumbo v2, "reportNewsstandOpenMetrics running in a separate thread."

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$1;->this$0:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$1;->val$local_book:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-static {v0, v1}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->access$100(Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;Lcom/amazon/kindle/model/content/ILocalBookItem;)V

    .line 183
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$1;->this$0:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->access$200(Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;)V

    return-void
.end method
