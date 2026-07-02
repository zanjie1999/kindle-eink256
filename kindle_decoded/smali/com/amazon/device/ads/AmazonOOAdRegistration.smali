.class public Lcom/amazon/device/ads/AmazonOOAdRegistration;
.super Ljava/lang/Object;
.source "AmazonOOAdRegistration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/AmazonOOAdRegistration$AmazonOOAdRegistrationInfo;
    }
.end annotation


# static fields
.field private static final executor:Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor;

    invoke-direct {v0}, Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/AmazonOOAdRegistration;->executor:Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final enableLogging(Z)V
    .locals 1

    .line 57
    sget-object v0, Lcom/amazon/device/ads/AmazonOOAdRegistration;->executor:Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor;

    invoke-virtual {v0, p0}, Lcom/amazon/device/ads/AdRegistrationExecutor;->enableLogging(Z)V

    return-void
.end method

.method static getAmazonOOAdRegistrationExecutor()Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor;
    .locals 1

    .line 308
    sget-object v0, Lcom/amazon/device/ads/AmazonOOAdRegistration;->executor:Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor;

    return-object v0
.end method

.method public static final registerApp(Landroid/content/Context;)V
    .locals 1

    .line 101
    sget-object v0, Lcom/amazon/device/ads/AmazonOOAdRegistration;->executor:Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor;

    invoke-virtual {v0, p0}, Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor;->registerApp(Landroid/content/Context;)V

    return-void
.end method

.method public static registerEvent(Landroid/content/Context;Lcom/amazon/device/ads/AmazonOOAppEvent;)V
    .locals 1

    .line 282
    sget-object v0, Lcom/amazon/device/ads/AmazonOOAdRegistration;->executor:Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor;

    invoke-virtual {v0, p0, p1}, Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor;->registerEvent(Landroid/content/Context;Lcom/amazon/device/ads/AmazonOOAppEvent;)V

    return-void
.end method

.method public static final setAppKey(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 47
    sget-object v0, Lcom/amazon/device/ads/AmazonOOAdRegistration;->executor:Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor;

    invoke-virtual {v0, p0}, Lcom/amazon/device/ads/AdRegistrationExecutor;->setAppKey(Ljava/lang/String;)V

    return-void
.end method

.method public static setAppName(Ljava/lang/String;)V
    .locals 1

    .line 153
    sget-object v0, Lcom/amazon/device/ads/AmazonOOAdRegistration;->executor:Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor;

    invoke-virtual {v0, p0}, Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor;->setAppName(Ljava/lang/String;)V

    return-void
.end method

.method public static setReferrer(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 269
    sget-object v0, Lcom/amazon/device/ads/AmazonOOAdRegistration;->executor:Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor;

    invoke-virtual {v0, p0, p1}, Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor;->setReferrer(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
