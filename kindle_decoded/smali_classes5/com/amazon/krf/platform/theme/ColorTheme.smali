.class public Lcom/amazon/krf/platform/theme/ColorTheme;
.super Ljava/lang/Object;
.source "ColorTheme.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/amazon/krf/platform/theme/ColorSetting;",
        ">;"
    }
.end annotation


# instance fields
.field private final mColors:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContrastAdjustmentEnabled:Z

.field private mFillColorContrastRatio:F

.field private mInkColorContrastRatio:F

.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/krf/platform/theme/ColorTheme;->mColors:Ljava/util/HashMap;

    const/high16 v0, 0x40800000    # 4.0f

    .line 20
    iput v0, p0, Lcom/amazon/krf/platform/theme/ColorTheme;->mInkColorContrastRatio:F

    const v0, 0x3f99999a    # 1.2f

    .line 26
    iput v0, p0, Lcom/amazon/krf/platform/theme/ColorTheme;->mFillColorContrastRatio:F

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/amazon/krf/platform/theme/ColorTheme;->mContrastAdjustmentEnabled:Z

    if-nez p1, :cond_0

    const-string p1, ""

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/amazon/krf/platform/theme/ColorTheme;->mName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazon/krf/platform/theme/ColorTheme;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/amazon/krf/platform/theme/ColorTheme;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p2}, Lcom/amazon/krf/platform/theme/ColorTheme;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/krf/platform/theme/ColorSetting;

    .line 49
    invoke-virtual {p0, p2}, Lcom/amazon/krf/platform/theme/ColorTheme;->setColor(Lcom/amazon/krf/platform/theme/ColorSetting;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final getColor(Ljava/lang/String;)I
    .locals 1

    const/4 v0, -0x1

    .line 66
    invoke-virtual {p0, p1, v0}, Lcom/amazon/krf/platform/theme/ColorTheme;->getColor(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public final getColor(Ljava/lang/String;I)I
    .locals 1

    .line 76
    invoke-virtual {p0, p1}, Lcom/amazon/krf/platform/theme/ColorTheme;->hasColor(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object p2, p0, Lcom/amazon/krf/platform/theme/ColorTheme;->mColors:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method public getContrastAdjustmentEnabled()Z
    .locals 1

    .line 178
    iget-boolean v0, p0, Lcom/amazon/krf/platform/theme/ColorTheme;->mContrastAdjustmentEnabled:Z

    return v0
.end method

.method public getFillColorContrastRatio()F
    .locals 1

    .line 170
    iget v0, p0, Lcom/amazon/krf/platform/theme/ColorTheme;->mFillColorContrastRatio:F

    return v0
.end method

.method public getInkColorContrastRatio()F
    .locals 1

    .line 162
    iget v0, p0, Lcom/amazon/krf/platform/theme/ColorTheme;->mInkColorContrastRatio:F

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazon/krf/platform/theme/ColorTheme;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public hasColor(Ljava/lang/String;)Z
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/amazon/krf/platform/theme/ColorTheme;->mColors:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/amazon/krf/platform/theme/ColorSetting;",
            ">;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/amazon/krf/platform/theme/ColorTheme;->mColors:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 113
    new-instance v1, Lcom/amazon/krf/platform/theme/ColorTheme$1;

    invoke-direct {v1, p0, v0}, Lcom/amazon/krf/platform/theme/ColorTheme$1;-><init>(Lcom/amazon/krf/platform/theme/ColorTheme;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public setColor(Ljava/lang/String;I)Lcom/amazon/krf/platform/theme/ColorTheme;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/amazon/krf/platform/theme/ColorTheme;->mColors:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setColor(Lcom/amazon/krf/platform/theme/ColorSetting;)V
    .locals 1

    .line 100
    invoke-virtual {p1}, Lcom/amazon/krf/platform/theme/ColorSetting;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/krf/platform/theme/ColorSetting;->getColor()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/amazon/krf/platform/theme/ColorTheme;->setColor(Ljava/lang/String;I)Lcom/amazon/krf/platform/theme/ColorTheme;

    return-void
.end method

.method public setContrastAdjustmentEnabled(Z)V
    .locals 0

    .line 154
    iput-boolean p1, p0, Lcom/amazon/krf/platform/theme/ColorTheme;->mContrastAdjustmentEnabled:Z

    return-void
.end method

.method public setFillColorContrastRatio(F)V
    .locals 0

    .line 146
    iput p1, p0, Lcom/amazon/krf/platform/theme/ColorTheme;->mFillColorContrastRatio:F

    return-void
.end method

.method public setInkColorContrastRatio(F)V
    .locals 0

    .line 138
    iput p1, p0, Lcom/amazon/krf/platform/theme/ColorTheme;->mInkColorContrastRatio:F

    return-void
.end method
