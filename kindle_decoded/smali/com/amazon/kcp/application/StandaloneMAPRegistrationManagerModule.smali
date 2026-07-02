.class public Lcom/amazon/kcp/application/StandaloneMAPRegistrationManagerModule;
.super Ljava/lang/Object;
.source "StandaloneMAPRegistrationManagerModule.java"


# direct methods
.method static provideRegistrationManager(Landroid/app/Application;)Lcom/amazon/kcp/application/IRegistrationManager;
    .locals 1

    .line 20
    new-instance v0, Lcom/amazon/kindle/map/StandaloneMAPRegistrationManager;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/map/StandaloneMAPRegistrationManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
