.class public final Lcom/amazon/kindle/home/model/CardData;
.super Ljava/lang/Object;
.source "HomeModels.kt"


# instance fields
.field private final id:Ljava/lang/String;

.field private index:I

.field private final linkParams:Ljava/lang/String;

.field private final pinned:Z

.field private final reftag:Ljava/lang/String;

.field private final sessionId:Ljava/lang/String;

.field private final sidekickMetadata:Ljava/lang/String;

.field private final templateId:Ljava/lang/String;

.field private final weight:I

.field private final zones:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/home/model/HomeZone;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/amazon/kindle/home/model/HomeZone;",
            ">;",
            "Ljava/lang/String;",
            "IIZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "templateId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "zones"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reftag"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/home/model/CardData;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/kindle/home/model/CardData;->templateId:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kindle/home/model/CardData;->zones:Ljava/util/Map;

    iput-object p4, p0, Lcom/amazon/kindle/home/model/CardData;->reftag:Ljava/lang/String;

    iput p5, p0, Lcom/amazon/kindle/home/model/CardData;->weight:I

    iput p6, p0, Lcom/amazon/kindle/home/model/CardData;->index:I

    iput-boolean p7, p0, Lcom/amazon/kindle/home/model/CardData;->pinned:Z

    iput-object p8, p0, Lcom/amazon/kindle/home/model/CardData;->sessionId:Ljava/lang/String;

    iput-object p9, p0, Lcom/amazon/kindle/home/model/CardData;->linkParams:Ljava/lang/String;

    iput-object p10, p0, Lcom/amazon/kindle/home/model/CardData;->sidekickMetadata:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getId()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/amazon/kindle/home/model/CardData;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getIndex()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/amazon/kindle/home/model/CardData;->index:I

    return v0
.end method

.method public final getLinkParams()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/amazon/kindle/home/model/CardData;->linkParams:Ljava/lang/String;

    return-object v0
.end method

.method public final getPinned()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lcom/amazon/kindle/home/model/CardData;->pinned:Z

    return v0
.end method

.method public final getReftag()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/amazon/kindle/home/model/CardData;->reftag:Ljava/lang/String;

    return-object v0
.end method

.method public final getSessionId()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amazon/kindle/home/model/CardData;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSidekickMetadata()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/amazon/kindle/home/model/CardData;->sidekickMetadata:Ljava/lang/String;

    return-object v0
.end method

.method public final getTemplateId()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/amazon/kindle/home/model/CardData;->templateId:Ljava/lang/String;

    return-object v0
.end method

.method public final getWeight()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/amazon/kindle/home/model/CardData;->weight:I

    return v0
.end method

.method public final getZones()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/home/model/HomeZone;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/amazon/kindle/home/model/CardData;->zones:Ljava/util/Map;

    return-object v0
.end method

.method public final setIndex(I)V
    .locals 0

    .line 23
    iput p1, p0, Lcom/amazon/kindle/home/model/CardData;->index:I

    return-void
.end method
