.class Lcom/amazon/device/ads/AdControllerFactory;
.super Ljava/lang/Object;
.source "AdControllerFactory.java"


# static fields
.field private static cachedAdControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

.field private static cachedAdController:Lcom/amazon/device/ads/AdController;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cacheAdControlAccessor(Lcom/amazon/device/ads/AdControlAccessor;)V
    .locals 0

    .line 21
    sput-object p0, Lcom/amazon/device/ads/AdControllerFactory;->cachedAdControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    return-void
.end method

.method public static getCachedAdControlAccessor()Lcom/amazon/device/ads/AdControlAccessor;
    .locals 1

    .line 30
    sget-object v0, Lcom/amazon/device/ads/AdControllerFactory;->cachedAdControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    return-object v0
.end method


# virtual methods
.method public buildAdController(Landroid/content/Context;Lcom/amazon/device/ads/AdSize;)Lcom/amazon/device/ads/AdController;
    .locals 1

    .line 51
    :try_start_0
    new-instance v0, Lcom/amazon/device/ads/AdController;

    invoke-direct {v0, p1, p2}, Lcom/amazon/device/ads/AdController;-><init>(Landroid/content/Context;Lcom/amazon/device/ads/AdSize;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method
