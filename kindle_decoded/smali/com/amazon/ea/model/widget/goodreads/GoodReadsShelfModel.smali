.class public final Lcom/amazon/ea/model/widget/goodreads/GoodReadsShelfModel;
.super Lcom/amazon/ea/model/widget/WidgetModel;
.source "GoodReadsShelfModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ea/model/widget/goodreads/GoodReadsShelfModel$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/ea/model/widget/goodreads/GoodReadsShelfModel$Companion;

.field private static final SUPPORTED_DISPLAY_FORMATS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/amazon/ea/model/widget/WidgetDisplayFormat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final goodReadsShelfData:Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/amazon/ea/model/widget/goodreads/GoodReadsShelfModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/ea/model/widget/goodreads/GoodReadsShelfModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/ea/model/widget/goodreads/GoodReadsShelfModel;->Companion:Lcom/amazon/ea/model/widget/goodreads/GoodReadsShelfModel$Companion;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/amazon/ea/model/widget/WidgetDisplayFormat;

    .line 18
    sget-object v1, Lcom/amazon/ea/model/widget/WidgetDisplayFormat;->FULL_WIDTH:Lcom/amazon/ea/model/widget/WidgetDisplayFormat;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/amazon/ea/guava/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/amazon/ea/model/widget/goodreads/GoodReadsShelfModel;->SUPPORTED_DISPLAY_FORMATS:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "metricsTag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/amazon/ea/model/widget/WidgetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/amazon/ea/model/widget/goodreads/GoodReadsShelfModel;->goodReadsShelfData:Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;

    return-void
.end method

.method public static final synthetic access$getSUPPORTED_DISPLAY_FORMATS$cp()Ljava/util/HashSet;
    .locals 1

    .line 9
    sget-object v0, Lcom/amazon/ea/model/widget/goodreads/GoodReadsShelfModel;->SUPPORTED_DISPLAY_FORMATS:Ljava/util/HashSet;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 28
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/amazon/ea/model/widget/goodreads/GoodReadsShelfModel;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v0

    if-eqz v2, :cond_2

    return v1

    .line 31
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/amazon/ea/model/widget/goodreads/GoodReadsShelfModel;

    .line 32
    invoke-super {p0, p1}, Lcom/amazon/ea/model/widget/WidgetModel;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 33
    iget-object p1, p0, Lcom/amazon/ea/model/widget/goodreads/GoodReadsShelfModel;->goodReadsShelfData:Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;

    iget-object v2, v2, Lcom/amazon/ea/model/widget/goodreads/GoodReadsShelfModel;->goodReadsShelfData:Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;

    invoke-static {p1, v2}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getGoodReadsShelfData()Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/amazon/ea/model/widget/goodreads/GoodReadsShelfModel;->goodReadsShelfData:Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 37
    iget-object v1, p0, Lcom/amazon/ea/model/widget/WidgetModel;->id:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/model/widget/goodreads/GoodReadsShelfModel;->goodReadsShelfData:Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/amazon/ea/guava/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public supports(Ljava/util/Set;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/amazon/ea/model/widget/WidgetDisplayFormat;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "formats"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    sget-object v0, Lcom/amazon/ea/model/widget/goodreads/GoodReadsShelfModel;->Companion:Lcom/amazon/ea/model/widget/goodreads/GoodReadsShelfModel$Companion;

    invoke-static {v0}, Lcom/amazon/ea/model/widget/goodreads/GoodReadsShelfModel$Companion;->access$getSUPPORTED_DISPLAY_FORMATS$p(Lcom/amazon/ea/model/widget/goodreads/GoodReadsShelfModel$Companion;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method protected toStringHelper()Lcom/amazon/ea/guava/Objects$ToStringHelper;
    .locals 3

    .line 41
    invoke-super {p0}, Lcom/amazon/ea/model/widget/WidgetModel;->toStringHelper()Lcom/amazon/ea/guava/Objects$ToStringHelper;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/amazon/ea/model/widget/goodreads/GoodReadsShelfModel;->goodReadsShelfData:Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;

    const-string v2, "goodReadsShelfData"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    const-string/jumbo v1, "super.toStringHelper()\n \u2026ata\", goodReadsShelfData)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
