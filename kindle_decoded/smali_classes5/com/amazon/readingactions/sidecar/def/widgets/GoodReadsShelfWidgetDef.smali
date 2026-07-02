.class public final Lcom/amazon/readingactions/sidecar/def/widgets/GoodReadsShelfWidgetDef;
.super Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
.source "GoodReadsShelfWidgetDef.kt"


# instance fields
.field private final goodreadsShelfData:Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object p5, p0, Lcom/amazon/readingactions/sidecar/def/widgets/GoodReadsShelfWidgetDef;->goodreadsShelfData:Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;

    return-void
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

    .line 25
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/amazon/readingactions/sidecar/def/widgets/GoodReadsShelfWidgetDef;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v0

    if-eqz v2, :cond_2

    return v1

    .line 28
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/amazon/readingactions/sidecar/def/widgets/GoodReadsShelfWidgetDef;

    .line 29
    invoke-super {p0, p1}, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 30
    iget-object p1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/GoodReadsShelfWidgetDef;->goodreadsShelfData:Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;

    iget-object v2, v2, Lcom/amazon/readingactions/sidecar/def/widgets/GoodReadsShelfWidgetDef;->goodreadsShelfData:Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;

    invoke-static {p1, v2}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getGoodreadsShelfData()Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/amazon/readingactions/sidecar/def/widgets/GoodReadsShelfWidgetDef;->goodreadsShelfData:Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 34
    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/GoodReadsShelfWidgetDef;->goodreadsShelfData:Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/amazon/ea/guava/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected toStringHelper()Lcom/amazon/ea/guava/Objects$ToStringHelper;
    .locals 3

    .line 38
    invoke-super {p0}, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->toStringHelper()Lcom/amazon/ea/guava/Objects$ToStringHelper;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/GoodReadsShelfWidgetDef;->goodreadsShelfData:Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;

    const-string v2, "goodreadsShelfData"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    const-string/jumbo v1, "super.toStringHelper()\n \u2026ata\", goodreadsShelfData)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
