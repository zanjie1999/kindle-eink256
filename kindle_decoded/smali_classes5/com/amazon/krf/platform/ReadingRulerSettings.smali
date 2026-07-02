.class public Lcom/amazon/krf/platform/ReadingRulerSettings;
.super Ljava/lang/Object;
.source "ReadingRulerSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/krf/platform/ReadingRulerSettings$RulerStyle;
    }
.end annotation


# instance fields
.field private m_allowPositionChange:Z

.field private m_color:I

.field private m_numLinesInRuler:I

.field private m_opacity:F

.field private m_style:Lcom/amazon/krf/platform/ReadingRulerSettings$RulerStyle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0xff0000

    .line 10
    iput v0, p0, Lcom/amazon/krf/platform/ReadingRulerSettings;->m_color:I

    const v0, 0x3e99999a    # 0.3f

    .line 11
    iput v0, p0, Lcom/amazon/krf/platform/ReadingRulerSettings;->m_opacity:F

    const/4 v0, 0x5

    .line 12
    iput v0, p0, Lcom/amazon/krf/platform/ReadingRulerSettings;->m_numLinesInRuler:I

    .line 13
    sget-object v0, Lcom/amazon/krf/platform/ReadingRulerSettings$RulerStyle;->STYLE_BANDED:Lcom/amazon/krf/platform/ReadingRulerSettings$RulerStyle;

    iput-object v0, p0, Lcom/amazon/krf/platform/ReadingRulerSettings;->m_style:Lcom/amazon/krf/platform/ReadingRulerSettings$RulerStyle;

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/amazon/krf/platform/ReadingRulerSettings;->m_allowPositionChange:Z

    return-void
.end method


# virtual methods
.method public getAllowPositionChange()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/amazon/krf/platform/ReadingRulerSettings;->m_allowPositionChange:Z

    return v0
.end method

.method public getColor()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/amazon/krf/platform/ReadingRulerSettings;->m_color:I

    return v0
.end method

.method public getNumLinesInRuler()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/amazon/krf/platform/ReadingRulerSettings;->m_numLinesInRuler:I

    return v0
.end method

.method public getOpacity()F
    .locals 1

    .line 50
    iget v0, p0, Lcom/amazon/krf/platform/ReadingRulerSettings;->m_opacity:F

    return v0
.end method

.method public getStyle()Lcom/amazon/krf/platform/ReadingRulerSettings$RulerStyle;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/amazon/krf/platform/ReadingRulerSettings;->m_style:Lcom/amazon/krf/platform/ReadingRulerSettings$RulerStyle;

    return-object v0
.end method

.method public getStyleOrdinal()I
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazon/krf/platform/ReadingRulerSettings;->m_style:Lcom/amazon/krf/platform/ReadingRulerSettings$RulerStyle;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public setAllowPositionChange(Z)V
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/amazon/krf/platform/ReadingRulerSettings;->m_allowPositionChange:Z

    return-void
.end method

.method public setColor(I)V
    .locals 0

    .line 18
    iput p1, p0, Lcom/amazon/krf/platform/ReadingRulerSettings;->m_color:I

    return-void
.end method

.method public setNumLinesInRuler(I)V
    .locals 0

    .line 26
    iput p1, p0, Lcom/amazon/krf/platform/ReadingRulerSettings;->m_numLinesInRuler:I

    return-void
.end method

.method public setOpacity(F)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/amazon/krf/platform/ReadingRulerSettings;->m_opacity:F

    return-void
.end method

.method public setStyle(Lcom/amazon/krf/platform/ReadingRulerSettings$RulerStyle;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/amazon/krf/platform/ReadingRulerSettings;->m_style:Lcom/amazon/krf/platform/ReadingRulerSettings$RulerStyle;

    return-void
.end method
