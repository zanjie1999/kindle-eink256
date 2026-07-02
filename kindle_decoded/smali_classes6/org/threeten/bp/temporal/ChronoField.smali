.class public final enum Lorg/threeten/bp/temporal/ChronoField;
.super Ljava/lang/Enum;
.source "ChronoField.java"

# interfaces
.implements Lorg/threeten/bp/temporal/TemporalField;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/threeten/bp/temporal/ChronoField;",
        ">;",
        "Lorg/threeten/bp/temporal/TemporalField;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/threeten/bp/temporal/ChronoField;

.field public static final enum ALIGNED_DAY_OF_WEEK_IN_MONTH:Lorg/threeten/bp/temporal/ChronoField;

.field public static final enum ALIGNED_DAY_OF_WEEK_IN_YEAR:Lorg/threeten/bp/temporal/ChronoField;

.field public static final enum ALIGNED_WEEK_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

.field public static final enum ALIGNED_WEEK_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

.field public static final enum AMPM_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

.field public static final enum CLOCK_HOUR_OF_AMPM:Lorg/threeten/bp/temporal/ChronoField;

.field public static final enum CLOCK_HOUR_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

.field public static final enum DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

.field public static final enum DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

.field public static final enum DAY_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

.field public static final enum EPOCH_DAY:Lorg/threeten/bp/temporal/ChronoField;

.field public static final enum ERA:Lorg/threeten/bp/temporal/ChronoField;

.field public static final enum HOUR_OF_AMPM:Lorg/threeten/bp/temporal/ChronoField;

.field public static final enum HOUR_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

.field public static final enum INSTANT_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

.field public static final enum MICRO_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

.field public static final enum MICRO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

.field public static final enum MILLI_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

.field public static final enum MILLI_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

.field public static final enum MINUTE_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

.field public static final enum MINUTE_OF_HOUR:Lorg/threeten/bp/temporal/ChronoField;

.field public static final enum MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

.field public static final enum NANO_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

.field public static final enum NANO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

.field public static final enum OFFSET_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

.field public static final enum PROLEPTIC_MONTH:Lorg/threeten/bp/temporal/ChronoField;

.field public static final enum SECOND_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

.field public static final enum SECOND_OF_MINUTE:Lorg/threeten/bp/temporal/ChronoField;

.field public static final enum YEAR:Lorg/threeten/bp/temporal/ChronoField;

.field public static final enum YEAR_OF_ERA:Lorg/threeten/bp/temporal/ChronoField;


# instance fields
.field private final baseUnit:Lorg/threeten/bp/temporal/TemporalUnit;

.field private final name:Ljava/lang/String;

.field private final range:Lorg/threeten/bp/temporal/ValueRange;

.field private final rangeUnit:Lorg/threeten/bp/temporal/TemporalUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 26

    .line 92
    new-instance v7, Lorg/threeten/bp/temporal/ChronoField;

    sget-object v4, Lorg/threeten/bp/temporal/ChronoUnit;->NANOS:Lorg/threeten/bp/temporal/ChronoUnit;

    sget-object v5, Lorg/threeten/bp/temporal/ChronoUnit;->SECONDS:Lorg/threeten/bp/temporal/ChronoUnit;

    const-wide/32 v8, 0x3b9ac9ff

    const-wide/16 v10, 0x0

    invoke-static {v10, v11, v8, v9}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v6

    const-string v1, "NANO_OF_SECOND"

    const/4 v2, 0x0

    const-string v3, "NanoOfSecond"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/threeten/bp/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/ValueRange;)V

    sput-object v7, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    .line 103
    new-instance v0, Lorg/threeten/bp/temporal/ChronoField;

    sget-object v16, Lorg/threeten/bp/temporal/ChronoUnit;->NANOS:Lorg/threeten/bp/temporal/ChronoUnit;

    sget-object v17, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    const-wide v1, 0x4e94914effffL

    invoke-static {v10, v11, v1, v2}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v18

    const-string v13, "NANO_OF_DAY"

    const/4 v14, 0x1

    const-string v15, "NanoOfDay"

    move-object v12, v0

    invoke-direct/range {v12 .. v18}, Lorg/threeten/bp/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/ValueRange;)V

    sput-object v0, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    .line 118
    new-instance v0, Lorg/threeten/bp/temporal/ChronoField;

    sget-object v5, Lorg/threeten/bp/temporal/ChronoUnit;->MICROS:Lorg/threeten/bp/temporal/ChronoUnit;

    sget-object v6, Lorg/threeten/bp/temporal/ChronoUnit;->SECONDS:Lorg/threeten/bp/temporal/ChronoUnit;

    const-wide/32 v1, 0xf423f

    invoke-static {v10, v11, v1, v2}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v7

    const-string v2, "MICRO_OF_SECOND"

    const/4 v3, 0x2

    const-string v4, "MicroOfSecond"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/threeten/bp/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/ValueRange;)V

    sput-object v0, Lorg/threeten/bp/temporal/ChronoField;->MICRO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    .line 132
    new-instance v0, Lorg/threeten/bp/temporal/ChronoField;

    sget-object v16, Lorg/threeten/bp/temporal/ChronoUnit;->MICROS:Lorg/threeten/bp/temporal/ChronoUnit;

    sget-object v17, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    const-wide v1, 0x141dd75fffL

    invoke-static {v10, v11, v1, v2}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v18

    const-string v13, "MICRO_OF_DAY"

    const/4 v14, 0x3

    const-string v15, "MicroOfDay"

    move-object v12, v0

    invoke-direct/range {v12 .. v18}, Lorg/threeten/bp/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/ValueRange;)V

    sput-object v0, Lorg/threeten/bp/temporal/ChronoField;->MICRO_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    .line 147
    new-instance v0, Lorg/threeten/bp/temporal/ChronoField;

    sget-object v5, Lorg/threeten/bp/temporal/ChronoUnit;->MILLIS:Lorg/threeten/bp/temporal/ChronoUnit;

    sget-object v6, Lorg/threeten/bp/temporal/ChronoUnit;->SECONDS:Lorg/threeten/bp/temporal/ChronoUnit;

    const-wide/16 v1, 0x3e7

    invoke-static {v10, v11, v1, v2}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v7

    const-string v2, "MILLI_OF_SECOND"

    const/4 v3, 0x4

    const-string v4, "MilliOfSecond"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/threeten/bp/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/ValueRange;)V

    sput-object v0, Lorg/threeten/bp/temporal/ChronoField;->MILLI_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    .line 161
    new-instance v0, Lorg/threeten/bp/temporal/ChronoField;

    sget-object v16, Lorg/threeten/bp/temporal/ChronoUnit;->MILLIS:Lorg/threeten/bp/temporal/ChronoUnit;

    sget-object v17, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    const-wide/32 v1, 0x5265bff

    invoke-static {v10, v11, v1, v2}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v18

    const-string v13, "MILLI_OF_DAY"

    const/4 v14, 0x5

    const-string v15, "MilliOfDay"

    move-object v12, v0

    invoke-direct/range {v12 .. v18}, Lorg/threeten/bp/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/ValueRange;)V

    sput-object v0, Lorg/threeten/bp/temporal/ChronoField;->MILLI_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    .line 168
    new-instance v0, Lorg/threeten/bp/temporal/ChronoField;

    sget-object v5, Lorg/threeten/bp/temporal/ChronoUnit;->SECONDS:Lorg/threeten/bp/temporal/ChronoUnit;

    sget-object v6, Lorg/threeten/bp/temporal/ChronoUnit;->MINUTES:Lorg/threeten/bp/temporal/ChronoUnit;

    const-wide/16 v12, 0x3b

    invoke-static {v10, v11, v12, v13}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v7

    const-string v2, "SECOND_OF_MINUTE"

    const/4 v3, 0x6

    const-string v4, "SecondOfMinute"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/threeten/bp/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/ValueRange;)V

    sput-object v0, Lorg/threeten/bp/temporal/ChronoField;->SECOND_OF_MINUTE:Lorg/threeten/bp/temporal/ChronoField;

    .line 175
    new-instance v0, Lorg/threeten/bp/temporal/ChronoField;

    sget-object v18, Lorg/threeten/bp/temporal/ChronoUnit;->SECONDS:Lorg/threeten/bp/temporal/ChronoUnit;

    sget-object v19, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    const-wide/32 v1, 0x1517f

    invoke-static {v10, v11, v1, v2}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v20

    const-string v15, "SECOND_OF_DAY"

    const/16 v16, 0x7

    const-string v17, "SecondOfDay"

    move-object v14, v0

    invoke-direct/range {v14 .. v20}, Lorg/threeten/bp/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/ValueRange;)V

    sput-object v0, Lorg/threeten/bp/temporal/ChronoField;->SECOND_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    .line 182
    new-instance v0, Lorg/threeten/bp/temporal/ChronoField;

    sget-object v5, Lorg/threeten/bp/temporal/ChronoUnit;->MINUTES:Lorg/threeten/bp/temporal/ChronoUnit;

    sget-object v6, Lorg/threeten/bp/temporal/ChronoUnit;->HOURS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-static {v10, v11, v12, v13}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v7

    const-string v2, "MINUTE_OF_HOUR"

    const/16 v3, 0x8

    const-string v4, "MinuteOfHour"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/threeten/bp/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/ValueRange;)V

    sput-object v0, Lorg/threeten/bp/temporal/ChronoField;->MINUTE_OF_HOUR:Lorg/threeten/bp/temporal/ChronoField;

    .line 189
    new-instance v0, Lorg/threeten/bp/temporal/ChronoField;

    sget-object v16, Lorg/threeten/bp/temporal/ChronoUnit;->MINUTES:Lorg/threeten/bp/temporal/ChronoUnit;

    sget-object v17, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    const-wide/16 v1, 0x59f

    invoke-static {v10, v11, v1, v2}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v18

    const-string v13, "MINUTE_OF_DAY"

    const/16 v14, 0x9

    const-string v15, "MinuteOfDay"

    move-object v12, v0

    invoke-direct/range {v12 .. v18}, Lorg/threeten/bp/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/ValueRange;)V

    sput-object v0, Lorg/threeten/bp/temporal/ChronoField;->MINUTE_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    .line 197
    new-instance v0, Lorg/threeten/bp/temporal/ChronoField;

    sget-object v5, Lorg/threeten/bp/temporal/ChronoUnit;->HOURS:Lorg/threeten/bp/temporal/ChronoUnit;

    sget-object v6, Lorg/threeten/bp/temporal/ChronoUnit;->HALF_DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    const-wide/16 v1, 0xb

    invoke-static {v10, v11, v1, v2}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v7

    const-string v2, "HOUR_OF_AMPM"

    const/16 v3, 0xa

    const-string v4, "HourOfAmPm"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/threeten/bp/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/ValueRange;)V

    sput-object v0, Lorg/threeten/bp/temporal/ChronoField;->HOUR_OF_AMPM:Lorg/threeten/bp/temporal/ChronoField;

    .line 205
    new-instance v0, Lorg/threeten/bp/temporal/ChronoField;

    sget-object v16, Lorg/threeten/bp/temporal/ChronoUnit;->HOURS:Lorg/threeten/bp/temporal/ChronoUnit;

    sget-object v17, Lorg/threeten/bp/temporal/ChronoUnit;->HALF_DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    const-wide/16 v1, 0xc

    const-wide/16 v3, 0x1

    invoke-static {v3, v4, v1, v2}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v18

    const-string v13, "CLOCK_HOUR_OF_AMPM"

    const/16 v14, 0xb

    const-string v15, "ClockHourOfAmPm"

    move-object v12, v0

    invoke-direct/range {v12 .. v18}, Lorg/threeten/bp/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/ValueRange;)V

    sput-object v0, Lorg/threeten/bp/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Lorg/threeten/bp/temporal/ChronoField;

    .line 213
    new-instance v0, Lorg/threeten/bp/temporal/ChronoField;

    sget-object v23, Lorg/threeten/bp/temporal/ChronoUnit;->HOURS:Lorg/threeten/bp/temporal/ChronoUnit;

    sget-object v24, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    const-wide/16 v5, 0x17

    invoke-static {v10, v11, v5, v6}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v25

    const-string v20, "HOUR_OF_DAY"

    const/16 v21, 0xc

    const-string v22, "HourOfDay"

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v25}, Lorg/threeten/bp/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/ValueRange;)V

    sput-object v0, Lorg/threeten/bp/temporal/ChronoField;->HOUR_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    .line 221
    new-instance v0, Lorg/threeten/bp/temporal/ChronoField;

    sget-object v16, Lorg/threeten/bp/temporal/ChronoUnit;->HOURS:Lorg/threeten/bp/temporal/ChronoUnit;

    sget-object v17, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    const-wide/16 v5, 0x18

    invoke-static {v3, v4, v5, v6}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v18

    const-string v13, "CLOCK_HOUR_OF_DAY"

    const/16 v14, 0xd

    const-string v15, "ClockHourOfDay"

    move-object v12, v0

    invoke-direct/range {v12 .. v18}, Lorg/threeten/bp/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/ValueRange;)V

    sput-object v0, Lorg/threeten/bp/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    .line 228
    new-instance v0, Lorg/threeten/bp/temporal/ChronoField;

    sget-object v23, Lorg/threeten/bp/temporal/ChronoUnit;->HALF_DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    sget-object v24, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-static {v10, v11, v3, v4}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v25

    const-string v20, "AMPM_OF_DAY"

    const/16 v21, 0xe

    const-string v22, "AmPmOfDay"

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v25}, Lorg/threeten/bp/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/ValueRange;)V

    sput-object v0, Lorg/threeten/bp/temporal/ChronoField;->AMPM_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    .line 244
    new-instance v0, Lorg/threeten/bp/temporal/ChronoField;

    sget-object v16, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    sget-object v17, Lorg/threeten/bp/temporal/ChronoUnit;->WEEKS:Lorg/threeten/bp/temporal/ChronoUnit;

    const-wide/16 v5, 0x7

    invoke-static {v3, v4, v5, v6}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v18

    const-string v13, "DAY_OF_WEEK"

    const/16 v14, 0xf

    const-string v15, "DayOfWeek"

    move-object v12, v0

    invoke-direct/range {v12 .. v18}, Lorg/threeten/bp/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/ValueRange;)V

    sput-object v0, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    .line 262
    new-instance v0, Lorg/threeten/bp/temporal/ChronoField;

    sget-object v23, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    sget-object v24, Lorg/threeten/bp/temporal/ChronoUnit;->WEEKS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-static {v3, v4, v5, v6}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v25

    const-string v20, "ALIGNED_DAY_OF_WEEK_IN_MONTH"

    const/16 v21, 0x10

    const-string v22, "AlignedDayOfWeekInMonth"

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v25}, Lorg/threeten/bp/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/ValueRange;)V

    sput-object v0, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    .line 280
    new-instance v0, Lorg/threeten/bp/temporal/ChronoField;

    sget-object v16, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    sget-object v17, Lorg/threeten/bp/temporal/ChronoUnit;->WEEKS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-static {v3, v4, v5, v6}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v18

    const-string v13, "ALIGNED_DAY_OF_WEEK_IN_YEAR"

    const/16 v14, 0x11

    const-string v15, "AlignedDayOfWeekInYear"

    move-object v12, v0

    invoke-direct/range {v12 .. v18}, Lorg/threeten/bp/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/ValueRange;)V

    sput-object v0, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    .line 293
    new-instance v0, Lorg/threeten/bp/temporal/ChronoField;

    sget-object v23, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    sget-object v24, Lorg/threeten/bp/temporal/ChronoUnit;->MONTHS:Lorg/threeten/bp/temporal/ChronoUnit;

    const-wide/16 v12, 0x1

    const-wide/16 v14, 0x1c

    const-wide/16 v16, 0x1f

    invoke-static/range {v12 .. v17}, Lorg/threeten/bp/temporal/ValueRange;->of(JJJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v25

    const-string v20, "DAY_OF_MONTH"

    const/16 v21, 0x12

    const-string v22, "DayOfMonth"

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v25}, Lorg/threeten/bp/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/ValueRange;)V

    sput-object v0, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    .line 305
    new-instance v0, Lorg/threeten/bp/temporal/ChronoField;

    sget-object v16, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    sget-object v17, Lorg/threeten/bp/temporal/ChronoUnit;->YEARS:Lorg/threeten/bp/temporal/ChronoUnit;

    const-wide/16 v18, 0x1

    const-wide/16 v20, 0x16d

    const-wide/16 v22, 0x16e

    invoke-static/range {v18 .. v23}, Lorg/threeten/bp/temporal/ValueRange;->of(JJJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v18

    const-string v13, "DAY_OF_YEAR"

    const/16 v14, 0x13

    const-string v15, "DayOfYear"

    move-object v12, v0

    invoke-direct/range {v12 .. v18}, Lorg/threeten/bp/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/ValueRange;)V

    sput-object v0, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    .line 315
    new-instance v0, Lorg/threeten/bp/temporal/ChronoField;

    sget-object v23, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    sget-object v24, Lorg/threeten/bp/temporal/ChronoUnit;->FOREVER:Lorg/threeten/bp/temporal/ChronoUnit;

    const-wide v5, -0x550a313cdaL

    const-wide v12, 0x550a1b48f7L

    invoke-static {v5, v6, v12, v13}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v25

    const-string v20, "EPOCH_DAY"

    const/16 v21, 0x14

    const-string v22, "EpochDay"

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v25}, Lorg/threeten/bp/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/ValueRange;)V

    sput-object v0, Lorg/threeten/bp/temporal/ChronoField;->EPOCH_DAY:Lorg/threeten/bp/temporal/ChronoField;

    .line 331
    new-instance v0, Lorg/threeten/bp/temporal/ChronoField;

    sget-object v16, Lorg/threeten/bp/temporal/ChronoUnit;->WEEKS:Lorg/threeten/bp/temporal/ChronoUnit;

    sget-object v17, Lorg/threeten/bp/temporal/ChronoUnit;->MONTHS:Lorg/threeten/bp/temporal/ChronoUnit;

    const-wide/16 v18, 0x1

    const-wide/16 v20, 0x4

    const-wide/16 v22, 0x5

    invoke-static/range {v18 .. v23}, Lorg/threeten/bp/temporal/ValueRange;->of(JJJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v18

    const-string v13, "ALIGNED_WEEK_OF_MONTH"

    const/16 v14, 0x15

    const-string v15, "AlignedWeekOfMonth"

    move-object v12, v0

    invoke-direct/range {v12 .. v18}, Lorg/threeten/bp/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/ValueRange;)V

    sput-object v0, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    .line 347
    new-instance v0, Lorg/threeten/bp/temporal/ChronoField;

    sget-object v23, Lorg/threeten/bp/temporal/ChronoUnit;->WEEKS:Lorg/threeten/bp/temporal/ChronoUnit;

    sget-object v24, Lorg/threeten/bp/temporal/ChronoUnit;->YEARS:Lorg/threeten/bp/temporal/ChronoUnit;

    const-wide/16 v5, 0x35

    invoke-static {v3, v4, v5, v6}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v25

    const-string v20, "ALIGNED_WEEK_OF_YEAR"

    const/16 v21, 0x16

    const-string v22, "AlignedWeekOfYear"

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v25}, Lorg/threeten/bp/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/ValueRange;)V

    sput-object v0, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    .line 358
    new-instance v0, Lorg/threeten/bp/temporal/ChronoField;

    sget-object v16, Lorg/threeten/bp/temporal/ChronoUnit;->MONTHS:Lorg/threeten/bp/temporal/ChronoUnit;

    sget-object v17, Lorg/threeten/bp/temporal/ChronoUnit;->YEARS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-static {v3, v4, v1, v2}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v18

    const-string v13, "MONTH_OF_YEAR"

    const/16 v14, 0x17

    const-string v15, "MonthOfYear"

    move-object v12, v0

    invoke-direct/range {v12 .. v18}, Lorg/threeten/bp/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/ValueRange;)V

    sput-object v0, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    .line 369
    new-instance v0, Lorg/threeten/bp/temporal/ChronoField;

    sget-object v23, Lorg/threeten/bp/temporal/ChronoUnit;->MONTHS:Lorg/threeten/bp/temporal/ChronoUnit;

    sget-object v24, Lorg/threeten/bp/temporal/ChronoUnit;->FOREVER:Lorg/threeten/bp/temporal/ChronoUnit;

    const-wide v1, -0x2cb4177f4L

    const-wide v5, 0x2cb4177ffL

    invoke-static {v1, v2, v5, v6}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v25

    const-string v20, "PROLEPTIC_MONTH"

    const/16 v21, 0x18

    const-string v22, "ProlepticMonth"

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v25}, Lorg/threeten/bp/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/ValueRange;)V

    sput-object v0, Lorg/threeten/bp/temporal/ChronoField;->PROLEPTIC_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    .line 404
    new-instance v0, Lorg/threeten/bp/temporal/ChronoField;

    sget-object v16, Lorg/threeten/bp/temporal/ChronoUnit;->YEARS:Lorg/threeten/bp/temporal/ChronoUnit;

    sget-object v17, Lorg/threeten/bp/temporal/ChronoUnit;->FOREVER:Lorg/threeten/bp/temporal/ChronoUnit;

    const-wide/16 v18, 0x1

    const-wide/32 v20, 0x3b9ac9ff

    const-wide/32 v22, 0x3b9aca00

    invoke-static/range {v18 .. v23}, Lorg/threeten/bp/temporal/ValueRange;->of(JJJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v18

    const-string v13, "YEAR_OF_ERA"

    const/16 v14, 0x19

    const-string v15, "YearOfEra"

    move-object v12, v0

    invoke-direct/range {v12 .. v18}, Lorg/threeten/bp/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/ValueRange;)V

    sput-object v0, Lorg/threeten/bp/temporal/ChronoField;->YEAR_OF_ERA:Lorg/threeten/bp/temporal/ChronoField;

    .line 428
    new-instance v0, Lorg/threeten/bp/temporal/ChronoField;

    sget-object v23, Lorg/threeten/bp/temporal/ChronoUnit;->YEARS:Lorg/threeten/bp/temporal/ChronoUnit;

    sget-object v24, Lorg/threeten/bp/temporal/ChronoUnit;->FOREVER:Lorg/threeten/bp/temporal/ChronoUnit;

    const-wide/32 v1, -0x3b9ac9ff

    invoke-static {v1, v2, v8, v9}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v25

    const-string v20, "YEAR"

    const/16 v21, 0x1a

    const-string v22, "Year"

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v25}, Lorg/threeten/bp/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/ValueRange;)V

    sput-object v0, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    .line 445
    new-instance v0, Lorg/threeten/bp/temporal/ChronoField;

    sget-object v16, Lorg/threeten/bp/temporal/ChronoUnit;->ERAS:Lorg/threeten/bp/temporal/ChronoUnit;

    sget-object v17, Lorg/threeten/bp/temporal/ChronoUnit;->FOREVER:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-static {v10, v11, v3, v4}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v18

    const-string v13, "ERA"

    const/16 v14, 0x1b

    const-string v15, "Era"

    move-object v12, v0

    invoke-direct/range {v12 .. v18}, Lorg/threeten/bp/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/ValueRange;)V

    sput-object v0, Lorg/threeten/bp/temporal/ChronoField;->ERA:Lorg/threeten/bp/temporal/ChronoField;

    .line 461
    new-instance v0, Lorg/threeten/bp/temporal/ChronoField;

    sget-object v5, Lorg/threeten/bp/temporal/ChronoUnit;->SECONDS:Lorg/threeten/bp/temporal/ChronoUnit;

    sget-object v6, Lorg/threeten/bp/temporal/ChronoUnit;->FOREVER:Lorg/threeten/bp/temporal/ChronoUnit;

    const-wide/high16 v1, -0x8000000000000000L

    const-wide v3, 0x7fffffffffffffffL

    invoke-static {v1, v2, v3, v4}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v7

    const-string v2, "INSTANT_SECONDS"

    const/16 v3, 0x1c

    const-string v4, "InstantSeconds"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/threeten/bp/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/ValueRange;)V

    sput-object v0, Lorg/threeten/bp/temporal/ChronoField;->INSTANT_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    .line 475
    new-instance v0, Lorg/threeten/bp/temporal/ChronoField;

    sget-object v12, Lorg/threeten/bp/temporal/ChronoUnit;->SECONDS:Lorg/threeten/bp/temporal/ChronoUnit;

    sget-object v13, Lorg/threeten/bp/temporal/ChronoUnit;->FOREVER:Lorg/threeten/bp/temporal/ChronoUnit;

    const-wide/32 v1, -0xfd20

    const-wide/32 v3, 0xfd20

    invoke-static {v1, v2, v3, v4}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v14

    const-string v9, "OFFSET_SECONDS"

    const/16 v10, 0x1d

    const-string v11, "OffsetSeconds"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lorg/threeten/bp/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/ValueRange;)V

    sput-object v0, Lorg/threeten/bp/temporal/ChronoField;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    const/16 v1, 0x1e

    new-array v1, v1, [Lorg/threeten/bp/temporal/ChronoField;

    .line 74
    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->MICRO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->MICRO_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->MILLI_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->MILLI_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->SECOND_OF_MINUTE:Lorg/threeten/bp/temporal/ChronoField;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->SECOND_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->MINUTE_OF_HOUR:Lorg/threeten/bp/temporal/ChronoField;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->MINUTE_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->HOUR_OF_AMPM:Lorg/threeten/bp/temporal/ChronoField;

    const/16 v3, 0xa

    aput-object v2, v1, v3

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Lorg/threeten/bp/temporal/ChronoField;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->HOUR_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->AMPM_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    const/16 v3, 0x12

    aput-object v2, v1, v3

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    const/16 v3, 0x13

    aput-object v2, v1, v3

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->EPOCH_DAY:Lorg/threeten/bp/temporal/ChronoField;

    const/16 v3, 0x14

    aput-object v2, v1, v3

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    const/16 v3, 0x15

    aput-object v2, v1, v3

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    const/16 v3, 0x16

    aput-object v2, v1, v3

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    const/16 v3, 0x17

    aput-object v2, v1, v3

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->PROLEPTIC_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    const/16 v3, 0x18

    aput-object v2, v1, v3

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->YEAR_OF_ERA:Lorg/threeten/bp/temporal/ChronoField;

    const/16 v3, 0x19

    aput-object v2, v1, v3

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->ERA:Lorg/threeten/bp/temporal/ChronoField;

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->INSTANT_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    const/16 v2, 0x1d

    aput-object v0, v1, v2

    sput-object v1, Lorg/threeten/bp/temporal/ChronoField;->$VALUES:[Lorg/threeten/bp/temporal/ChronoField;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/ValueRange;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/threeten/bp/temporal/TemporalUnit;",
            "Lorg/threeten/bp/temporal/TemporalUnit;",
            "Lorg/threeten/bp/temporal/ValueRange;",
            ")V"
        }
    .end annotation

    .line 482
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 483
    iput-object p3, p0, Lorg/threeten/bp/temporal/ChronoField;->name:Ljava/lang/String;

    .line 484
    iput-object p4, p0, Lorg/threeten/bp/temporal/ChronoField;->baseUnit:Lorg/threeten/bp/temporal/TemporalUnit;

    .line 485
    iput-object p5, p0, Lorg/threeten/bp/temporal/ChronoField;->rangeUnit:Lorg/threeten/bp/temporal/TemporalUnit;

    .line 486
    iput-object p6, p0, Lorg/threeten/bp/temporal/ChronoField;->range:Lorg/threeten/bp/temporal/ValueRange;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/threeten/bp/temporal/ChronoField;
    .locals 1

    .line 74
    const-class v0, Lorg/threeten/bp/temporal/ChronoField;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/threeten/bp/temporal/ChronoField;

    return-object p0
.end method

.method public static values()[Lorg/threeten/bp/temporal/ChronoField;
    .locals 1

    .line 74
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->$VALUES:[Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v0}, [Lorg/threeten/bp/temporal/ChronoField;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/threeten/bp/temporal/ChronoField;

    return-object v0
.end method


# virtual methods
.method public adjustInto(Lorg/threeten/bp/temporal/Temporal;J)Lorg/threeten/bp/temporal/Temporal;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lorg/threeten/bp/temporal/Temporal;",
            ">(TR;J)TR;"
        }
    .end annotation

    .line 598
    invoke-interface {p1, p0, p2, p3}, Lorg/threeten/bp/temporal/Temporal;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    return-object p1
.end method

.method public checkValidIntValue(J)I
    .locals 1

    .line 576
    invoke-virtual {p0}, Lorg/threeten/bp/temporal/ChronoField;->range()Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p0}, Lorg/threeten/bp/temporal/ValueRange;->checkValidIntValue(JLorg/threeten/bp/temporal/TemporalField;)I

    move-result p1

    return p1
.end method

.method public checkValidValue(J)J
    .locals 1

    .line 557
    invoke-virtual {p0}, Lorg/threeten/bp/temporal/ChronoField;->range()Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p0}, Lorg/threeten/bp/temporal/ValueRange;->checkValidValue(JLorg/threeten/bp/temporal/TemporalField;)J

    return-wide p1
.end method

.method public getFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)J
    .locals 2

    .line 592
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalAccessor;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isDateBased()Z
    .locals 2

    .line 529
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->ERA:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSupportedBy(Lorg/threeten/bp/temporal/TemporalAccessor;)Z
    .locals 0

    .line 582
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalAccessor;->isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z

    move-result p1

    return p1
.end method

.method public isTimeBased()Z
    .locals 2

    .line 538
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public range()Lorg/threeten/bp/temporal/ValueRange;
    .locals 1

    .line 519
    iget-object v0, p0, Lorg/threeten/bp/temporal/ChronoField;->range:Lorg/threeten/bp/temporal/ValueRange;

    return-object v0
.end method

.method public rangeRefinedBy(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/temporal/ValueRange;
    .locals 0

    .line 587
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalAccessor;->range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 617
    iget-object v0, p0, Lorg/threeten/bp/temporal/ChronoField;->name:Ljava/lang/String;

    return-object v0
.end method
