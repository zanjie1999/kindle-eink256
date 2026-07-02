.class public Lcom/amazon/xray/plugin/util/AccountUtil;
.super Ljava/lang/Object;
.source "AccountUtil.java"


# direct methods
.method public static isChildAccount()Z
    .locals 2

    .line 22
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v1, 0x3

    .line 27
    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/application/IUserAccount;->getAccountProperty(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CHILD"

    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
