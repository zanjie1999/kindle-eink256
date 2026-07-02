.class public final Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;
.super Ljava/lang/Object;
.source "SpellCorrectionInfo.kt"


# instance fields
.field private final alternateQuery:Ljava/lang/String;

.field private final confidence:Lcom/amazon/kcp/search/store/model/Confidence;

.field private final query:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kcp/search/store/model/Confidence;Ljava/lang/String;)V
    .locals 1

    const-string v0, "alternateQuery"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "confidence"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "query"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;->alternateQuery:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;->confidence:Lcom/amazon/kcp/search/store/model/Confidence;

    iput-object p3, p0, Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;->query:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;

    iget-object v0, p0, Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;->alternateQuery:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;->alternateQuery:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;->confidence:Lcom/amazon/kcp/search/store/model/Confidence;

    iget-object v1, p1, Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;->confidence:Lcom/amazon/kcp/search/store/model/Confidence;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;->query:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;->query:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getAlternateQuery()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;->alternateQuery:Ljava/lang/String;

    return-object v0
.end method

.method public final getConfidence()Lcom/amazon/kcp/search/store/model/Confidence;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;->confidence:Lcom/amazon/kcp/search/store/model/Confidence;

    return-object v0
.end method

.method public final getQuery()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;->query:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;->alternateQuery:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;->confidence:Lcom/amazon/kcp/search/store/model/Confidence;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;->query:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpellCorrectionInfo(alternateQuery="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;->alternateQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", confidence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;->confidence:Lcom/amazon/kcp/search/store/model/Confidence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", query="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;->query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
