.class public final Lorg/threeten/bp/format/DateTimeFormatterBuilder;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;,
        Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;,
        Lorg/threeten/bp/format/DateTimeFormatterBuilder$InstantPrinterParser;,
        Lorg/threeten/bp/format/DateTimeFormatterBuilder$TextPrinterParser;,
        Lorg/threeten/bp/format/DateTimeFormatterBuilder$FractionPrinterParser;,
        Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;,
        Lorg/threeten/bp/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;,
        Lorg/threeten/bp/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;,
        Lorg/threeten/bp/format/DateTimeFormatterBuilder$SettingsParser;,
        Lorg/threeten/bp/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;,
        Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;,
        Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    }
.end annotation


# static fields
.field private static final FIELD_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Lorg/threeten/bp/temporal/TemporalField;",
            ">;"
        }
    .end annotation
.end field

.field private static final QUERY_REGION_ONLY:Lorg/threeten/bp/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/temporal/TemporalQuery<",
            "Lorg/threeten/bp/ZoneId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

.field private final optional:Z

.field private padNextChar:C

.field private padNextWidth:I

.field private final parent:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

.field private final printerParsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;",
            ">;"
        }
    .end annotation
.end field

.field private valueParserIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 119
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$1;

    invoke-direct {v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$1;-><init>()V

    sput-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->QUERY_REGION_ONLY:Lorg/threeten/bp/temporal/TemporalQuery;

    .line 1678
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x47

    .line 1680
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->ERA:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1681
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x79

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->YEAR_OF_ERA:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1682
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x75

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1683
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x51

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/IsoFields;->QUARTER_OF_YEAR:Lorg/threeten/bp/temporal/TemporalField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1684
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x71

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/IsoFields;->QUARTER_OF_YEAR:Lorg/threeten/bp/temporal/TemporalField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1685
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x4d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1686
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x4c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1687
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x44

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1688
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1689
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x46

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1690
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x45

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1691
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x63

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1692
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1693
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x61

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->AMPM_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1694
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x48

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->HOUR_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1695
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x6b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1696
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x4b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->HOUR_OF_AMPM:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1697
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x68

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1698
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x6d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->MINUTE_OF_HOUR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1699
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x73

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->SECOND_OF_MINUTE:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1700
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x53

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1701
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x41

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->MILLI_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1702
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x6e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1703
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x4e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3873
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$3;

    invoke-direct {v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$3;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    const/4 v0, -0x1

    .line 153
    iput v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->valueParserIndex:I

    const/4 v0, 0x0

    .line 196
    iput-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->parent:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    const/4 v0, 0x0

    .line 197
    iput-boolean v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->optional:Z

    return-void
.end method

.method private constructor <init>(Lorg/threeten/bp/format/DateTimeFormatterBuilder;Z)V
    .locals 1

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    const/4 v0, -0x1

    .line 153
    iput v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->valueParserIndex:I

    .line 208
    iput-object p1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->parent:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 209
    iput-boolean p2, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->optional:Z

    return-void
.end method

.method private appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I
    .locals 3

    const-string v0, "pp"

    .line 1835
    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1836
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    iget v1, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->padNextWidth:I

    if-lez v1, :cond_1

    if-eqz p1, :cond_0

    .line 1838
    new-instance v2, Lorg/threeten/bp/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;

    iget-char v0, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->padNextChar:C

    invoke-direct {v2, p1, v1, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;-><init>(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;IC)V

    move-object p1, v2

    .line 1840
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    const/4 v1, 0x0

    iput v1, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->padNextWidth:I

    .line 1841
    iput-char v1, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->padNextChar:C

    .line 1843
    :cond_1
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    iget-object v0, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1844
    iget-object p1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    const/4 v0, -0x1

    iput v0, p1, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->valueParserIndex:I

    .line 1845
    iget-object p1, p1, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method private appendValue(Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 5

    .line 578
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    iget v1, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->valueParserIndex:I

    if-ltz v1, :cond_1

    iget-object v0, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    .line 579
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;

    if-eqz v0, :cond_1

    .line 580
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    iget v1, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->valueParserIndex:I

    .line 583
    iget-object v0, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;

    .line 584
    iget v2, p1, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    iget v3, p1, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    if-ne v2, v3, :cond_0

    iget-object v2, p1, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Lorg/threeten/bp/format/SignStyle;

    sget-object v4, Lorg/threeten/bp/format/SignStyle;->NOT_NEGATIVE:Lorg/threeten/bp/format/SignStyle;

    if-ne v2, v4, :cond_0

    .line 586
    invoke-virtual {v0, v3}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->withSubsequentWidth(I)Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;

    move-result-object v0

    .line 588
    invoke-virtual {p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->withFixedWidth()Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 590
    iget-object p1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    iput v1, p1, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->valueParserIndex:I

    goto :goto_0

    .line 593
    :cond_0
    invoke-virtual {v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->withFixedWidth()Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;

    move-result-object v0

    .line 595
    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    invoke-direct {p0, p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    move-result p1

    iput p1, v2, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->valueParserIndex:I

    .line 598
    :goto_0
    iget-object p1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    iget-object p1, p1, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    invoke-interface {p1, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 601
    :cond_1
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    invoke-direct {p0, p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    move-result p1

    iput p1, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->valueParserIndex:I

    :goto_1
    return-object p0
.end method


# virtual methods
.method public append(Lorg/threeten/bp/format/DateTimeFormatter;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 1

    const-string v0, "formatter"

    .line 1190
    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1191
    invoke-virtual {p1, v0}, Lorg/threeten/bp/format/DateTimeFormatter;->toPrinterParser(Z)Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    return-object p0
.end method

.method public appendFraction(Lorg/threeten/bp/temporal/TemporalField;IIZ)Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 1

    .line 641
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$FractionPrinterParser;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$FractionPrinterParser;-><init>(Lorg/threeten/bp/temporal/TemporalField;IIZ)V

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    return-object p0
.end method

.method public appendInstant()Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 2

    .line 768
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$InstantPrinterParser;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$InstantPrinterParser;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    return-object p0
.end method

.method public appendLiteral(C)Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 1

    .line 1153
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;

    invoke-direct {v0, p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;-><init>(C)V

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    return-object p0
.end method

.method public appendLiteral(Ljava/lang/String;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 2

    const-string v0, "literal"

    .line 1168
    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1169
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1170
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1171
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-direct {v0, p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;-><init>(C)V

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    goto :goto_0

    .line 1173
    :cond_0
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;

    invoke-direct {v0, p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    :cond_1
    :goto_0
    return-object p0
.end method

.method public appendOffset(Ljava/lang/String;Ljava/lang/String;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 1

    .line 867
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    invoke-direct {v0, p2, p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    return-object p0
.end method

.method public appendOffsetId()Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 1

    .line 824
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->INSTANCE_ID:Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    return-object p0
.end method

.method public appendText(Lorg/threeten/bp/temporal/TemporalField;Ljava/util/Map;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/TemporalField;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/threeten/bp/format/DateTimeFormatterBuilder;"
        }
    .end annotation

    const-string v0, "field"

    .line 722
    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "textLookup"

    .line 723
    invoke-static {p2, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 724
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 725
    sget-object p2, Lorg/threeten/bp/format/TextStyle;->FULL:Lorg/threeten/bp/format/TextStyle;

    invoke-static {p2, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p2

    .line 726
    new-instance v0, Lorg/threeten/bp/format/SimpleDateTimeTextProvider$LocaleStore;

    invoke-direct {v0, p2}, Lorg/threeten/bp/format/SimpleDateTimeTextProvider$LocaleStore;-><init>(Ljava/util/Map;)V

    .line 727
    new-instance p2, Lorg/threeten/bp/format/DateTimeFormatterBuilder$2;

    invoke-direct {p2, p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$2;-><init>(Lorg/threeten/bp/format/DateTimeFormatterBuilder;Lorg/threeten/bp/format/SimpleDateTimeTextProvider$LocaleStore;)V

    .line 737
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$TextPrinterParser;

    sget-object v1, Lorg/threeten/bp/format/TextStyle;->FULL:Lorg/threeten/bp/format/TextStyle;

    invoke-direct {v0, p1, v1, p2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$TextPrinterParser;-><init>(Lorg/threeten/bp/temporal/TemporalField;Lorg/threeten/bp/format/TextStyle;Lorg/threeten/bp/format/DateTimeTextProvider;)V

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    return-object p0
.end method

.method public appendValue(Lorg/threeten/bp/temporal/TemporalField;I)Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 2

    const-string v0, "field"

    .line 402
    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    const/16 v0, 0x13

    if-gt p2, v0, :cond_0

    .line 406
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;

    sget-object v1, Lorg/threeten/bp/format/SignStyle;->NOT_NEGATIVE:Lorg/threeten/bp/format/SignStyle;

    invoke-direct {v0, p1, p2, p2, v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Lorg/threeten/bp/temporal/TemporalField;IILorg/threeten/bp/format/SignStyle;)V

    .line 407
    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    return-object p0

    .line 404
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The width must be from 1 to 19 inclusive but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public appendValue(Lorg/threeten/bp/temporal/TemporalField;IILorg/threeten/bp/format/SignStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 2

    if-ne p2, p3, :cond_0

    .line 442
    sget-object v0, Lorg/threeten/bp/format/SignStyle;->NOT_NEGATIVE:Lorg/threeten/bp/format/SignStyle;

    if-ne p4, v0, :cond_0

    .line 443
    invoke-virtual {p0, p1, p3}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;I)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    return-object p0

    :cond_0
    const-string v0, "field"

    .line 445
    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "signStyle"

    .line 446
    invoke-static {p4, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    if-lt p2, v0, :cond_3

    const/16 v1, 0x13

    if-gt p2, v1, :cond_3

    if-lt p3, v0, :cond_2

    if-gt p3, v1, :cond_2

    if-lt p3, p2, :cond_1

    .line 457
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Lorg/threeten/bp/temporal/TemporalField;IILorg/threeten/bp/format/SignStyle;)V

    .line 458
    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    return-object p0

    .line 454
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The maximum width must exceed or equal the minimum width but "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " < "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 451
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "The maximum width must be from 1 to 19 inclusive but was "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 448
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "The minimum width must be from 1 to 19 inclusive but was "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public appendZoneRegionId()Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 3

    .line 960
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;

    sget-object v1, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->QUERY_REGION_ONLY:Lorg/threeten/bp/temporal/TemporalQuery;

    const-string v2, "ZoneRegionId()"

    invoke-direct {v0, v1, v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;-><init>(Lorg/threeten/bp/temporal/TemporalQuery;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    return-object p0
.end method

.method public optionalEnd()Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 3

    .line 1814
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    iget-object v1, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->parent:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    if-eqz v1, :cond_1

    .line 1817
    iget-object v0, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1818
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    iget-object v2, v1, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    iget-boolean v1, v1, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->optional:Z

    invoke-direct {v0, v2, v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;-><init>(Ljava/util/List;Z)V

    .line 1819
    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    iget-object v1, v1, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->parent:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    iput-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 1820
    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    goto :goto_0

    .line 1822
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    iget-object v0, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->parent:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    iput-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    :goto_0
    return-object p0

    .line 1815
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call optionalEnd() as there was no previous call to optionalStart()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public optionalStart()Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 3

    .line 1783
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    const/4 v1, -0x1

    iput v1, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->valueParserIndex:I

    .line 1784
    new-instance v1, Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;-><init>(Lorg/threeten/bp/format/DateTimeFormatterBuilder;Z)V

    iput-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    return-object p0
.end method

.method public parseCaseInsensitive()Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 1

    .line 252
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$SettingsParser;->INSENSITIVE:Lorg/threeten/bp/format/DateTimeFormatterBuilder$SettingsParser;

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    return-object p0
.end method

.method public parseCaseSensitive()Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 1

    .line 232
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$SettingsParser;->SENSITIVE:Lorg/threeten/bp/format/DateTimeFormatterBuilder$SettingsParser;

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    return-object p0
.end method

.method public parseLenient()Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 1

    .line 290
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$SettingsParser;->LENIENT:Lorg/threeten/bp/format/DateTimeFormatterBuilder$SettingsParser;

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    return-object p0
.end method

.method public toFormatter()Lorg/threeten/bp/format/DateTimeFormatter;
    .locals 1

    .line 1864
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->toFormatter(Ljava/util/Locale;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public toFormatter(Ljava/util/Locale;)Lorg/threeten/bp/format/DateTimeFormatter;
    .locals 9

    const-string v0, "locale"

    .line 1883
    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1884
    :goto_0
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    iget-object v0, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->parent:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    if-eqz v0, :cond_0

    .line 1885
    invoke-virtual {p0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->optionalEnd()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    goto :goto_0

    .line 1887
    :cond_0
    new-instance v2, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;-><init>(Ljava/util/List;Z)V

    .line 1888
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatter;

    sget-object v4, Lorg/threeten/bp/format/DecimalStyle;->STANDARD:Lorg/threeten/bp/format/DecimalStyle;

    sget-object v5, Lorg/threeten/bp/format/ResolverStyle;->SMART:Lorg/threeten/bp/format/ResolverStyle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lorg/threeten/bp/format/DateTimeFormatter;-><init>(Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Lorg/threeten/bp/format/DecimalStyle;Lorg/threeten/bp/format/ResolverStyle;Ljava/util/Set;Lorg/threeten/bp/chrono/Chronology;Lorg/threeten/bp/ZoneId;)V

    return-object v0
.end method

.method toFormatter(Lorg/threeten/bp/format/ResolverStyle;)Lorg/threeten/bp/format/DateTimeFormatter;
    .locals 1

    .line 1892
    invoke-virtual {p0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->toFormatter()Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/threeten/bp/format/DateTimeFormatter;->withResolverStyle(Lorg/threeten/bp/format/ResolverStyle;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object p1

    return-object p1
.end method
