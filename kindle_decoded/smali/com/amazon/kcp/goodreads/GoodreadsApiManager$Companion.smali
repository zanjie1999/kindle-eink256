.class public final Lcom/amazon/kcp/goodreads/GoodreadsApiManager$Companion;
.super Ljava/lang/Object;
.source "GoodreadsApiManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/goodreads/GoodreadsApiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/amazon/kcp/goodreads/GoodreadsApiManager$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Landroid/content/Context;)Lcom/amazon/kcp/goodreads/IGoodreadsApiManager;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance v0, Lcom/amazon/kcp/goodreads/GoodreadsApiManager;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    const-string v2, "Utils.getFactory()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getWebRequestManager()Lcom/amazon/kindle/webservices/IWebRequestManager;

    move-result-object v1

    const-string v2, "Utils.getFactory().webRequestManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/amazon/ras/uservalidation/DeviceType;->FIRE:Lcom/amazon/ras/uservalidation/DeviceType;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/amazon/ras/uservalidation/DeviceType;->ANDROID:Lcom/amazon/ras/uservalidation/DeviceType;

    :goto_0
    invoke-static {p1, v2}, Lcom/amazon/ras/uservalidation/factories/GoodreadsAccountUtilFactory;->getGoodreadsAccountUtil(Landroid/content/Context;Lcom/amazon/ras/uservalidation/DeviceType;)Lcom/amazon/ras/uservalidation/IGoodreadsAccountUtil;

    move-result-object p1

    const-string v2, "GoodreadsAccountUtilFact\u2026 else DeviceType.ANDROID)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {v0, v1, p1}, Lcom/amazon/kcp/goodreads/GoodreadsApiManager;-><init>(Lcom/amazon/kindle/webservices/IWebRequestManager;Lcom/amazon/ras/uservalidation/IGoodreadsAccountUtil;)V

    return-object v0
.end method
