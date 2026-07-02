.class Lcom/amazon/startactions/ui/StartActionsOverlayController$1;
.super Ljava/lang/Object;
.source "StartActionsOverlayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/startactions/ui/StartActionsOverlayController;->showOverlay()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/startactions/ui/StartActionsOverlayController;

.field final synthetic val$controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;


# direct methods
.method constructor <init>(Lcom/amazon/startactions/ui/StartActionsOverlayController;Lcom/amazon/startactions/ui/IAnyActionsUIController;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController$1;->this$0:Lcom/amazon/startactions/ui/StartActionsOverlayController;

    iput-object p2, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController$1;->val$controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 161
    invoke-static {}, Lcom/amazon/startactions/ui/StartActionsViewStubFactory;->create()Landroid/view/ViewStub;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 163
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    invoke-static {}, Lcom/amazon/startactions/ui/StartActionsOverlayController;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Found plugin overlay stub; inflating the start actions overlay."

    invoke-static {v1, v2}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_0
    sget v1, Lcom/amazon/kindle/ea/R$layout;->startactions_activity_overlay_main:I

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 167
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController$1;->this$0:Lcom/amazon/startactions/ui/StartActionsOverlayController;

    invoke-static {v0}, Lcom/amazon/startactions/ui/StartActionsOverlayController;->access$100(Lcom/amazon/startactions/ui/StartActionsOverlayController;)Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$id;->startactions_dismiss_overlay:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController$1;->this$0:Lcom/amazon/startactions/ui/StartActionsOverlayController;

    invoke-static {v1}, Lcom/amazon/startactions/ui/StartActionsOverlayController;->access$100(Lcom/amazon/startactions/ui/StartActionsOverlayController;)Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/ea/R$id;->startactions_content_container:I

    .line 173
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v5, 0x1

    aput-object v1, v3, v5

    .line 175
    invoke-static {v3}, Lcom/amazon/ea/guava/Objects;->anyNull([Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 176
    invoke-static {}, Lcom/amazon/startactions/ui/StartActionsOverlayController;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Dismiss overlay and/or content container views not found, either because they weren\'t persisted or because the stub failed to inflate.  Cannot launch Start Actions."

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 182
    :cond_2
    iget-object v3, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController$1;->this$0:Lcom/amazon/startactions/ui/StartActionsOverlayController;

    invoke-static {v3}, Lcom/amazon/startactions/ui/StartActionsOverlayController;->access$200(Lcom/amazon/startactions/ui/StartActionsOverlayController;)Lcom/amazon/startactions/ui/KeyEventListener;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/amazon/startactions/ui/KeyEventListener;->register(Landroid/view/ViewGroup;)V

    .line 185
    new-instance v3, Lcom/amazon/startactions/ui/StartActionsOverlayController$1$1;

    invoke-direct {v3, p0}, Lcom/amazon/startactions/ui/StartActionsOverlayController$1$1;-><init>(Lcom/amazon/startactions/ui/StartActionsOverlayController$1;)V

    .line 202
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    sget-object v3, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v3

    sget-object v6, Lcom/amazon/kindle/krx/application/ApplicationFeature;->NONLINEAR_NAVIGATION:Lcom/amazon/kindle/krx/application/ApplicationFeature;

    invoke-interface {v3, v6}, Lcom/amazon/kindle/krx/application/IApplicationManager;->isFeatureEnabled(Lcom/amazon/kindle/krx/application/ApplicationFeature;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 207
    sget-object v3, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v3

    invoke-interface {v3, v4, v4}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->setOverlaysVisible(ZZ)V

    .line 210
    iget-object v3, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController$1;->this$0:Lcom/amazon/startactions/ui/StartActionsOverlayController;

    invoke-virtual {v3}, Lcom/amazon/startactions/ui/StartActionsOverlayController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lcom/amazon/kindle/ea/R$color;->startactions_dismiss_view_background_legacy:I

    .line 211
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 210
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 214
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 215
    iget-object v6, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController$1;->this$0:Lcom/amazon/startactions/ui/StartActionsOverlayController;

    invoke-virtual {v6}, Lcom/amazon/startactions/ui/StartActionsOverlayController;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/amazon/kindle/ea/R$dimen;->startactions_content_container_width_legacy:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 216
    iget-object v6, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController$1;->this$0:Lcom/amazon/startactions/ui/StartActionsOverlayController;

    invoke-virtual {v6}, Lcom/amazon/startactions/ui/StartActionsOverlayController;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    if-eq v6, v2, :cond_4

    .line 217
    invoke-static {}, Lcom/amazon/startactions/ui/helpers/TabletExperience;->shouldUseTabletExperience()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 222
    :cond_3
    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v2, 0x5

    .line 218
    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 219
    iget-object v2, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController$1;->this$0:Lcom/amazon/startactions/ui/StartActionsOverlayController;

    invoke-virtual {v2}, Lcom/amazon/startactions/ui/StartActionsOverlayController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v6, Lcom/amazon/kindle/ea/R$dimen;->startactions_content_container_margin_right:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 227
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController$1;->this$0:Lcom/amazon/startactions/ui/StartActionsOverlayController;

    invoke-static {v2}, Lcom/amazon/startactions/ui/StartActionsOverlayController;->access$400(Lcom/amazon/startactions/ui/StartActionsOverlayController;)Lcom/amazon/startactions/ui/layout/Layout;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController$1;->val$controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    const/4 v6, 0x0

    invoke-interface {v2, v3, v6}, Lcom/amazon/startactions/ui/layout/Layout;->createView(Lcom/amazon/startactions/ui/IAnyActionsUIController;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    .line 230
    iget-object v3, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController$1;->this$0:Lcom/amazon/startactions/ui/StartActionsOverlayController;

    invoke-static {v3}, Lcom/amazon/startactions/ui/StartActionsOverlayController;->access$300(Lcom/amazon/startactions/ui/StartActionsOverlayController;)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v6

    iget-object v7, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController$1;->this$0:Lcom/amazon/startactions/ui/StartActionsOverlayController;

    invoke-static {v7}, Lcom/amazon/startactions/ui/StartActionsOverlayController;->access$100(Lcom/amazon/startactions/ui/StartActionsOverlayController;)Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    invoke-static {v3, v6, v7, v1}, Lcom/amazon/startactions/ui/StartActionsOverlayController;->access$500(Lcom/amazon/startactions/ui/StartActionsOverlayController;Lcom/amazon/kindle/krx/content/IBook;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 233
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 234
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 235
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 238
    sget v2, Lcom/amazon/kindle/ea/R$array;->startactions_bg_container:I

    .line 239
    invoke-static {v2}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 238
    invoke-static {v1, v2}, Lcom/amazon/ea/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 242
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 243
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController$1;->this$0:Lcom/amazon/startactions/ui/StartActionsOverlayController;

    invoke-virtual {v0}, Lcom/amazon/startactions/ui/StartActionsOverlayController;->getSessionMetric()Lcom/amazon/startactions/metrics/Metric;

    move-result-object v0

    const-string v1, "Sessions"

    .line 247
    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    const-string v1, "Impressions"

    .line 248
    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->incrementCount(Ljava/lang/String;)V

    const-string v1, "StartActionsActiveTime"

    .line 249
    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->startTimer(Ljava/lang/String;)V

    .line 251
    invoke-static {}, Lcom/amazon/startactions/plugin/StartActionsController;->getStartActionsLauncherMetric()Lcom/amazon/startactions/metrics/Metric;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v1, "LoadTime"

    .line 253
    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->stopTimer(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v0}, Lcom/amazon/startactions/metrics/Metric;->close()V

    .line 258
    :cond_6
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    .line 259
    invoke-static {}, Lcom/amazon/ea/readingstreams/ReadingStreamsDisplayedWidgetsHelper;->getDisplayedWidgetMetadata()Ljava/util/Map;

    move-result-object v1

    .line 260
    iget-object v2, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController$1;->this$0:Lcom/amazon/startactions/ui/StartActionsOverlayController;

    invoke-static {v2}, Lcom/amazon/startactions/ui/StartActionsOverlayController;->access$400(Lcom/amazon/startactions/ui/StartActionsOverlayController;)Lcom/amazon/startactions/ui/layout/Layout;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/startactions/ui/layout/Layout;->getRefTagSuffix()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RefTagSuffix"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    iget-object v2, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController$1;->this$0:Lcom/amazon/startactions/ui/StartActionsOverlayController;

    invoke-static {v2}, Lcom/amazon/startactions/ui/StartActionsOverlayController;->access$400(Lcom/amazon/startactions/ui/StartActionsOverlayController;)Lcom/amazon/startactions/ui/layout/Layout;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/startactions/ui/layout/Layout;->getMetricsTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LayoutTag"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    invoke-static {}, Lcom/amazon/ea/util/GrokAvailabilityUtil;->isGrokAvailable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "IsGoodreadsUser"

    .line 262
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    iget-object v2, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController$1;->this$0:Lcom/amazon/startactions/ui/StartActionsOverlayController;

    .line 266
    invoke-static {v2}, Lcom/amazon/startactions/ui/StartActionsOverlayController;->access$400(Lcom/amazon/startactions/ui/StartActionsOverlayController;)Lcom/amazon/startactions/ui/layout/Layout;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/startactions/ui/layout/Layout;->getRefTagSuffix()Ljava/lang/String;

    move-result-object v2

    const-string v3, "d"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "DefaultLayout"

    .line 265
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "StartActions"

    .line 267
    invoke-interface {v0, v2, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->showContext(Ljava/lang/String;Ljava/util/Map;)V

    .line 270
    iget-object v0, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController$1;->this$0:Lcom/amazon/startactions/ui/StartActionsOverlayController;

    invoke-static {v0, v5}, Lcom/amazon/startactions/ui/StartActionsOverlayController;->access$602(Lcom/amazon/startactions/ui/StartActionsOverlayController;Z)Z

    .line 271
    iget-object v0, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController$1;->this$0:Lcom/amazon/startactions/ui/StartActionsOverlayController;

    invoke-virtual {v0}, Lcom/amazon/startactions/ui/StartActionsOverlayController;->requestAccessibilityFocus()V

    return-void
.end method
