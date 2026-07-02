.class public final Lcom/amazon/kcp/util/device/NotchDetectorManager;
.super Ljava/lang/Object;
.source "NotchDetector.kt"


# static fields
.field private static final INSTANCE:Lcom/amazon/kcp/util/device/NotchDetectorImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Lcom/amazon/kcp/util/device/NotchDetectorManager;

    invoke-direct {v0}, Lcom/amazon/kcp/util/device/NotchDetectorManager;-><init>()V

    .line 15
    new-instance v0, Lcom/amazon/kcp/util/device/NotchDetectorImpl;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    const-string v2, "Utils.getFactory()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v1

    const-string v2, "Utils.getFactory().userSettingsController"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/amazon/kcp/util/device/NotchDetectorImpl;-><init>(Lcom/amazon/kcp/application/UserSettingsController;)V

    sput-object v0, Lcom/amazon/kcp/util/device/NotchDetectorManager;->INSTANCE:Lcom/amazon/kcp/util/device/NotchDetectorImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getDetector()Lcom/amazon/kcp/util/device/NotchDetector;
    .locals 1

    .line 18
    sget-object v0, Lcom/amazon/kcp/util/device/NotchDetectorManager;->INSTANCE:Lcom/amazon/kcp/util/device/NotchDetectorImpl;

    return-object v0
.end method
