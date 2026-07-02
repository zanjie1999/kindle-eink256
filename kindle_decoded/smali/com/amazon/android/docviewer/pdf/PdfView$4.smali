.class Lcom/amazon/android/docviewer/pdf/PdfView$4;
.super Ljava/lang/Object;
.source "PdfView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/pdf/PdfView;->dispatchDraw(Landroid/graphics/Canvas;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/pdf/PdfView;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/pdf/PdfView;)V
    .locals 0

    .line 1039
    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfView$4;->this$0:Lcom/amazon/android/docviewer/pdf/PdfView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1042
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView$4;->this$0:Lcom/amazon/android/docviewer/pdf/PdfView;

    invoke-static {v0}, Lcom/amazon/android/docviewer/pdf/PdfView;->access$700(Lcom/amazon/android/docviewer/pdf/PdfView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1043
    sget-object v0, Lcom/amazon/android/docviewer/pdf/PdfView;->TAG:Ljava/lang/String;

    .line 1044
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView$4;->this$0:Lcom/amazon/android/docviewer/pdf/PdfView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amazon/android/docviewer/pdf/PdfView;->access$702(Lcom/amazon/android/docviewer/pdf/PdfView;Z)Z

    .line 1051
    sget-object v0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->WHITE:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfView$4;->this$0:Lcom/amazon/android/docviewer/pdf/PdfView;

    .line 1052
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1051
    invoke-static {v0, v1}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getInstance(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v0

    .line 1053
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfView$4;->this$0:Lcom/amazon/android/docviewer/pdf/PdfView;

    invoke-static {v1}, Lcom/amazon/android/docviewer/pdf/PdfView;->access$600(Lcom/amazon/android/docviewer/pdf/PdfView;)Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->setColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode;)V

    .line 1054
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView$4;->this$0:Lcom/amazon/android/docviewer/pdf/PdfView;

    invoke-static {v0}, Lcom/amazon/android/docviewer/pdf/PdfView;->access$800(Lcom/amazon/android/docviewer/pdf/PdfView;)V

    .line 1055
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView$4;->this$0:Lcom/amazon/android/docviewer/pdf/PdfView;

    invoke-static {v0}, Lcom/amazon/android/docviewer/pdf/PdfView;->access$600(Lcom/amazon/android/docviewer/pdf/PdfView;)Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->onInitialDraw()V

    :cond_0
    return-void
.end method
