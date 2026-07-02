.class Lcom/amazon/android/docviewer/mobi/RenderedDocument$41$1;
.super Ljava/lang/Object;
.source "RenderedDocument.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/mobi/RenderedDocument$41;->execute(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/android/docviewer/mobi/RenderedDocument$41;

.field final synthetic val$audioId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/RenderedDocument$41;Ljava/lang/String;)V
    .locals 0

    .line 1104
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$41$1;->this$1:Lcom/amazon/android/docviewer/mobi/RenderedDocument$41;

    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$41$1;->val$audioId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1107
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$41$1;->this$1:Lcom/amazon/android/docviewer/mobi/RenderedDocument$41;

    iget-object v0, v0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$41;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    iget-object v0, v0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_renderedDocListener:Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;

    if-eqz v0, :cond_0

    .line 1108
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$41$1;->val$audioId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;->onAudioAreaActivated(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
