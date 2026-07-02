.class Lcom/amazon/kcp/reader/ImageZoomActivity$1;
.super Ljava/lang/Object;
.source "ImageZoomActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ImageZoomActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ImageZoomActivity;

.field final synthetic val$book:Lcom/amazon/android/docviewer/KindleDocViewer;

.field final synthetic val$imagePositionId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ImageZoomActivity;Lcom/amazon/android/docviewer/KindleDocViewer;Ljava/lang/String;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/amazon/kcp/reader/ImageZoomActivity$1;->this$0:Lcom/amazon/kcp/reader/ImageZoomActivity;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ImageZoomActivity$1;->val$book:Lcom/amazon/android/docviewer/KindleDocViewer;

    iput-object p3, p0, Lcom/amazon/kcp/reader/ImageZoomActivity$1;->val$imagePositionId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/amazon/kcp/reader/ImageZoomActivity$1;->this$0:Lcom/amazon/kcp/reader/ImageZoomActivity;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ImageZoomActivity$1;->val$book:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/reader/ImageZoomActivity$1;->val$imagePositionId:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/amazon/android/docviewer/KindleDoc;->getImageFromImageId(Ljava/lang/String;)Lcom/amazon/android/docviewer/ImageProvider;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kcp/reader/ImageZoomActivity;->access$002(Lcom/amazon/kcp/reader/ImageZoomActivity;Lcom/amazon/android/docviewer/ImageProvider;)Lcom/amazon/android/docviewer/ImageProvider;

    return-void
.end method
