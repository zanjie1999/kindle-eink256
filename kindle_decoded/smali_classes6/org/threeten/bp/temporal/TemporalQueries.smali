.class public final Lorg/threeten/bp/temporal/TemporalQueries;
.super Ljava/lang/Object;
.source "TemporalQueries.java"


# static fields
.field static final CHRONO:Lorg/threeten/bp/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/temporal/TemporalQuery<",
            "Lorg/threeten/bp/chrono/Chronology;",
            ">;"
        }
    .end annotation
.end field

.field static final LOCAL_DATE:Lorg/threeten/bp/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/temporal/TemporalQuery<",
            "Lorg/threeten/bp/LocalDate;",
            ">;"
        }
    .end annotation
.end field

.field static final LOCAL_TIME:Lorg/threeten/bp/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/temporal/TemporalQuery<",
            "Lorg/threeten/bp/LocalTime;",
            ">;"
        }
    .end annotation
.end field

.field static final OFFSET:Lorg/threeten/bp/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/temporal/TemporalQuery<",
            "Lorg/threeten/bp/ZoneOffset;",
            ">;"
        }
    .end annotation
.end field

.field static final PRECISION:Lorg/threeten/bp/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/temporal/TemporalQuery<",
            "Lorg/threeten/bp/temporal/TemporalUnit;",
            ">;"
        }
    .end annotation
.end field

.field static final ZONE:Lorg/threeten/bp/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/temporal/TemporalQuery<",
            "Lorg/threeten/bp/ZoneId;",
            ">;"
        }
    .end annotation
.end field

.field static final ZONE_ID:Lorg/threeten/bp/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/temporal/TemporalQuery<",
            "Lorg/threeten/bp/ZoneId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 123
    new-instance v0, Lorg/threeten/bp/temporal/TemporalQueries$1;

    invoke-direct {v0}, Lorg/threeten/bp/temporal/TemporalQueries$1;-><init>()V

    sput-object v0, Lorg/threeten/bp/temporal/TemporalQueries;->ZONE_ID:Lorg/threeten/bp/temporal/TemporalQuery;

    .line 168
    new-instance v0, Lorg/threeten/bp/temporal/TemporalQueries$2;

    invoke-direct {v0}, Lorg/threeten/bp/temporal/TemporalQueries$2;-><init>()V

    sput-object v0, Lorg/threeten/bp/temporal/TemporalQueries;->CHRONO:Lorg/threeten/bp/temporal/TemporalQuery;

    .line 211
    new-instance v0, Lorg/threeten/bp/temporal/TemporalQueries$3;

    invoke-direct {v0}, Lorg/threeten/bp/temporal/TemporalQueries$3;-><init>()V

    sput-object v0, Lorg/threeten/bp/temporal/TemporalQueries;->PRECISION:Lorg/threeten/bp/temporal/TemporalQuery;

    .line 242
    new-instance v0, Lorg/threeten/bp/temporal/TemporalQueries$4;

    invoke-direct {v0}, Lorg/threeten/bp/temporal/TemporalQueries$4;-><init>()V

    sput-object v0, Lorg/threeten/bp/temporal/TemporalQueries;->ZONE:Lorg/threeten/bp/temporal/TemporalQuery;

    .line 265
    new-instance v0, Lorg/threeten/bp/temporal/TemporalQueries$5;

    invoke-direct {v0}, Lorg/threeten/bp/temporal/TemporalQueries$5;-><init>()V

    sput-object v0, Lorg/threeten/bp/temporal/TemporalQueries;->OFFSET:Lorg/threeten/bp/temporal/TemporalQuery;

    .line 290
    new-instance v0, Lorg/threeten/bp/temporal/TemporalQueries$6;

    invoke-direct {v0}, Lorg/threeten/bp/temporal/TemporalQueries$6;-><init>()V

    sput-object v0, Lorg/threeten/bp/temporal/TemporalQueries;->LOCAL_DATE:Lorg/threeten/bp/temporal/TemporalQuery;

    .line 315
    new-instance v0, Lorg/threeten/bp/temporal/TemporalQueries$7;

    invoke-direct {v0}, Lorg/threeten/bp/temporal/TemporalQueries$7;-><init>()V

    sput-object v0, Lorg/threeten/bp/temporal/TemporalQueries;->LOCAL_TIME:Lorg/threeten/bp/temporal/TemporalQuery;

    return-void
.end method

.method public static final chronology()Lorg/threeten/bp/temporal/TemporalQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/threeten/bp/temporal/TemporalQuery<",
            "Lorg/threeten/bp/chrono/Chronology;",
            ">;"
        }
    .end annotation

    .line 166
    sget-object v0, Lorg/threeten/bp/temporal/TemporalQueries;->CHRONO:Lorg/threeten/bp/temporal/TemporalQuery;

    return-object v0
.end method

.method public static final localDate()Lorg/threeten/bp/temporal/TemporalQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/threeten/bp/temporal/TemporalQuery<",
            "Lorg/threeten/bp/LocalDate;",
            ">;"
        }
    .end annotation

    .line 288
    sget-object v0, Lorg/threeten/bp/temporal/TemporalQueries;->LOCAL_DATE:Lorg/threeten/bp/temporal/TemporalQuery;

    return-object v0
.end method

.method public static final localTime()Lorg/threeten/bp/temporal/TemporalQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/threeten/bp/temporal/TemporalQuery<",
            "Lorg/threeten/bp/LocalTime;",
            ">;"
        }
    .end annotation

    .line 313
    sget-object v0, Lorg/threeten/bp/temporal/TemporalQueries;->LOCAL_TIME:Lorg/threeten/bp/temporal/TemporalQuery;

    return-object v0
.end method

.method public static final offset()Lorg/threeten/bp/temporal/TemporalQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/threeten/bp/temporal/TemporalQuery<",
            "Lorg/threeten/bp/ZoneOffset;",
            ">;"
        }
    .end annotation

    .line 263
    sget-object v0, Lorg/threeten/bp/temporal/TemporalQueries;->OFFSET:Lorg/threeten/bp/temporal/TemporalQuery;

    return-object v0
.end method

.method public static final precision()Lorg/threeten/bp/temporal/TemporalQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/threeten/bp/temporal/TemporalQuery<",
            "Lorg/threeten/bp/temporal/TemporalUnit;",
            ">;"
        }
    .end annotation

    .line 209
    sget-object v0, Lorg/threeten/bp/temporal/TemporalQueries;->PRECISION:Lorg/threeten/bp/temporal/TemporalQuery;

    return-object v0
.end method

.method public static final zone()Lorg/threeten/bp/temporal/TemporalQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/threeten/bp/temporal/TemporalQuery<",
            "Lorg/threeten/bp/ZoneId;",
            ">;"
        }
    .end annotation

    .line 240
    sget-object v0, Lorg/threeten/bp/temporal/TemporalQueries;->ZONE:Lorg/threeten/bp/temporal/TemporalQuery;

    return-object v0
.end method

.method public static final zoneId()Lorg/threeten/bp/temporal/TemporalQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/threeten/bp/temporal/TemporalQuery<",
            "Lorg/threeten/bp/ZoneId;",
            ">;"
        }
    .end annotation

    .line 121
    sget-object v0, Lorg/threeten/bp/temporal/TemporalQueries;->ZONE_ID:Lorg/threeten/bp/temporal/TemporalQuery;

    return-object v0
.end method
