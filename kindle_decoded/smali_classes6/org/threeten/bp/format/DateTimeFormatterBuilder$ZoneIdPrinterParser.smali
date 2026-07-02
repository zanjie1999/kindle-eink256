.class final Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;
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
    name = "ZoneIdPrinterParser"
.end annotation


# static fields
.field private static volatile cachedSubstringTree:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final description:Ljava/lang/String;

.field private final query:Lorg/threeten/bp/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/temporal/TemporalQuery<",
            "Lorg/threeten/bp/ZoneId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/threeten/bp/temporal/TemporalQuery;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/TemporalQuery<",
            "Lorg/threeten/bp/ZoneId;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 3425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3426
    iput-object p1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->query:Lorg/threeten/bp/temporal/TemporalQuery;

    .line 3427
    iput-object p2, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public print(Lorg/threeten/bp/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 1

    .line 3433
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->query:Lorg/threeten/bp/temporal/TemporalQuery;

    invoke-virtual {p1, v0}, Lorg/threeten/bp/format/DateTimePrintContext;->getValue(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/ZoneId;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3437
    :cond_0
    invoke-virtual {p1}, Lorg/threeten/bp/ZoneId;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 3671
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->description:Ljava/lang/String;

    return-object v0
.end method
