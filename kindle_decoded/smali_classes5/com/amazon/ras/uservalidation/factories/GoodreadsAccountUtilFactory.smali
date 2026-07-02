.class public final Lcom/amazon/ras/uservalidation/factories/GoodreadsAccountUtilFactory;
.super Ljava/lang/Object;
.source "GoodreadsAccountUtilFactory.java"


# direct methods
.method public static getGoodreadsAccountUtil(Landroid/content/Context;Lcom/amazon/ras/uservalidation/DeviceType;)Lcom/amazon/ras/uservalidation/IGoodreadsAccountUtil;
    .locals 3

    .line 24
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v1, Lcom/amazon/ras/uservalidation/GoodreadsAccountUtil;

    new-instance v2, Lcom/amazon/ras/uservalidation/cache/SharedPreferencesDeviceConfigurationCache;

    .line 26
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->getAccount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Lcom/amazon/ras/uservalidation/cache/SharedPreferencesDeviceConfigurationCache;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v1, p0, p1, v2}, Lcom/amazon/ras/uservalidation/GoodreadsAccountUtil;-><init>(Landroid/content/Context;Lcom/amazon/ras/uservalidation/DeviceType;Lcom/amazon/ras/uservalidation/cache/IDeviceConfigurationCache;)V

    return-object v1
.end method
