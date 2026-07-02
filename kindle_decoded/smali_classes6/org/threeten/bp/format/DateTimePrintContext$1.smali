.class Lorg/threeten/bp/format/DateTimePrintContext$1;
.super Lorg/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor;
.source "DateTimePrintContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/threeten/bp/format/DateTimePrintContext;->adjust(Lorg/threeten/bp/temporal/TemporalAccessor;Lorg/threeten/bp/format/DateTimeFormatter;)Lorg/threeten/bp/temporal/TemporalAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$effectiveChrono:Lorg/threeten/bp/chrono/Chronology;

.field final synthetic val$effectiveDate:Lorg/threeten/bp/chrono/ChronoLocalDate;

.field final synthetic val$effectiveZone:Lorg/threeten/bp/ZoneId;

.field final synthetic val$temporal:Lorg/threeten/bp/temporal/TemporalAccessor;


# direct methods
.method constructor <init>(Lorg/threeten/bp/chrono/ChronoLocalDate;Lorg/threeten/bp/temporal/TemporalAccessor;Lorg/threeten/bp/chrono/Chronology;Lorg/threeten/bp/ZoneId;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lorg/threeten/bp/format/DateTimePrintContext$1;->val$effectiveDate:Lorg/threeten/bp/chrono/ChronoLocalDate;

    iput-object p2, p0, Lorg/threeten/bp/format/DateTimePrintContext$1;->val$temporal:Lorg/threeten/bp/temporal/TemporalAccessor;

    iput-object p3, p0, Lorg/threeten/bp/format/DateTimePrintContext$1;->val$effectiveChrono:Lorg/threeten/bp/chrono/Chronology;

    iput-object p4, p0, Lorg/threeten/bp/format/DateTimePrintContext$1;->val$effectiveZone:Lorg/threeten/bp/ZoneId;

    invoke-direct {p0}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor;-><init>()V

    return-void
.end method


# virtual methods
.method public getLong(Lorg/threeten/bp/temporal/TemporalField;)J
    .locals 2

    .line 178
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimePrintContext$1;->val$effectiveDate:Lorg/threeten/bp/chrono/ChronoLocalDate;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/threeten/bp/temporal/TemporalField;->isDateBased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimePrintContext$1;->val$effectiveDate:Lorg/threeten/bp/chrono/ChronoLocalDate;

    invoke-interface {v0, p1}, Lorg/threeten/bp/temporal/TemporalAccessor;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v0

    return-wide v0

    .line 181
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimePrintContext$1;->val$temporal:Lorg/threeten/bp/temporal/TemporalAccessor;

    invoke-interface {v0, p1}, Lorg/threeten/bp/temporal/TemporalAccessor;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z
    .locals 1

    .line 164
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimePrintContext$1;->val$effectiveDate:Lorg/threeten/bp/chrono/ChronoLocalDate;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/threeten/bp/temporal/TemporalField;->isDateBased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimePrintContext$1;->val$effectiveDate:Lorg/threeten/bp/chrono/ChronoLocalDate;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/chrono/ChronoLocalDate;->isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z

    move-result p1

    return p1

    .line 167
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimePrintContext$1;->val$temporal:Lorg/threeten/bp/temporal/TemporalAccessor;

    invoke-interface {v0, p1}, Lorg/threeten/bp/temporal/TemporalAccessor;->isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z

    move-result p1

    return p1
.end method

.method public query(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/threeten/bp/temporal/TemporalQuery<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 186
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->chronology()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 187
    iget-object p1, p0, Lorg/threeten/bp/format/DateTimePrintContext$1;->val$effectiveChrono:Lorg/threeten/bp/chrono/Chronology;

    return-object p1

    .line 189
    :cond_0
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->zoneId()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 190
    iget-object p1, p0, Lorg/threeten/bp/format/DateTimePrintContext$1;->val$effectiveZone:Lorg/threeten/bp/ZoneId;

    return-object p1

    .line 192
    :cond_1
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->precision()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 193
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimePrintContext$1;->val$temporal:Lorg/threeten/bp/temporal/TemporalAccessor;

    invoke-interface {v0, p1}, Lorg/threeten/bp/temporal/TemporalAccessor;->query(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 195
    :cond_2
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalQuery;->queryFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;
    .locals 1

    .line 171
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimePrintContext$1;->val$effectiveDate:Lorg/threeten/bp/chrono/ChronoLocalDate;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/threeten/bp/temporal/TemporalField;->isDateBased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimePrintContext$1;->val$effectiveDate:Lorg/threeten/bp/chrono/ChronoLocalDate;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor;->range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1

    .line 174
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimePrintContext$1;->val$temporal:Lorg/threeten/bp/temporal/TemporalAccessor;

    invoke-interface {v0, p1}, Lorg/threeten/bp/temporal/TemporalAccessor;->range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1
.end method
