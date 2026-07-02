.class Lorg/threeten/bp/format/DateTimeFormatter$2;
.super Ljava/lang/Object;
.source "DateTimeFormatter.java"

# interfaces
.implements Lorg/threeten/bp/temporal/TemporalQuery;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/format/DateTimeFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/threeten/bp/temporal/TemporalQuery<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 977
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queryFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)Ljava/lang/Boolean;
    .locals 1

    .line 979
    instance-of v0, p1, Lorg/threeten/bp/format/DateTimeBuilder;

    if-eqz v0, :cond_0

    .line 980
    check-cast p1, Lorg/threeten/bp/format/DateTimeBuilder;

    iget-boolean p1, p1, Lorg/threeten/bp/format/DateTimeBuilder;->leapSecond:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 982
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public bridge synthetic queryFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)Ljava/lang/Object;
    .locals 0

    .line 977
    invoke-virtual {p0, p1}, Lorg/threeten/bp/format/DateTimeFormatter$2;->queryFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
