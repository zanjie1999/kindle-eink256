.class public final Lorg/threeten/bp/temporal/TemporalAdjusters;
.super Ljava/lang/Object;
.source "TemporalAdjusters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/threeten/bp/temporal/TemporalAdjusters$RelativeDayOfWeek;
    }
.end annotation


# direct methods
.method public static nextOrSame(Lorg/threeten/bp/DayOfWeek;)Lorg/threeten/bp/temporal/TemporalAdjuster;
    .locals 3

    .line 396
    new-instance v0, Lorg/threeten/bp/temporal/TemporalAdjusters$RelativeDayOfWeek;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/threeten/bp/temporal/TemporalAdjusters$RelativeDayOfWeek;-><init>(ILorg/threeten/bp/DayOfWeek;Lorg/threeten/bp/temporal/TemporalAdjusters$1;)V

    return-object v0
.end method

.method public static previousOrSame(Lorg/threeten/bp/DayOfWeek;)Lorg/threeten/bp/temporal/TemporalAdjuster;
    .locals 3

    .line 437
    new-instance v0, Lorg/threeten/bp/temporal/TemporalAdjusters$RelativeDayOfWeek;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/threeten/bp/temporal/TemporalAdjusters$RelativeDayOfWeek;-><init>(ILorg/threeten/bp/DayOfWeek;Lorg/threeten/bp/temporal/TemporalAdjusters$1;)V

    return-object v0
.end method
