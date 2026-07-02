.class Lcom/amazon/android/docviewer/mobi/MobiDocViewer$7;
.super Ljava/lang/Object;
.source "MobiDocViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->attachResourceContainer(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

.field final synthetic val$filePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;Ljava/lang/String;)V
    .locals 0

    .line 2144
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$7;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$7;->val$filePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2147
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$7;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    iget-object v0, v0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_document:Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$7;->val$filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->attachResourceContainer(Ljava/lang/String;)Z

    return-void
.end method
