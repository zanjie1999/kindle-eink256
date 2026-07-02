.class Lcom/amazon/kindle/rendering/KRIFView$2;
.super Ljava/lang/Object;
.source "KRIFView.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/rendering/KRIFView;->initKRFView(Lcom/amazon/krf/platform/KRFBook;Landroid/content/Context;Lcom/amazon/kindle/rendering/KRIFDocViewer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/rendering/KRIFView;

.field final synthetic val$krifBook:Lcom/amazon/krf/platform/KRFBook;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/rendering/KRIFView;Lcom/amazon/krf/platform/KRFBook;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFView$2;->this$0:Lcom/amazon/kindle/rendering/KRIFView;

    iput-object p2, p0, Lcom/amazon/kindle/rendering/KRIFView$2;->val$krifBook:Lcom/amazon/krf/platform/KRFBook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 295
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFView$2;->this$0:Lcom/amazon/kindle/rendering/KRIFView;

    iget-object v0, p1, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/amazon/kindle/rendering/KRIFView;->access$100(Lcom/amazon/kindle/rendering/KRIFView;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 296
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFView$2;->this$0:Lcom/amazon/kindle/rendering/KRIFView;

    invoke-static {p2}, Lcom/amazon/kcp/util/device/DisplayCutoutUtils;->getDisplayCutoutSafeInsets(Landroid/view/WindowInsets;)Lcom/amazon/kcp/util/device/SafeInsets;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/rendering/KRIFView;->setSafeInsets(Lcom/amazon/kcp/util/device/SafeInsets;)V

    .line 297
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFView$2;->this$0:Lcom/amazon/kindle/rendering/KRIFView;

    iget-object p1, p1, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {p1}, Lcom/amazon/krf/platform/KRFView;->getBook()Lcom/amazon/krf/platform/KRFBook;

    move-result-object p1

    if-nez p1, :cond_0

    .line 298
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFView$2;->this$0:Lcom/amazon/kindle/rendering/KRIFView;

    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView$2;->val$krifBook:Lcom/amazon/krf/platform/KRFBook;

    invoke-static {p1, v0}, Lcom/amazon/kindle/rendering/KRIFView;->access$200(Lcom/amazon/kindle/rendering/KRIFView;Lcom/amazon/krf/platform/KRFBook;)V

    goto :goto_0

    .line 300
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFView$2;->this$0:Lcom/amazon/kindle/rendering/KRIFView;

    invoke-static {p1}, Lcom/amazon/kindle/rendering/KRIFView;->access$300(Lcom/amazon/kindle/rendering/KRIFView;)Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->applySettings()Z

    :cond_1
    :goto_0
    return-object p2
.end method
