.class Lcom/amazon/kcp/reader/ReaderActivity$ReaderPluginOverlay;
.super Ljava/lang/Object;
.source "ReaderActivity.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/customwidget/ICustomWidget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ReaderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReaderPluginOverlay"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/reader/ReaderActivity$1;)V
    .locals 0

    .line 333
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderActivity$ReaderPluginOverlay;-><init>()V

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 2

    .line 336
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 339
    sget v1, Lcom/amazon/kindle/krl/R$id;->reader_plugin_overlay_stub:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
