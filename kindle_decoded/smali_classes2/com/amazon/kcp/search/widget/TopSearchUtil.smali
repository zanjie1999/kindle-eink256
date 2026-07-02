.class public final Lcom/amazon/kcp/search/widget/TopSearchUtil;
.super Ljava/lang/Object;
.source "TopSearchUtil.java"


# direct methods
.method static isDownloadRetryNeeded()Z
    .locals 1

    .line 31
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAppSettingsController()Lcom/amazon/kcp/application/IAppSettingsController;

    move-result-object v0

    .line 32
    invoke-interface {v0}, Lcom/amazon/kcp/application/IAppSettingsController;->isTopSearchDownloadRetryNeeded()Z

    move-result v0

    return v0
.end method

.method public static isFeatureEnabled()Z
    .locals 2

    .line 20
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 21
    invoke-static {v0}, Lcom/amazon/kcp/debug/DebugUtils;->isTopSearchWidgetEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 22
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$bool;->top_search_enabled:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static setDownloadRetryNeeded(Z)V
    .locals 1

    .line 41
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAppSettingsController()Lcom/amazon/kcp/application/IAppSettingsController;

    move-result-object v0

    .line 42
    invoke-interface {v0, p0}, Lcom/amazon/kcp/application/IAppSettingsController;->setTopSearchDownloadRetryNeeded(Z)V

    return-void
.end method
