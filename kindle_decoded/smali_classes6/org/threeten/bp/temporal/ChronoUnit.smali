.class public final enum Lorg/threeten/bp/temporal/ChronoUnit;
.super Ljava/lang/Enum;
.source "ChronoUnit.java"

# interfaces
.implements Lorg/threeten/bp/temporal/TemporalUnit;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/threeten/bp/temporal/ChronoUnit;",
        ">;",
        "Lorg/threeten/bp/temporal/TemporalUnit;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/threeten/bp/temporal/ChronoUnit;

.field public static final enum CENTURIES:Lorg/threeten/bp/temporal/ChronoUnit;

.field public static final enum DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

.field public static final enum DECADES:Lorg/threeten/bp/temporal/ChronoUnit;

.field public static final enum ERAS:Lorg/threeten/bp/temporal/ChronoUnit;

.field public static final enum FOREVER:Lorg/threeten/bp/temporal/ChronoUnit;

.field public static final enum HALF_DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

.field public static final enum HOURS:Lorg/threeten/bp/temporal/ChronoUnit;

.field public static final enum MICROS:Lorg/threeten/bp/temporal/ChronoUnit;

.field public static final enum MILLENNIA:Lorg/threeten/bp/temporal/ChronoUnit;

.field public static final enum MILLIS:Lorg/threeten/bp/temporal/ChronoUnit;

.field public static final enum MINUTES:Lorg/threeten/bp/temporal/ChronoUnit;

.field public static final enum MONTHS:Lorg/threeten/bp/temporal/ChronoUnit;

.field public static final enum NANOS:Lorg/threeten/bp/temporal/ChronoUnit;

.field public static final enum SECONDS:Lorg/threeten/bp/temporal/ChronoUnit;

.field public static final enum WEEKS:Lorg/threeten/bp/temporal/ChronoUnit;

.field public static final enum YEARS:Lorg/threeten/bp/temporal/ChronoUnit;


# instance fields
.field private final duration:Lorg/threeten/bp/Duration;

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 59
    new-instance v0, Lorg/threeten/bp/temporal/ChronoUnit;

    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Lorg/threeten/bp/Duration;->ofNanos(J)Lorg/threeten/bp/Duration;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "NANOS"

    const-string v6, "Nanos"

    invoke-direct {v0, v5, v4, v6, v3}, Lorg/threeten/bp/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/Duration;)V

    sput-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->NANOS:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 64
    new-instance v0, Lorg/threeten/bp/temporal/ChronoUnit;

    const-wide/16 v5, 0x3e8

    invoke-static {v5, v6}, Lorg/threeten/bp/Duration;->ofNanos(J)Lorg/threeten/bp/Duration;

    move-result-object v3

    const/4 v5, 0x1

    const-string v6, "MICROS"

    const-string v7, "Micros"

    invoke-direct {v0, v6, v5, v7, v3}, Lorg/threeten/bp/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/Duration;)V

    sput-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->MICROS:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 69
    new-instance v0, Lorg/threeten/bp/temporal/ChronoUnit;

    const-wide/32 v6, 0xf4240

    invoke-static {v6, v7}, Lorg/threeten/bp/Duration;->ofNanos(J)Lorg/threeten/bp/Duration;

    move-result-object v3

    const/4 v6, 0x2

    const-string v7, "MILLIS"

    const-string v8, "Millis"

    invoke-direct {v0, v7, v6, v8, v3}, Lorg/threeten/bp/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/Duration;)V

    sput-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->MILLIS:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 75
    new-instance v0, Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-static {v1, v2}, Lorg/threeten/bp/Duration;->ofSeconds(J)Lorg/threeten/bp/Duration;

    move-result-object v1

    const/4 v2, 0x3

    const-string v3, "SECONDS"

    const-string v7, "Seconds"

    invoke-direct {v0, v3, v2, v7, v1}, Lorg/threeten/bp/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/Duration;)V

    sput-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->SECONDS:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 80
    new-instance v0, Lorg/threeten/bp/temporal/ChronoUnit;

    const-wide/16 v7, 0x3c

    invoke-static {v7, v8}, Lorg/threeten/bp/Duration;->ofSeconds(J)Lorg/threeten/bp/Duration;

    move-result-object v1

    const/4 v3, 0x4

    const-string v7, "MINUTES"

    const-string v8, "Minutes"

    invoke-direct {v0, v7, v3, v8, v1}, Lorg/threeten/bp/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/Duration;)V

    sput-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->MINUTES:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 85
    new-instance v0, Lorg/threeten/bp/temporal/ChronoUnit;

    const-wide/16 v7, 0xe10

    invoke-static {v7, v8}, Lorg/threeten/bp/Duration;->ofSeconds(J)Lorg/threeten/bp/Duration;

    move-result-object v1

    const/4 v7, 0x5

    const-string v8, "HOURS"

    const-string v9, "Hours"

    invoke-direct {v0, v8, v7, v9, v1}, Lorg/threeten/bp/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/Duration;)V

    sput-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->HOURS:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 90
    new-instance v0, Lorg/threeten/bp/temporal/ChronoUnit;

    const-wide/32 v8, 0xa8c0

    invoke-static {v8, v9}, Lorg/threeten/bp/Duration;->ofSeconds(J)Lorg/threeten/bp/Duration;

    move-result-object v1

    const/4 v8, 0x6

    const-string v9, "HALF_DAYS"

    const-string v10, "HalfDays"

    invoke-direct {v0, v9, v8, v10, v1}, Lorg/threeten/bp/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/Duration;)V

    sput-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->HALF_DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 101
    new-instance v0, Lorg/threeten/bp/temporal/ChronoUnit;

    const-wide/32 v9, 0x15180

    invoke-static {v9, v10}, Lorg/threeten/bp/Duration;->ofSeconds(J)Lorg/threeten/bp/Duration;

    move-result-object v1

    const/4 v9, 0x7

    const-string v10, "DAYS"

    const-string v11, "Days"

    invoke-direct {v0, v10, v9, v11, v1}, Lorg/threeten/bp/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/Duration;)V

    sput-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 108
    new-instance v0, Lorg/threeten/bp/temporal/ChronoUnit;

    const-wide/32 v10, 0x93a80

    invoke-static {v10, v11}, Lorg/threeten/bp/Duration;->ofSeconds(J)Lorg/threeten/bp/Duration;

    move-result-object v1

    const/16 v10, 0x8

    const-string v11, "WEEKS"

    const-string v12, "Weeks"

    invoke-direct {v0, v11, v10, v12, v1}, Lorg/threeten/bp/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/Duration;)V

    sput-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->WEEKS:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 116
    new-instance v0, Lorg/threeten/bp/temporal/ChronoUnit;

    const-wide/32 v11, 0x282072

    invoke-static {v11, v12}, Lorg/threeten/bp/Duration;->ofSeconds(J)Lorg/threeten/bp/Duration;

    move-result-object v1

    const/16 v11, 0x9

    const-string v12, "MONTHS"

    const-string v13, "Months"

    invoke-direct {v0, v12, v11, v13, v1}, Lorg/threeten/bp/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/Duration;)V

    sput-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->MONTHS:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 125
    new-instance v0, Lorg/threeten/bp/temporal/ChronoUnit;

    const-wide/32 v12, 0x1e18558

    invoke-static {v12, v13}, Lorg/threeten/bp/Duration;->ofSeconds(J)Lorg/threeten/bp/Duration;

    move-result-object v1

    const/16 v12, 0xa

    const-string v13, "YEARS"

    const-string v14, "Years"

    invoke-direct {v0, v13, v12, v14, v1}, Lorg/threeten/bp/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/Duration;)V

    sput-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->YEARS:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 133
    new-instance v0, Lorg/threeten/bp/temporal/ChronoUnit;

    const-wide/32 v13, 0x12cf3570

    invoke-static {v13, v14}, Lorg/threeten/bp/Duration;->ofSeconds(J)Lorg/threeten/bp/Duration;

    move-result-object v1

    const/16 v13, 0xb

    const-string v14, "DECADES"

    const-string v15, "Decades"

    invoke-direct {v0, v14, v13, v15, v1}, Lorg/threeten/bp/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/Duration;)V

    sput-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->DECADES:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 141
    new-instance v0, Lorg/threeten/bp/temporal/ChronoUnit;

    const-wide v14, 0xbc181660L

    invoke-static {v14, v15}, Lorg/threeten/bp/Duration;->ofSeconds(J)Lorg/threeten/bp/Duration;

    move-result-object v1

    const/16 v14, 0xc

    const-string v15, "CENTURIES"

    const-string v13, "Centuries"

    invoke-direct {v0, v15, v14, v13, v1}, Lorg/threeten/bp/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/Duration;)V

    sput-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->CENTURIES:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 149
    new-instance v0, Lorg/threeten/bp/temporal/ChronoUnit;

    const-wide v16, 0x758f0dfc0L

    invoke-static/range {v16 .. v17}, Lorg/threeten/bp/Duration;->ofSeconds(J)Lorg/threeten/bp/Duration;

    move-result-object v1

    const/16 v13, 0xd

    const-string v15, "MILLENNIA"

    const-string v14, "Millennia"

    invoke-direct {v0, v15, v13, v14, v1}, Lorg/threeten/bp/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/Duration;)V

    sput-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->MILLENNIA:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 158
    new-instance v0, Lorg/threeten/bp/temporal/ChronoUnit;

    const-wide v14, 0x701ce172277000L

    invoke-static {v14, v15}, Lorg/threeten/bp/Duration;->ofSeconds(J)Lorg/threeten/bp/Duration;

    move-result-object v1

    const/16 v14, 0xe

    const-string v15, "ERAS"

    const-string v13, "Eras"

    invoke-direct {v0, v15, v14, v13, v1}, Lorg/threeten/bp/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/Duration;)V

    sput-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->ERAS:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 166
    new-instance v0, Lorg/threeten/bp/temporal/ChronoUnit;

    const-wide v14, 0x7fffffffffffffffL

    const-wide/32 v12, 0x3b9ac9ff

    invoke-static {v14, v15, v12, v13}, Lorg/threeten/bp/Duration;->ofSeconds(JJ)Lorg/threeten/bp/Duration;

    move-result-object v12

    const/16 v13, 0xf

    const-string v14, "FOREVER"

    const-string v15, "Forever"

    invoke-direct {v0, v14, v13, v15, v12}, Lorg/threeten/bp/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/Duration;)V

    sput-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->FOREVER:Lorg/threeten/bp/temporal/ChronoUnit;

    const/16 v12, 0x10

    new-array v12, v12, [Lorg/threeten/bp/temporal/ChronoUnit;

    .line 53
    sget-object v14, Lorg/threeten/bp/temporal/ChronoUnit;->NANOS:Lorg/threeten/bp/temporal/ChronoUnit;

    aput-object v14, v12, v4

    sget-object v4, Lorg/threeten/bp/temporal/ChronoUnit;->MICROS:Lorg/threeten/bp/temporal/ChronoUnit;

    aput-object v4, v12, v5

    sget-object v4, Lorg/threeten/bp/temporal/ChronoUnit;->MILLIS:Lorg/threeten/bp/temporal/ChronoUnit;

    aput-object v4, v12, v6

    sget-object v4, Lorg/threeten/bp/temporal/ChronoUnit;->SECONDS:Lorg/threeten/bp/temporal/ChronoUnit;

    aput-object v4, v12, v2

    sget-object v2, Lorg/threeten/bp/temporal/ChronoUnit;->MINUTES:Lorg/threeten/bp/temporal/ChronoUnit;

    aput-object v2, v12, v3

    sget-object v2, Lorg/threeten/bp/temporal/ChronoUnit;->HOURS:Lorg/threeten/bp/temporal/ChronoUnit;

    aput-object v2, v12, v7

    sget-object v2, Lorg/threeten/bp/temporal/ChronoUnit;->HALF_DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    aput-object v2, v12, v8

    sget-object v2, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    aput-object v2, v12, v9

    sget-object v2, Lorg/threeten/bp/temporal/ChronoUnit;->WEEKS:Lorg/threeten/bp/temporal/ChronoUnit;

    aput-object v2, v12, v10

    sget-object v2, Lorg/threeten/bp/temporal/ChronoUnit;->MONTHS:Lorg/threeten/bp/temporal/ChronoUnit;

    aput-object v2, v12, v11

    sget-object v2, Lorg/threeten/bp/temporal/ChronoUnit;->YEARS:Lorg/threeten/bp/temporal/ChronoUnit;

    const/16 v3, 0xa

    aput-object v2, v12, v3

    sget-object v2, Lorg/threeten/bp/temporal/ChronoUnit;->DECADES:Lorg/threeten/bp/temporal/ChronoUnit;

    const/16 v3, 0xb

    aput-object v2, v12, v3

    sget-object v2, Lorg/threeten/bp/temporal/ChronoUnit;->CENTURIES:Lorg/threeten/bp/temporal/ChronoUnit;

    const/16 v3, 0xc

    aput-object v2, v12, v3

    sget-object v2, Lorg/threeten/bp/temporal/ChronoUnit;->MILLENNIA:Lorg/threeten/bp/temporal/ChronoUnit;

    const/16 v3, 0xd

    aput-object v2, v12, v3

    sget-object v2, Lorg/threeten/bp/temporal/ChronoUnit;->ERAS:Lorg/threeten/bp/temporal/ChronoUnit;

    const/16 v1, 0xe

    aput-object v2, v12, v1

    aput-object v0, v12, v13

    sput-object v12, Lorg/threeten/bp/temporal/ChronoUnit;->$VALUES:[Lorg/threeten/bp/temporal/ChronoUnit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/Duration;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/threeten/bp/Duration;",
            ")V"
        }
    .end annotation

    .line 171
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 172
    iput-object p3, p0, Lorg/threeten/bp/temporal/ChronoUnit;->name:Ljava/lang/String;

    .line 173
    iput-object p4, p0, Lorg/threeten/bp/temporal/ChronoUnit;->duration:Lorg/threeten/bp/Duration;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/threeten/bp/temporal/ChronoUnit;
    .locals 1

    .line 53
    const-class v0, Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/threeten/bp/temporal/ChronoUnit;

    return-object p0
.end method

.method public static values()[Lorg/threeten/bp/temporal/ChronoUnit;
    .locals 1

    .line 53
    sget-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->$VALUES:[Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {v0}, [Lorg/threeten/bp/temporal/ChronoUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/threeten/bp/temporal/ChronoUnit;

    return-object v0
.end method


# virtual methods
.method public addTo(Lorg/threeten/bp/temporal/Temporal;J)Lorg/threeten/bp/temporal/Temporal;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lorg/threeten/bp/temporal/Temporal;",
            ">(TR;J)TR;"
        }
    .end annotation

    .line 253
    invoke-interface {p1, p2, p3, p0}, Lorg/threeten/bp/temporal/Temporal;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    return-object p1
.end method

.method public isDateBased()Z
    .locals 1

    .line 213
    sget-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->FOREVER:Lorg/threeten/bp/temporal/ChronoUnit;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 265
    iget-object v0, p0, Lorg/threeten/bp/temporal/ChronoUnit;->name:Ljava/lang/String;

    return-object v0
.end method
