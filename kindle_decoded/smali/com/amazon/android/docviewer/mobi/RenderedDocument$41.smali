.class Lcom/amazon/android/docviewer/mobi/RenderedDocument$41;
.super Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateStringArgCallback;
.source "RenderedDocument.java"


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

    .line 1101
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$41;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    invoke-direct {p0}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateStringArgCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;)V
    .locals 2

    .line 1104
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$41;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    iget-object v0, v0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_krfThread:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->getKRFCallbackHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/amazon/android/docviewer/mobi/RenderedDocument$41$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$41$1;-><init>(Lcom/amazon/android/docviewer/mobi/RenderedDocument$41;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
