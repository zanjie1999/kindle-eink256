.class public final Lcom/amazon/readingactions/ui/widget/ShareBookController$Companion;
.super Ljava/lang/Object;
.source "ShareBookController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/readingactions/ui/widget/ShareBookController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/ShareBookController$Companion;-><init>()V

    return-void
.end method

.method private final getTAG()Ljava/lang/String;
    .locals 1

    .line 28
    invoke-static {}, Lcom/amazon/readingactions/ui/widget/ShareBookController;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final tryCreate(Lcom/amazon/ea/sidecar/def/widgets/ShareBookWidgetDef;)Lcom/amazon/readingactions/ui/widget/ShareBookController;
    .locals 2

    const-string v0, "def"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lcom/amazon/ea/ui/helper/ShareHelper;->isSharingSupported()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "ShareBookUnsupported"

    invoke-static {v0, v1}, Lcom/amazon/ea/metrics/M;->condSet(ZLjava/lang/String;)Z

    if-eqz v0, :cond_1

    .line 41
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 42
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/ShareBookController$Companion;->getTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ShareBookWidgetDef invalidated; share book widget is not supported."

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 47
    :cond_1
    new-instance v0, Lcom/amazon/readingactions/ui/widget/ShareBookController;

    invoke-direct {v0, p1}, Lcom/amazon/readingactions/ui/widget/ShareBookController;-><init>(Lcom/amazon/ea/sidecar/def/widgets/ShareBookWidgetDef;)V

    return-object v0
.end method
