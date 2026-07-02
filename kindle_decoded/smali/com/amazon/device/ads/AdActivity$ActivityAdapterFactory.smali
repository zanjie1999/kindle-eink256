.class Lcom/amazon/device/ads/AdActivity$ActivityAdapterFactory;
.super Ljava/lang/Object;
.source "AdActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActivityAdapterFactory"
.end annotation


# instance fields
.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V
    .locals 1

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    invoke-static {}, Lcom/amazon/device/ads/AdActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/ads/AdActivity$ActivityAdapterFactory;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    return-void
.end method


# virtual methods
.method createAdapter(Landroid/content/Intent;)Lcom/amazon/device/ads/AdActivity$AdActivityAdapter;
    .locals 3

    const-string v0, "adapter"

    .line 182
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 185
    iget-object p1, p0, Lcom/amazon/device/ads/AdActivity$ActivityAdapterFactory;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Unable to launch the AdActivity due to an internal error."

    invoke-virtual {p1, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    return-object v0

    .line 192
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_6

    const/4 v1, 0x0

    :try_start_1
    new-array v2, v1, [Ljava/lang/Class;

    .line 203
    invoke-virtual {p1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_4

    :try_start_2
    new-array v1, v1, [Ljava/lang/Object;

    .line 219
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/device/ads/AdActivity$AdActivityAdapter;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    .line 238
    :catch_0
    iget-object p1, p0, Lcom/amazon/device/ads/AdActivity$ActivityAdapterFactory;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Invocation target exception when instantiating the adapter."

    invoke-virtual {p1, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    return-object v0

    .line 233
    :catch_1
    iget-object p1, p0, Lcom/amazon/device/ads/AdActivity$ActivityAdapterFactory;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Illegal access exception when instantiating the adapter."

    invoke-virtual {p1, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    return-object v0

    .line 228
    :catch_2
    iget-object p1, p0, Lcom/amazon/device/ads/AdActivity$ActivityAdapterFactory;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Instantiation exception when instantiating the adapter."

    invoke-virtual {p1, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    return-object v0

    .line 223
    :catch_3
    iget-object p1, p0, Lcom/amazon/device/ads/AdActivity$ActivityAdapterFactory;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Illegal arguments given to the default constructor."

    invoke-virtual {p1, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    return-object v0

    .line 212
    :catch_4
    iget-object p1, p0, Lcom/amazon/device/ads/AdActivity$ActivityAdapterFactory;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "No default constructor exists for the adapter."

    invoke-virtual {p1, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    return-object v0

    .line 207
    :catch_5
    iget-object p1, p0, Lcom/amazon/device/ads/AdActivity$ActivityAdapterFactory;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Security exception when trying to get the default constructor."

    invoke-virtual {p1, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    return-object v0

    .line 196
    :catch_6
    iget-object p1, p0, Lcom/amazon/device/ads/AdActivity$ActivityAdapterFactory;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Unable to get the adapter class."

    invoke-virtual {p1, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    return-object v0
.end method
