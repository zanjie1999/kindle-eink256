.class Lcom/amazon/klo/KindleLearningObjectPlugin$1;
.super Ljava/lang/Object;
.source "KindleLearningObjectPlugin.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/IActionButton;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/klo/KindleLearningObjectPlugin;->createKLOActionButton()Lcom/amazon/kindle/krx/ui/IActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/ui/IActionButton<",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/klo/KindleLearningObjectPlugin;


# direct methods
.method constructor <init>(Lcom/amazon/klo/KindleLearningObjectPlugin;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/amazon/klo/KindleLearningObjectPlugin$1;->this$0:Lcom/amazon/klo/KindleLearningObjectPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon(Lcom/amazon/kindle/krx/ui/ColorMode;Lcom/amazon/kindle/krx/ui/IconType;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 182
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    .line 186
    invoke-static {}, Lcom/amazon/klo/KLOApp;->getTheme()Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object p2

    .line 188
    invoke-static {}, Lcom/amazon/klo/KLOApp;->isNonLinearNavigationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    sget-object v0, Lcom/amazon/kindle/krx/theme/Theme;->DARK:Lcom/amazon/kindle/krx/theme/Theme;

    if-ne p2, v0, :cond_0

    .line 192
    sget p2, Lcom/amazon/klo/R$drawable;->ic_klom_white:I

    goto :goto_0

    .line 196
    :cond_0
    sget p2, Lcom/amazon/klo/R$drawable;->ic_klom_black:I

    goto :goto_0

    .line 201
    :cond_1
    sget-object v0, Lcom/amazon/kindle/krx/theme/Theme;->DARK:Lcom/amazon/kindle/krx/theme/Theme;

    if-ne p2, v0, :cond_2

    .line 203
    sget p2, Lcom/amazon/klo/R$drawable;->ic_klom_nonnln_white:I

    goto :goto_0

    .line 207
    :cond_2
    sget p2, Lcom/amazon/klo/R$drawable;->ic_klom_nonnln_black:I

    .line 211
    :goto_0
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getIconKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 116
    sget v0, Lcom/amazon/klo/R$id;->klo_button_id:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    const/16 v0, 0x32

    return v0
.end method

.method public getText(Lcom/amazon/kindle/krx/ui/TextType;)Ljava/lang/String;
    .locals 1

    .line 122
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/amazon/klo/R$string;->klo_button_name:I

    .line 123
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getVisibility(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/ComponentStatus;
    .locals 1

    .line 130
    invoke-static {}, Lcom/amazon/klo/KindleLearningObjectPlugin;->access$000()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/application/ApplicationFeature;->NEUTRON_PHASE_1:Lcom/amazon/kindle/krx/application/ApplicationFeature;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->isFeatureEnabled(Lcom/amazon/kindle/krx/application/ApplicationFeature;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 132
    sget-boolean p1, Lcom/amazon/klo/KindleLearningObjectPlugin;->isSidecarPresentCached:Z

    if-eqz p1, :cond_0

    sget-boolean p1, Lcom/amazon/klo/KindleLearningObjectPlugin;->isSidecarPresent:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    .line 136
    :cond_1
    invoke-static {}, Lcom/amazon/klo/KindleLearningObjectPlugin;->isSidecarPresent()Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_2

    .line 141
    sget-object p1, Lcom/amazon/kindle/krx/ui/ComponentStatus;->ENABLED:Lcom/amazon/kindle/krx/ui/ComponentStatus;

    return-object p1

    .line 145
    :cond_2
    sget-object p1, Lcom/amazon/kindle/krx/ui/ComponentStatus;->DISABLED:Lcom/amazon/kindle/krx/ui/ComponentStatus;

    return-object p1
.end method

.method public bridge synthetic getVisibility(Ljava/lang/Object;)Lcom/amazon/kindle/krx/ui/ComponentStatus;
    .locals 0

    .line 111
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/klo/KindleLearningObjectPlugin$1;->getVisibility(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/ComponentStatus;

    move-result-object p1

    return-object p1
.end method

.method public onClick(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 4

    .line 152
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 154
    invoke-static {}, Lcom/amazon/klo/KindleLearningObjectPlugin;->getInstance()Lcom/amazon/klo/KindleLearningObjectPlugin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/klo/KindleLearningObjectPlugin;->getSavedIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/klo/KindleLearningObjectActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const-string/jumbo v2, "restoredIntent"

    .line 161
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 163
    :goto_0
    invoke-static {}, Lcom/amazon/klo/KLOMetricManager;->markXrayReaderMenuButtonPressed()V

    const/high16 v1, 0x10000000

    .line 164
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 166
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v1

    const-string v2, "Xray"

    const-string v3, "PressedXray"

    .line 167
    invoke-interface {v1, v2, v3}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v1

    const-string v2, "KINDLE_LEARNING_OBJECTS"

    const-string v3, "Opened"

    invoke-interface {v1, v2, v3}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v1

    const-string v2, "OpenTime"

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->startMetricTimer(Ljava/lang/String;)V

    .line 174
    iget-object v1, p0, Lcom/amazon/klo/KindleLearningObjectPlugin$1;->this$0:Lcom/amazon/klo/KindleLearningObjectPlugin;

    invoke-virtual {v1, p1}, Lcom/amazon/klo/KindleLearningObjectPlugin;->persistReaderOrientation(Landroid/content/Context;)V

    .line 176
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic onClick(Ljava/lang/Object;)V
    .locals 0

    .line 111
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/klo/KindleLearningObjectPlugin$1;->onClick(Lcom/amazon/kindle/krx/content/IBook;)V

    return-void
.end method

.method public showAsAction()Z
    .locals 1

    .line 223
    invoke-static {}, Lcom/amazon/klo/KindleLearningObjectPlugin;->isSidecarPresent()Z

    move-result v0

    return v0
.end method
