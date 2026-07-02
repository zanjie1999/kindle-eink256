.class public final Lcom/amazon/kindle/cms/api/ItemHelper;
.super Ljava/lang/Object;
.source "ItemHelper.java"


# static fields
.field private static final SEPARATOR:C = '\u0001'


# direct methods
.method public static packFlagSet(Ljava/util/EnumSet;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;:",
            "Lcom/amazon/kindle/cms/api/AbstractItem$Valuable;",
            ">(",
            "Ljava/util/EnumSet<",
            "TE;>;)I"
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Enum;

    .line 84
    check-cast v1, Lcom/amazon/kindle/cms/api/AbstractItem$Valuable;

    invoke-interface {v1}, Lcom/amazon/kindle/cms/api/AbstractItem$Valuable;->getValue()I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method static packItemKindStatus(ILjava/util/EnumSet;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/EnumSet<",
            "Lcom/amazon/kindle/cms/api/Item$ItemFlag;",
            ">;)I"
        }
    .end annotation

    .line 142
    invoke-static {p1}, Lcom/amazon/kindle/cms/api/ItemHelper;->packFlagSet(Ljava/util/EnumSet;)I

    move-result p1

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0
.end method

.method static packLocationStatus(Lcom/amazon/kindle/cms/api/ItemLocation;Lcom/amazon/kindle/cms/api/Progress;)I
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 242
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/cms/api/ItemLocation;->getValue()I

    move-result p0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    .line 243
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kindle/cms/api/Progress;->asPercentage()I

    move-result v0

    :goto_1
    shl-int/lit8 p1, v0, 0x5

    or-int/2addr p0, p1

    return p0
.end method

.method static packPeriodicalKindStatus(Ljava/util/EnumSet;Lcom/amazon/kindle/cms/api/PeriodicalItem$Kind;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/amazon/kindle/cms/api/PeriodicalItem$GlobalFlag;",
            ">;",
            "Lcom/amazon/kindle/cms/api/PeriodicalItem$Kind;",
            ")I"
        }
    .end annotation

    .line 170
    invoke-static {p0}, Lcom/amazon/kindle/cms/api/ItemHelper;->packFlagSet(Ljava/util/EnumSet;)I

    move-result p0

    invoke-virtual {p1}, Lcom/amazon/kindle/cms/api/PeriodicalItem$Kind;->getValue()I

    move-result p1

    shl-int/lit8 p1, p1, 0x13

    or-int/2addr p0, p1

    return p0
.end method

.method static packReadableUserStatus(Lcom/amazon/kindle/cms/api/Progress;Ljava/util/EnumSet;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;:",
            "Lcom/amazon/kindle/cms/api/AbstractItem$Valuable;",
            ">(",
            "Lcom/amazon/kindle/cms/api/Progress;",
            "Ljava/util/EnumSet<",
            "TE;>;)I"
        }
    .end annotation

    .line 153
    invoke-static {p1}, Lcom/amazon/kindle/cms/api/ItemHelper;->packFlagSet(Ljava/util/EnumSet;)I

    move-result p1

    invoke-virtual {p0}, Lcom/amazon/kindle/cms/api/Progress;->asPercentage()I

    move-result p0

    shl-int/lit8 p0, p0, 0xc

    or-int/2addr p0, p1

    return p0
.end method

.method static packUserFlagStatus(Ljava/util/EnumSet;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/amazon/kindle/cms/api/Item$OriginFlag;",
            ">;)I"
        }
    .end annotation

    .line 147
    invoke-static {p0}, Lcom/amazon/kindle/cms/api/ItemHelper;->packFlagSet(Ljava/util/EnumSet;)I

    move-result p0

    return p0
.end method

.method static updateProgress(Ljava/lang/Integer;Lcom/amazon/kindle/cms/api/Progress;II)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 51
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :cond_0
    if-nez p1, :cond_1

    .line 53
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 55
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    not-int p2, p2

    and-int/2addr p0, p2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 56
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1}, Lcom/amazon/kindle/cms/api/Progress;->asPercentage()I

    move-result p1

    shl-int/2addr p1, p3

    or-int/2addr p0, p1

    return p0
.end method
