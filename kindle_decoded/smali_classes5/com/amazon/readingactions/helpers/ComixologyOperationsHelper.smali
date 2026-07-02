.class public final Lcom/amazon/readingactions/helpers/ComixologyOperationsHelper;
.super Ljava/lang/Object;
.source "ComixologyOperationsHelper.kt"


# static fields
.field private static final ANDROID_PHONE_DEVICE_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ANDROID_TABLET_DEVICES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Lcom/amazon/readingactions/helpers/ComixologyOperationsHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 6
    new-instance v0, Lcom/amazon/readingactions/helpers/ComixologyOperationsHelper;

    invoke-direct {v0}, Lcom/amazon/readingactions/helpers/ComixologyOperationsHelper;-><init>()V

    sput-object v0, Lcom/amazon/readingactions/helpers/ComixologyOperationsHelper;->INSTANCE:Lcom/amazon/readingactions/helpers/ComixologyOperationsHelper;

    const-string v0, "AJDOJNI31MGT0"

    const-string v1, "A2A33MVZVPQKHY"

    .line 9
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v1}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/amazon/readingactions/helpers/ComixologyOperationsHelper;->ANDROID_PHONE_DEVICE_TYPES:Ljava/util/Set;

    const-string v1, "A12I2345KS68ZS"

    .line 13
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/amazon/readingactions/helpers/ComixologyOperationsHelper;->ANDROID_TABLET_DEVICES:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final isComics(Ljava/lang/String;)Z
    .locals 1

    .line 24
    sget-object v0, Lcom/amazon/readingactions/helpers/ComixologyOperationsHelper;->ANDROID_PHONE_DEVICE_TYPES:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 25
    sget-object v0, Lcom/amazon/readingactions/helpers/ComixologyOperationsHelper;->ANDROID_TABLET_DEVICES:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public final isComics()Z
    .locals 2

    .line 17
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string v1, "EndActionsPlugin.sdk"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    const-string v1, "applicationManager"

    .line 18
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDeviceInformation()Lcom/amazon/kindle/krx/application/IDeviceInformation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 19
    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IDeviceInformation;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 20
    invoke-direct {p0, v0}, Lcom/amazon/readingactions/helpers/ComixologyOperationsHelper;->isComics(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method
