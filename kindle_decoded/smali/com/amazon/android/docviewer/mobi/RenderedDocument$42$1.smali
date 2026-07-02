.class Lcom/amazon/android/docviewer/mobi/RenderedDocument$42$1;
.super Ljava/lang/Object;
.source "RenderedDocument.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/mobi/RenderedDocument$42;->execute(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/android/docviewer/mobi/RenderedDocument$42;

.field final synthetic val$videoId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/RenderedDocument$42;Ljava/lang/String;)V
    .locals 0

    .line 1118
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$42$1;->this$1:Lcom/amazon/android/docviewer/mobi/RenderedDocument$42;

    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$42$1;->val$videoId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1121
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$42$1;->this$1:Lcom/amazon/android/docviewer/mobi/RenderedDocument$42;

    iget-object v0, v0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$42;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    iget-object v0, v0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_renderedDocListener:Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;

    if-eqz v0, :cond_0

    .line 1122
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$42$1;->val$videoId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;->onVideoAreaActivated(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
