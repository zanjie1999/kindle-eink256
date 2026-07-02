.class public final Lcom/amazon/ea/model/widget/goodreads/GoodReadsShelfModelBuilder$Companion;
.super Ljava/lang/Object;
.source "GoodReadsShelfModelBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/model/widget/goodreads/GoodReadsShelfModelBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/amazon/ea/model/widget/goodreads/GoodReadsShelfModelBuilder$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final build(Lcom/amazon/readingactions/sidecar/def/widgets/GoodReadsShelfWidgetDef;)Lcom/amazon/ea/model/widget/goodreads/GoodReadsShelfModel;
    .locals 4

    const-string v0, "def"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lcom/amazon/ea/util/GrokAvailabilityUtil;->canCreateGoodreadShelfWidget()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/amazon/ea/goodreadsshelf/AutoShelfUtil;->isAutoShelvingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    new-instance v0, Lcom/amazon/ea/model/widget/goodreads/GoodReadsShelfModel;

    iget-object v1, p1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    const-string v2, "def.id"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v3, "def.metricsTag"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/readingactions/sidecar/def/widgets/GoodReadsShelfWidgetDef;->getGoodreadsShelfData()Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/amazon/ea/model/widget/goodreads/GoodReadsShelfModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
