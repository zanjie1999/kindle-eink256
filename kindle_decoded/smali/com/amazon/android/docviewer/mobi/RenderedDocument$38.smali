.class Lcom/amazon/android/docviewer/mobi/RenderedDocument$38;
.super Ljava/lang/Object;
.source "RenderedDocument.java"

# interfaces
.implements Lcom/amazon/android/docviewer/mobi/IActiveAreaSelectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/mobi/RenderedDocument;
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

    .line 1041
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$38;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActiveAreaSelection(Lcom/amazon/kindle/krf/KRF/ReaderExtensions/IActiveArea;)V
    .locals 1

    .line 1044
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$38;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    iget-object v0, v0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_renderedDocListener:Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;

    if-eqz v0, :cond_0

    .line 1045
    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;->onMobiActiveAreaSelection(Lcom/amazon/kindle/krf/KRF/ReaderExtensions/IActiveArea;)V

    :cond_0
    return-void
.end method
