.class public final Lcom/audible/hushpuppy/common/player/NarrationRate;
.super Ljava/lang/Object;
.source "NarrationRate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/hushpuppy/common/player/NarrationRate$Rate;
    }
.end annotation


# static fields
.field private static final DEFAULT_TEMPO:I = 0x64

.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

.field private static final TEMPO_PCT:F = 100.0f


# instance fields
.field private currentRateIndex:I

.field private tempoMap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/audible/hushpuppy/common/player/NarrationRate$Rate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/common/player/NarrationRate;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/common/player/NarrationRate;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/audible/hushpuppy/common/player/NarrationRate;->tempoMap:Ljava/util/ArrayList;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$array;->narration_speed_values_array:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$array;->narration_speed_x_text_array:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->player_narration_rate_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/hushpuppy/plugin/R$array;->narration_speed_description_text_array:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x64

    move-object v2, p0

    .line 45
    invoke-direct/range {v2 .. v7}, Lcom/audible/hushpuppy/common/player/NarrationRate;->setup([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)V

    return-void
.end method

.method private findRate(F)Lcom/audible/hushpuppy/common/player/NarrationRate$Rate;
    .locals 3

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p1, p1, v0

    .line 155
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 157
    iget-object v0, p0, Lcom/audible/hushpuppy/common/player/NarrationRate;->tempoMap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/hushpuppy/common/player/NarrationRate$Rate;

    .line 158
    invoke-virtual {v1}, Lcom/audible/hushpuppy/common/player/NarrationRate$Rate;->getTempo()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private isDefaultTempoRate(II)Z
    .locals 0

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private setDefaultTempoRateIndex(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 81
    :goto_0
    iget-object v2, p0, Lcom/audible/hushpuppy/common/player/NarrationRate;->tempoMap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 82
    iget-object v2, p0, Lcom/audible/hushpuppy/common/player/NarrationRate;->tempoMap:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/audible/hushpuppy/common/player/NarrationRate$Rate;

    invoke-virtual {v2}, Lcom/audible/hushpuppy/common/player/NarrationRate$Rate;->getTempo()I

    move-result v2

    invoke-direct {p0, v2, p1}, Lcom/audible/hushpuppy/common/player/NarrationRate;->isDefaultTempoRate(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    iput v1, p0, Lcom/audible/hushpuppy/common/player/NarrationRate;->currentRateIndex:I

    .line 84
    sget-object v0, Lcom/audible/hushpuppy/common/player/NarrationRate;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDefaultTempoRateIndex(newDefaultSpeed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") -> currentRateIndex is now "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/audible/hushpuppy/common/player/NarrationRate;->currentRateIndex:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " which corresponds to "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/audible/hushpuppy/common/player/NarrationRate;->tempoMap:Ljava/util/ArrayList;

    iget v2, p0, Lcom/audible/hushpuppy/common/player/NarrationRate;->currentRateIndex:I

    .line 85
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/hushpuppy/common/player/NarrationRate$Rate;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/player/NarrationRate$Rate;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 84
    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const v1, 0x7fffffff

    const/4 v1, 0x0

    const v2, 0x7fffffff

    .line 95
    :goto_1
    iget-object v3, p0, Lcom/audible/hushpuppy/common/player/NarrationRate;->tempoMap:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 96
    iget-object v3, p0, Lcom/audible/hushpuppy/common/player/NarrationRate;->tempoMap:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/audible/hushpuppy/common/player/NarrationRate$Rate;

    invoke-virtual {v3}, Lcom/audible/hushpuppy/common/player/NarrationRate$Rate;->getTempo()I

    move-result v3

    sub-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v2, :cond_2

    move v1, v0

    move v2, v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 102
    :cond_3
    iput v1, p0, Lcom/audible/hushpuppy/common/player/NarrationRate;->currentRateIndex:I

    .line 104
    sget-object v0, Lcom/audible/hushpuppy/common/player/NarrationRate;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDefaultTempoRateIndex(newSpeed:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") -> couldnt find option for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", so chose "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/audible/hushpuppy/common/player/NarrationRate;->tempoMap:Ljava/util/ArrayList;

    iget v3, p0, Lcom/audible/hushpuppy/common/player/NarrationRate;->currentRateIndex:I

    .line 105
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/hushpuppy/common/player/NarrationRate$Rate;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/player/NarrationRate$Rate;->getTempo()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " which is only off by "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 104
    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void
.end method

.method private setup([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 66
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 67
    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 68
    new-instance v3, Lcom/audible/hushpuppy/common/player/NarrationRate$Rate;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v5, p2, v1

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aget-object v7, p4, v1

    aput-object v7, v6, v0

    invoke-static {p3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/audible/hushpuppy/common/player/NarrationRate$Rate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v4, p0, Lcom/audible/hushpuppy/common/player/NarrationRate;->tempoMap:Ljava/util/ArrayList;

    invoke-virtual {v4, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 70
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2, p5}, Lcom/audible/hushpuppy/common/player/NarrationRate;->isDefaultTempoRate(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    iput v1, p0, Lcom/audible/hushpuppy/common/player/NarrationRate;->currentRateIndex:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getTempo()I
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/audible/hushpuppy/common/player/NarrationRate;->tempoMap:Ljava/util/ArrayList;

    iget v1, p0, Lcom/audible/hushpuppy/common/player/NarrationRate;->currentRateIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/common/player/NarrationRate$Rate;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/common/player/NarrationRate$Rate;->getTempo()I

    move-result v0

    return v0
.end method

.method public getTempoFloat()F
    .locals 2

    .line 179
    invoke-virtual {p0}, Lcom/audible/hushpuppy/common/player/NarrationRate;->getTempo()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getTempoText(F)Ljava/lang/String;
    .locals 3

    .line 125
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/common/player/NarrationRate;->findRate(F)Lcom/audible/hushpuppy/common/player/NarrationRate$Rate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0}, Lcom/audible/hushpuppy/common/player/NarrationRate$Rate;->getText()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 129
    :cond_0
    sget-object v0, Lcom/audible/hushpuppy/common/player/NarrationRate;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t find a match for narration tempo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    const-string p1, ""

    return-object p1
.end method

.method public setNarrationTempoToNormal()V
    .locals 1

    const/16 v0, 0x64

    .line 206
    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/common/player/NarrationRate;->setDefaultTempoRateIndex(I)V

    return-void
.end method

.method public setTempo(F)V
    .locals 3

    .line 187
    sget-object v0, Lcom/audible/hushpuppy/common/player/NarrationRate;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTempo("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p1, p1, v0

    .line 188
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 189
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/common/player/NarrationRate;->setDefaultTempoRateIndex(I)V

    return-void
.end method
