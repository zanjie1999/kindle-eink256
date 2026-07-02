.class public Lcom/amazon/kindle/config/AppConfigManagerSingleton;
.super Ljava/lang/Object;
.source "AppConfigManagerSingleton.java"


# static fields
.field private static instance:Lcom/amazon/kindle/config/IAppConfigManager;


# direct methods
.method public static getInstance()Lcom/amazon/kindle/config/IAppConfigManager;
    .locals 2

    .line 7
    sget-object v0, Lcom/amazon/kindle/config/AppConfigManagerSingleton;->instance:Lcom/amazon/kindle/config/IAppConfigManager;

    if-eqz v0, :cond_0

    return-object v0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Attempting to get instance of IAppConfigManager, but no instance has been set!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setInstance(Lcom/amazon/kindle/config/IAppConfigManager;)V
    .locals 1

    .line 14
    sget-object v0, Lcom/amazon/kindle/config/AppConfigManagerSingleton;->instance:Lcom/amazon/kindle/config/IAppConfigManager;

    if-nez v0, :cond_0

    .line 17
    sput-object p0, Lcom/amazon/kindle/config/AppConfigManagerSingleton;->instance:Lcom/amazon/kindle/config/IAppConfigManager;

    return-void

    .line 15
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Attempting to set instance of IAppConfigManager, but instance has already been set!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
