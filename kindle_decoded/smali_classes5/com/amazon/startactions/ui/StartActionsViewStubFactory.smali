.class public Lcom/amazon/startactions/ui/StartActionsViewStubFactory;
.super Ljava/lang/Object;
.source "StartActionsViewStubFactory.java"


# static fields
.field private static final READER_PLUGIN_OVERLAY_REQUESTER_NAME:Ljava/lang/String; = "startactions"

.field private static final READER_PLUGIN_OVERLAY_WIDGET_NAME:Ljava/lang/String; = "READER_PLUGIN_OVERLAY_STUB"

.field private static final TAG:Ljava/lang/String; = "com.amazon.startactions.ui.StartActionsViewStubFactory"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static create()Landroid/view/ViewStub;
    .locals 3

    .line 20
    invoke-static {}, Lcom/amazon/startactions/ui/StartActionsViewStubFactory;->getReaderViewStub()Landroid/view/ViewStub;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 24
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 25
    sget-object v1, Lcom/amazon/startactions/ui/StartActionsViewStubFactory;->TAG:Ljava/lang/String;

    const-string v2, "Found plugin overlay stub; inflating the start actions overlay."

    invoke-static {v1, v2}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_0
    sget v1, Lcom/amazon/kindle/ea/R$layout;->startactions_activity_overlay_main:I

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    :cond_1
    return-object v0
.end method

.method private static getReaderViewStub()Landroid/view/ViewStub;
    .locals 4

    .line 35
    new-instance v0, Lcom/amazon/kindle/krx/ui/customwidget/CustomWidgetState;

    const/4 v1, 0x0

    const-string/jumbo v2, "startactions"

    const-string v3, "READER_PLUGIN_OVERLAY_STUB"

    invoke-direct {v0, v2, v3, v1}, Lcom/amazon/kindle/krx/ui/customwidget/CustomWidgetState;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 37
    sget-object v2, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCustomWidget(Lcom/amazon/kindle/krx/ui/customwidget/CustomWidgetState;)Lcom/amazon/kindle/krx/ui/customwidget/ICustomWidget;

    move-result-object v0

    if-nez v0, :cond_1

    .line 39
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    sget-object v0, Lcom/amazon/startactions/ui/StartActionsViewStubFactory;->TAG:Ljava/lang/String;

    const-string v2, "Stub CustomWidget could not be found.\tName:READER_PLUGIN_OVERLAY_STUB"

    invoke-static {v0, v2}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v1

    .line 45
    :cond_1
    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/customwidget/ICustomWidget;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    .line 47
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48
    sget-object v0, Lcom/amazon/startactions/ui/StartActionsViewStubFactory;->TAG:Ljava/lang/String;

    const-string v2, "Stub CustomWidget returned a null view; did not find the stub."

    invoke-static {v0, v2}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v1

    .line 53
    :cond_3
    instance-of v1, v0, Landroid/view/ViewStub;

    if-nez v1, :cond_4

    .line 54
    sget-object v1, Lcom/amazon/startactions/ui/StartActionsViewStubFactory;->TAG:Ljava/lang/String;

    const-string v2, "The stub CustomWidget READER_PLUGIN_OVERLAY_STUB returned a view that isn\'t a ViewStub!"

    invoke-static {v1, v2}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_4
    check-cast v0, Landroid/view/ViewStub;

    return-object v0
.end method
