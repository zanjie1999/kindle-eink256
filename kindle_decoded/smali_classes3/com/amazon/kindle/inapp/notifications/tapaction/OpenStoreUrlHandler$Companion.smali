.class public final Lcom/amazon/kindle/inapp/notifications/tapaction/OpenStoreUrlHandler$Companion;
.super Ljava/lang/Object;
.source "OpenStoreUrlHandler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/inapp/notifications/tapaction/OpenStoreUrlHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenStoreUrlHandler$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getSTORE_URL_ADAPTORS$p(Lcom/amazon/kindle/inapp/notifications/tapaction/OpenStoreUrlHandler$Companion;)Ljava/util/List;
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenStoreUrlHandler$Companion;->getSTORE_URL_ADAPTORS()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final getSTORE_URL_ADAPTORS()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/inapp/notifications/tapaction/openstoreurl/KineticStoreUrlAdaptor;",
            ">;"
        }
    .end annotation

    .line 41
    invoke-static {}, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenStoreUrlHandler;->access$getSTORE_URL_ADAPTORS$cp()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
