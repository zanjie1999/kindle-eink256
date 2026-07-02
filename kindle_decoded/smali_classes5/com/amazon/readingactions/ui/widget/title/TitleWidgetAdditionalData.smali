.class public final Lcom/amazon/readingactions/ui/widget/title/TitleWidgetAdditionalData;
.super Ljava/lang/Object;
.source "TitleWidgetAdditionalData.kt"


# instance fields
.field private final headerWidgetDef:Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

.field private final layout:Lcom/amazon/startactions/ui/layout/Layout;

.field private final timeToReadWidgetDef:Lcom/amazon/ea/sidecar/def/widgets/TimeToReadWidgetDef;


# direct methods
.method public constructor <init>(Lcom/amazon/ea/sidecar/def/widgets/TimeToReadWidgetDef;Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;Lcom/amazon/startactions/ui/layout/Layout;)V
    .locals 1

    const-string/jumbo v0, "timeToReadWidgetDef"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headerWidgetDef"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layout"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/title/TitleWidgetAdditionalData;->timeToReadWidgetDef:Lcom/amazon/ea/sidecar/def/widgets/TimeToReadWidgetDef;

    iput-object p2, p0, Lcom/amazon/readingactions/ui/widget/title/TitleWidgetAdditionalData;->headerWidgetDef:Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    iput-object p3, p0, Lcom/amazon/readingactions/ui/widget/title/TitleWidgetAdditionalData;->layout:Lcom/amazon/startactions/ui/layout/Layout;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/readingactions/ui/widget/title/TitleWidgetAdditionalData;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/readingactions/ui/widget/title/TitleWidgetAdditionalData;

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/title/TitleWidgetAdditionalData;->timeToReadWidgetDef:Lcom/amazon/ea/sidecar/def/widgets/TimeToReadWidgetDef;

    iget-object v1, p1, Lcom/amazon/readingactions/ui/widget/title/TitleWidgetAdditionalData;->timeToReadWidgetDef:Lcom/amazon/ea/sidecar/def/widgets/TimeToReadWidgetDef;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/title/TitleWidgetAdditionalData;->headerWidgetDef:Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    iget-object v1, p1, Lcom/amazon/readingactions/ui/widget/title/TitleWidgetAdditionalData;->headerWidgetDef:Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/title/TitleWidgetAdditionalData;->layout:Lcom/amazon/startactions/ui/layout/Layout;

    iget-object p1, p1, Lcom/amazon/readingactions/ui/widget/title/TitleWidgetAdditionalData;->layout:Lcom/amazon/startactions/ui/layout/Layout;

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

.method public final getHeaderWidgetDef()Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/title/TitleWidgetAdditionalData;->headerWidgetDef:Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    return-object v0
.end method

.method public final getLayout()Lcom/amazon/startactions/ui/layout/Layout;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/title/TitleWidgetAdditionalData;->layout:Lcom/amazon/startactions/ui/layout/Layout;

    return-object v0
.end method

.method public final getTimeToReadWidgetDef()Lcom/amazon/ea/sidecar/def/widgets/TimeToReadWidgetDef;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/title/TitleWidgetAdditionalData;->timeToReadWidgetDef:Lcom/amazon/ea/sidecar/def/widgets/TimeToReadWidgetDef;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/title/TitleWidgetAdditionalData;->timeToReadWidgetDef:Lcom/amazon/ea/sidecar/def/widgets/TimeToReadWidgetDef;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/title/TitleWidgetAdditionalData;->headerWidgetDef:Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/title/TitleWidgetAdditionalData;->layout:Lcom/amazon/startactions/ui/layout/Layout;

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

    const-string v1, "TitleWidgetAdditionalData(timeToReadWidgetDef="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/title/TitleWidgetAdditionalData;->timeToReadWidgetDef:Lcom/amazon/ea/sidecar/def/widgets/TimeToReadWidgetDef;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", headerWidgetDef="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/title/TitleWidgetAdditionalData;->headerWidgetDef:Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", layout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/title/TitleWidgetAdditionalData;->layout:Lcom/amazon/startactions/ui/layout/Layout;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
