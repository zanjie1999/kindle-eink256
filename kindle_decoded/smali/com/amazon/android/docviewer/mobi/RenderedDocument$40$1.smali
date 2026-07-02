.class Lcom/amazon/android/docviewer/mobi/RenderedDocument$40$1;
.super Ljava/lang/Object;
.source "RenderedDocument.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/mobi/RenderedDocument$40;->execute(Lcom/amazon/kindle/krf/KRF/Reader/Position;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/android/docviewer/mobi/RenderedDocument$40;

.field final synthetic val$elementId:Lcom/amazon/kindle/krf/KRF/Reader/Position;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/RenderedDocument$40;Lcom/amazon/kindle/krf/KRF/Reader/Position;)V
    .locals 0

    .line 1089
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$40$1;->this$1:Lcom/amazon/android/docviewer/mobi/RenderedDocument$40;

    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$40$1;->val$elementId:Lcom/amazon/kindle/krf/KRF/Reader/Position;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1092
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$40$1;->this$1:Lcom/amazon/android/docviewer/mobi/RenderedDocument$40;

    iget-object v0, v0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$40;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    iget-object v0, v0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_renderedDocListener:Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;

    if-eqz v0, :cond_0

    .line 1093
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$40$1;->val$elementId:Lcom/amazon/kindle/krf/KRF/Reader/Position;

    invoke-interface {v0, v1}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;->onMobiActiveAreaToggled(Lcom/amazon/kindle/krf/KRF/Reader/Position;)V

    :cond_0
    return-void
.end method
