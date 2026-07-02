.class Lcom/amazon/kindle/rendering/KRIFDocViewer$2;
.super Ljava/lang/Object;
.source "KRIFDocViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/rendering/KRIFDocViewer;->onKRIFSettingsChangeEvent(Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/rendering/KRIFDocViewer;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/rendering/KRIFDocViewer;)V
    .locals 0

    .line 1030
    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer$2;->this$0:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1033
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer$2;->this$0:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getOrientation()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/amazon/krf/platform/KRFView$Orientation;->PORTRAIT:Lcom/amazon/krf/platform/KRFView$Orientation;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/amazon/krf/platform/KRFView$Orientation;->LANDSCAPE:Lcom/amazon/krf/platform/KRFView$Orientation;

    :goto_0
    invoke-static {v0, v1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->access$300(Lcom/amazon/kindle/rendering/KRIFDocViewer;Lcom/amazon/krf/platform/KRFView$Orientation;)V

    return-void
.end method
