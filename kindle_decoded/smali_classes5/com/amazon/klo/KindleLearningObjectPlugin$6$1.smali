.class Lcom/amazon/klo/KindleLearningObjectPlugin$6$1;
.super Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;
.source "KindleLearningObjectPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/klo/KindleLearningObjectPlugin$6;->get(Landroid/content/Context;)Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/klo/KindleLearningObjectPlugin$6;)V
    .locals 0

    .line 466
    invoke-direct {p0}, Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 2

    .line 469
    invoke-static {}, Lcom/amazon/klo/KindleLearningObjectPlugin;->access$000()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/amazon/klo/R$string;->klo_debug_controls_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 3

    .line 474
    invoke-static {}, Lcom/amazon/klo/KindleLearningObjectPlugin;->access$000()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/amazon/klo/R$layout;->klo_debug_options:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
