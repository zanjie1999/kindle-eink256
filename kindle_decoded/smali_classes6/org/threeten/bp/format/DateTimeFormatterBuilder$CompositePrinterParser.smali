.class final Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;
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
    name = "CompositePrinterParser"
.end annotation


# instance fields
.field private final optional:Z

.field private final printerParsers:[Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# direct methods
.method constructor <init>(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;",
            ">;Z)V"
        }
    .end annotation

    .line 1966
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;-><init>([Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;Z)V

    return-void
.end method

.method constructor <init>([Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;Z)V
    .locals 0

    .line 1969
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1970
    iput-object p1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;->printerParsers:[Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    .line 1971
    iput-boolean p2, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    return-void
.end method


# virtual methods
.method public print(Lorg/threeten/bp/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 6

    .line 1989
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 1990
    iget-boolean v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    if-eqz v1, :cond_0

    .line 1991
    invoke-virtual {p1}, Lorg/threeten/bp/format/DateTimePrintContext;->startOptional()V

    .line 1994
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;->printerParsers:[Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v2, :cond_3

    aget-object v5, v1, v3

    .line 1995
    invoke-interface {v5, p1, p2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;->print(Lorg/threeten/bp/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1996
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2001
    iget-boolean p2, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    if-eqz p2, :cond_1

    .line 2002
    invoke-virtual {p1}, Lorg/threeten/bp/format/DateTimePrintContext;->endOptional()V

    :cond_1
    return v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2001
    :cond_3
    iget-boolean p2, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    if-eqz p2, :cond_4

    .line 2002
    invoke-virtual {p1}, Lorg/threeten/bp/format/DateTimePrintContext;->endOptional()V

    :cond_4
    return v4

    :catchall_0
    move-exception p2

    .line 2001
    iget-boolean v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    if-eqz v0, :cond_5

    .line 2002
    invoke-virtual {p1}, Lorg/threeten/bp/format/DateTimePrintContext;->endOptional()V

    .line 2004
    :cond_5
    throw p2
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 2035
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2036
    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;->printerParsers:[Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    if-eqz v1, :cond_3

    .line 2037
    iget-boolean v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    if-eqz v1, :cond_0

    const-string v1, "["

    goto :goto_0

    :cond_0
    const-string v1, "("

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2038
    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;->printerParsers:[Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 2039
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2041
    :cond_1
    iget-boolean v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    if-eqz v1, :cond_2

    const-string v1, "]"

    goto :goto_2

    :cond_2
    const-string v1, ")"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2043
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withOptional(Z)Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;
    .locals 2

    .line 1981
    iget-boolean v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    if-ne p1, v0, :cond_0

    return-object p0

    .line 1984
    :cond_0
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;->printerParsers:[Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    invoke-direct {v0, v1, p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;-><init>([Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;Z)V

    return-object v0
.end method
