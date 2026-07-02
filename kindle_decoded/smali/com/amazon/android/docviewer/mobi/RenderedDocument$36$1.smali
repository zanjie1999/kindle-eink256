.class Lcom/amazon/android/docviewer/mobi/RenderedDocument$36$1;
.super Ljava/lang/Object;
.source "RenderedDocument.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/mobi/RenderedDocument$36;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/android/docviewer/mobi/RenderedDocument$36;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/RenderedDocument$36;)V
    .locals 0

    .line 1015
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$36$1;->this$1:Lcom/amazon/android/docviewer/mobi/RenderedDocument$36;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1018
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$36$1;->this$1:Lcom/amazon/android/docviewer/mobi/RenderedDocument$36;

    iget-object v0, v0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$36;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    iget-object v0, v0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_renderedDocListener:Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;

    if-eqz v0, :cond_0

    .line 1019
    invoke-interface {v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;->onMobiShowBookDetails()V

    :cond_0
    return-void
.end method
