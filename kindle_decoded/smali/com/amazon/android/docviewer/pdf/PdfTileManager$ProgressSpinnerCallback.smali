.class final Lcom/amazon/android/docviewer/pdf/PdfTileManager$ProgressSpinnerCallback;
.super Ljava/lang/Object;
.source "PdfTileManager.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/pdf/PdfTileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProgressSpinnerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/pdf/PdfTileManager;


# direct methods
.method private constructor <init>(Lcom/amazon/android/docviewer/pdf/PdfTileManager;)V
    .locals 0

    .line 1440
    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager$ProgressSpinnerCallback;->this$0:Lcom/amazon/android/docviewer/pdf/PdfTileManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/android/docviewer/pdf/PdfTileManager;Lcom/amazon/android/docviewer/pdf/PdfTileManager$1;)V
    .locals 0

    .line 1440
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/pdf/PdfTileManager$ProgressSpinnerCallback;-><init>(Lcom/amazon/android/docviewer/pdf/PdfTileManager;)V

    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1453
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager$ProgressSpinnerCallback;->this$0:Lcom/amazon/android/docviewer/pdf/PdfTileManager;

    invoke-static {p1}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->access$200(Lcom/amazon/android/docviewer/pdf/PdfTileManager;)Lcom/amazon/android/docviewer/pdf/PdfTileView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1

    .line 1448
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager$ProgressSpinnerCallback;->this$0:Lcom/amazon/android/docviewer/pdf/PdfTileManager;

    invoke-static {v0}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->access$100(Lcom/amazon/android/docviewer/pdf/PdfTileManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p2, p1, p3, p4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1

    .line 1443
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager$ProgressSpinnerCallback;->this$0:Lcom/amazon/android/docviewer/pdf/PdfTileManager;

    invoke-static {v0}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->access$100(Lcom/amazon/android/docviewer/pdf/PdfTileManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method
