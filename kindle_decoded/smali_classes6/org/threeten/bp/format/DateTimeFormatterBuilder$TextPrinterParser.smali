.class final Lorg/threeten/bp/format/DateTimeFormatterBuilder$TextPrinterParser;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TextPrinterParser"
.end annotation


# instance fields
.field private final field:Lorg/threeten/bp/temporal/TemporalField;

.field private volatile numberPrinterParser:Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;

.field private final provider:Lorg/threeten/bp/format/DateTimeTextProvider;

.field private final textStyle:Lorg/threeten/bp/format/TextStyle;


# direct methods
.method constructor <init>(Lorg/threeten/bp/temporal/TemporalField;Lorg/threeten/bp/format/TextStyle;Lorg/threeten/bp/format/DateTimeTextProvider;)V
    .locals 0

    .line 2844
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2846
    iput-object p1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Lorg/threeten/bp/temporal/TemporalField;

    .line 2847
    iput-object p2, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$TextPrinterParser;->textStyle:Lorg/threeten/bp/format/TextStyle;

    .line 2848
    iput-object p3, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$TextPrinterParser;->provider:Lorg/threeten/bp/format/DateTimeTextProvider;

    return-void
.end method

.method private numberPrinterParser()Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;
    .locals 5

    .line 2893
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$TextPrinterParser;->numberPrinterParser:Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;

    if-nez v0, :cond_0

    .line 2894
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;

    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Lorg/threeten/bp/temporal/TemporalField;

    const/4 v2, 0x1

    const/16 v3, 0x13

    sget-object v4, Lorg/threeten/bp/format/SignStyle;->NORMAL:Lorg/threeten/bp/format/SignStyle;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Lorg/threeten/bp/temporal/TemporalField;IILorg/threeten/bp/format/SignStyle;)V

    iput-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$TextPrinterParser;->numberPrinterParser:Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;

    .line 2896
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$TextPrinterParser;->numberPrinterParser:Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;

    return-object v0
.end method


# virtual methods
.method public print(Lorg/threeten/bp/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 7

    .line 2853
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Lorg/threeten/bp/temporal/TemporalField;

    invoke-virtual {p1, v0}, Lorg/threeten/bp/format/DateTimePrintContext;->getValue(Lorg/threeten/bp/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2857
    :cond_0
    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$TextPrinterParser;->provider:Lorg/threeten/bp/format/DateTimeTextProvider;

    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Lorg/threeten/bp/temporal/TemporalField;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$TextPrinterParser;->textStyle:Lorg/threeten/bp/format/TextStyle;

    invoke-virtual {p1}, Lorg/threeten/bp/format/DateTimePrintContext;->getLocale()Ljava/util/Locale;

    move-result-object v6

    move-object v0, v1

    move-object v1, v2

    move-wide v2, v3

    move-object v4, v5

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lorg/threeten/bp/format/DateTimeTextProvider;->getText(Lorg/threeten/bp/temporal/TemporalField;JLorg/threeten/bp/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2859
    invoke-direct {p0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$TextPrinterParser;->numberPrinterParser()Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->print(Lorg/threeten/bp/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z

    move-result p1

    return p1

    .line 2861
    :cond_1
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 2901
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$TextPrinterParser;->textStyle:Lorg/threeten/bp/format/TextStyle;

    sget-object v1, Lorg/threeten/bp/format/TextStyle;->FULL:Lorg/threeten/bp/format/TextStyle;

    const-string v2, ")"

    const-string v3, "Text("

    if-ne v0, v1, :cond_0

    .line 2902
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Lorg/threeten/bp/temporal/TemporalField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2904
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Lorg/threeten/bp/temporal/TemporalField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$TextPrinterParser;->textStyle:Lorg/threeten/bp/format/TextStyle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
