.class Lcom/amazon/device/ads/ModalAdActivityAdapter$1;
.super Ljava/lang/Object;
.source "ModalAdActivityAdapter.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/ModalAdActivityAdapter;->reportSizeChangeEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/ModalAdActivityAdapter;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/ModalAdActivityAdapter;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter$1;->this$0:Lcom/amazon/device/ads/ModalAdActivityAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 147
    iget-object v0, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter$1;->this$0:Lcom/amazon/device/ads/ModalAdActivityAdapter;

    invoke-static {v0}, Lcom/amazon/device/ads/ModalAdActivityAdapter;->access$200(Lcom/amazon/device/ads/ModalAdActivityAdapter;)Lcom/amazon/device/ads/ViewUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter$1;->this$0:Lcom/amazon/device/ads/ModalAdActivityAdapter;

    invoke-static {v1}, Lcom/amazon/device/ads/ModalAdActivityAdapter;->access$100(Lcom/amazon/device/ads/ModalAdActivityAdapter;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/amazon/device/ads/ViewUtils;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)Z

    .line 150
    iget-object v0, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter$1;->this$0:Lcom/amazon/device/ads/ModalAdActivityAdapter;

    invoke-static {v0}, Lcom/amazon/device/ads/ModalAdActivityAdapter;->access$300(Lcom/amazon/device/ads/ModalAdActivityAdapter;)Lcom/amazon/device/ads/AdControlAccessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor;->getCurrentPosition()Lcom/amazon/device/ads/Position;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 155
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/device/ads/Position;->getSize()Lcom/amazon/device/ads/Size;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 156
    iget-object v1, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter$1;->this$0:Lcom/amazon/device/ads/ModalAdActivityAdapter;

    invoke-static {v1}, Lcom/amazon/device/ads/ModalAdActivityAdapter;->access$400(Lcom/amazon/device/ads/ModalAdActivityAdapter;)Lcom/amazon/device/ads/Size;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 158
    iget-object v1, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter$1;->this$0:Lcom/amazon/device/ads/ModalAdActivityAdapter;

    invoke-static {v1, v0}, Lcom/amazon/device/ads/ModalAdActivityAdapter;->access$402(Lcom/amazon/device/ads/ModalAdActivityAdapter;Lcom/amazon/device/ads/Size;)Lcom/amazon/device/ads/Size;

    .line 159
    iget-object v1, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter$1;->this$0:Lcom/amazon/device/ads/ModalAdActivityAdapter;

    invoke-static {v1}, Lcom/amazon/device/ads/ModalAdActivityAdapter;->access$300(Lcom/amazon/device/ads/ModalAdActivityAdapter;)Lcom/amazon/device/ads/AdControlAccessor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mraidBridge.sizeChange("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/amazon/device/ads/Size;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/amazon/device/ads/Size;->getHeight()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/device/ads/AdControlAccessor;->injectJavascript(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
