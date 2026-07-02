.class final Lorg/threeten/bp/format/DateTimeBuilder;
.super Lorg/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor;
.source "DateTimeBuilder.java"

# interfaces
.implements Lorg/threeten/bp/temporal/TemporalAccessor;
.implements Ljava/lang/Cloneable;


# instance fields
.field chrono:Lorg/threeten/bp/chrono/Chronology;

.field date:Lorg/threeten/bp/chrono/ChronoLocalDate;

.field excessDays:Lorg/threeten/bp/Period;

.field final fieldValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/threeten/bp/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field leapSecond:Z

.field time:Lorg/threeten/bp/LocalTime;

.field zone:Lorg/threeten/bp/ZoneId;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 132
    invoke-direct {p0}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor;-><init>()V

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    return-void
.end method

.method private getFieldValue0(Lorg/threeten/bp/temporal/TemporalField;)Ljava/lang/Long;
    .locals 1

    .line 149
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1
.end method


# virtual methods
.method public getLong(Lorg/threeten/bp/temporal/TemporalField;)J
    .locals 3

    const-string v0, "field"

    .line 658
    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 659
    invoke-direct {p0, p1}, Lorg/threeten/bp/format/DateTimeBuilder;->getFieldValue0(Lorg/threeten/bp/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_2

    .line 661
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeBuilder;->date:Lorg/threeten/bp/chrono/ChronoLocalDate;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/threeten/bp/chrono/ChronoLocalDate;->isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeBuilder;->date:Lorg/threeten/bp/chrono/ChronoLocalDate;

    invoke-interface {v0, p1}, Lorg/threeten/bp/temporal/TemporalAccessor;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v0

    return-wide v0

    .line 664
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeBuilder;->time:Lorg/threeten/bp/LocalTime;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalTime;->isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 665
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeBuilder;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalTime;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v0

    return-wide v0

    .line 667
    :cond_1
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 669
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 651
    :cond_0
    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeBuilder;->date:Lorg/threeten/bp/chrono/ChronoLocalDate;

    if-eqz v1, :cond_1

    .line 652
    invoke-virtual {v1, p1}, Lorg/threeten/bp/chrono/ChronoLocalDate;->isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeBuilder;->time:Lorg/threeten/bp/LocalTime;

    if-eqz v1, :cond_3

    .line 653
    invoke-virtual {v1, p1}, Lorg/threeten/bp/LocalTime;->isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public query(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/threeten/bp/temporal/TemporalQuery<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 675
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->zoneId()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 676
    iget-object p1, p0, Lorg/threeten/bp/format/DateTimeBuilder;->zone:Lorg/threeten/bp/ZoneId;

    return-object p1

    .line 677
    :cond_0
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->chronology()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 678
    iget-object p1, p0, Lorg/threeten/bp/format/DateTimeBuilder;->chrono:Lorg/threeten/bp/chrono/Chronology;

    return-object p1

    .line 679
    :cond_1
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->localDate()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_3

    .line 680
    iget-object p1, p0, Lorg/threeten/bp/format/DateTimeBuilder;->date:Lorg/threeten/bp/chrono/ChronoLocalDate;

    if-eqz p1, :cond_2

    invoke-static {p1}, Lorg/threeten/bp/LocalDate;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/LocalDate;

    move-result-object v1

    :cond_2
    return-object v1

    .line 681
    :cond_3
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->localTime()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_4

    .line 682
    iget-object p1, p0, Lorg/threeten/bp/format/DateTimeBuilder;->time:Lorg/threeten/bp/LocalTime;

    return-object p1

    .line 683
    :cond_4
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->zone()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_7

    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->offset()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_5

    goto :goto_0

    .line 685
    :cond_5
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->precision()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_6

    return-object v1

    .line 690
    :cond_6
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalQuery;->queryFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 684
    :cond_7
    :goto_0
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalQuery;->queryFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 696
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "DateTimeBuilder["

    .line 697
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "fields="

    .line 699
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, ", "

    .line 701
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeBuilder;->chrono:Lorg/threeten/bp/chrono/Chronology;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 702
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeBuilder;->zone:Lorg/threeten/bp/ZoneId;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 703
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeBuilder;->date:Lorg/threeten/bp/chrono/ChronoLocalDate;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 704
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeBuilder;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 705
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 706
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
