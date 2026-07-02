.class public Lcom/amazon/device/ads/AmazonOOAdLayout;
.super Lcom/amazon/device/ads/AdLayout;
.source "AmazonOOAdLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/AmazonOOAdLayout$AmazonOOAdLayoutAdControlCallback;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/amazon/device/ads/AmazonOOAdLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/AmazonOOAdLayout;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 39
    new-instance v3, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v3}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    .line 42
    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object v4

    new-instance v5, Lcom/amazon/device/ads/AdControllerFactory;

    invoke-direct {v5}, Lcom/amazon/device/ads/AdControllerFactory;-><init>()V

    .line 44
    invoke-static {}, Lcom/amazon/device/ads/AmazonOOAdRegistration;->getAmazonOOAdRegistrationExecutor()Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor;

    move-result-object v6

    new-instance v7, Lcom/amazon/device/ads/AdLoadStarter;

    invoke-direct {v7}, Lcom/amazon/device/ads/AdLoadStarter;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 39
    invoke-direct/range {v0 .. v7}, Lcom/amazon/device/ads/AmazonOOAdLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/Settings;Lcom/amazon/device/ads/AdControllerFactory;Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor;Lcom/amazon/device/ads/AdLoadStarter;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .line 79
    new-instance v4, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v4}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    .line 83
    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object v5

    new-instance v6, Lcom/amazon/device/ads/AdControllerFactory;

    invoke-direct {v6}, Lcom/amazon/device/ads/AdControllerFactory;-><init>()V

    .line 85
    invoke-static {}, Lcom/amazon/device/ads/AmazonOOAdRegistration;->getAmazonOOAdRegistrationExecutor()Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor;

    move-result-object v7

    new-instance v8, Lcom/amazon/device/ads/AdLoadStarter;

    invoke-direct {v8}, Lcom/amazon/device/ads/AdLoadStarter;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 79
    invoke-direct/range {v0 .. v8}, Lcom/amazon/device/ads/AmazonOOAdLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/Settings;Lcom/amazon/device/ads/AdControllerFactory;Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor;Lcom/amazon/device/ads/AdLoadStarter;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/AdListenerExecutorFactory;Lcom/amazon/device/ads/AdControllerFactory;Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor;Lcom/amazon/device/ads/AdLoadStarter;)V
    .locals 0

    .line 108
    invoke-direct/range {p0 .. p8}, Lcom/amazon/device/ads/AdLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/AdListenerExecutorFactory;Lcom/amazon/device/ads/AdControllerFactory;Lcom/amazon/device/ads/AdRegistrationExecutor;Lcom/amazon/device/ads/AdLoadStarter;)V

    .line 109
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->getLogger()Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object p1

    sget-object p2, Lcom/amazon/device/ads/AmazonOOAdLayout;->LOGTAG:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/amazon/device/ads/MobileAdsLogger;->withLogTag(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/Settings;Lcom/amazon/device/ads/AdControllerFactory;Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor;Lcom/amazon/device/ads/AdLoadStarter;)V
    .locals 9

    .line 97
    new-instance v5, Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory;

    move-object v4, p4

    move-object v0, p5

    invoke-direct {v5, p4, p5}, Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory;-><init>(Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/Settings;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/amazon/device/ads/AmazonOOAdLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/AdListenerExecutorFactory;Lcom/amazon/device/ads/AdControllerFactory;Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor;Lcom/amazon/device/ads/AdLoadStarter;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/AdListenerExecutorFactory;Lcom/amazon/device/ads/AdControllerFactory;Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor;Lcom/amazon/device/ads/AdLoadStarter;)V
    .locals 0

    .line 65
    invoke-direct/range {p0 .. p7}, Lcom/amazon/device/ads/AdLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/AdListenerExecutorFactory;Lcom/amazon/device/ads/AdControllerFactory;Lcom/amazon/device/ads/AdRegistrationExecutor;Lcom/amazon/device/ads/AdLoadStarter;)V

    .line 66
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->getLogger()Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object p1

    sget-object p2, Lcom/amazon/device/ads/AmazonOOAdLayout;->LOGTAG:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/amazon/device/ads/MobileAdsLogger;->withLogTag(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/Settings;Lcom/amazon/device/ads/AdControllerFactory;Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor;Lcom/amazon/device/ads/AdLoadStarter;)V
    .locals 8

    .line 55
    new-instance v4, Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory;

    invoke-direct {v4, p3, p4}, Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory;-><init>(Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/Settings;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/amazon/device/ads/AmazonOOAdLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/AdListenerExecutorFactory;Lcom/amazon/device/ads/AdControllerFactory;Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor;Lcom/amazon/device/ads/AdLoadStarter;)V

    return-void
.end method


# virtual methods
.method createAdControlCallback()Lcom/amazon/device/ads/AdControlCallback;
    .locals 1

    .line 153
    new-instance v0, Lcom/amazon/device/ads/AmazonOOAdLayout$AmazonOOAdLayoutAdControlCallback;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/AmazonOOAdLayout$AmazonOOAdLayoutAdControlCallback;-><init>(Lcom/amazon/device/ads/AmazonOOAdLayout;)V

    return-object v0
.end method

.method public setMaxWidth(I)V
    .locals 0

    .line 178
    invoke-super {p0, p1}, Lcom/amazon/device/ads/AdLayout;->setMaxWidth(I)V

    return-void
.end method

.method public setShouldDisableWebViewHardwareAcceleration(Z)V
    .locals 0

    .line 165
    invoke-super {p0, p1}, Lcom/amazon/device/ads/AdLayout;->setShouldDisableWebViewHardwareAcceleration(Z)V

    return-void
.end method
