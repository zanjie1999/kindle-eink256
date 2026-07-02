.class Lcom/amazon/android/docviewer/mobi/MobiDocViewer$2;
.super Ljava/lang/Object;
.source "MobiDocViewer.java"

# interfaces
.implements Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->renderFirstPage()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;)V
    .locals 0

    .line 514
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$2;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRenderElementInvalidated(I)V
    .locals 0

    return-void
.end method

.method public onRenderElementReady(IZ)V
    .locals 0

    .line 518
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$2;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    iget-object p1, p1, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_docView:Lcom/amazon/android/docviewer/mobi/MobiView;

    if-eqz p1, :cond_0

    .line 519
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/MobiView;->refresh()V

    :cond_0
    return-void
.end method
