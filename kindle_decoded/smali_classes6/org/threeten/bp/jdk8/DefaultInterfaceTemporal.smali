.class public abstract Lorg/threeten/bp/jdk8/DefaultInterfaceTemporal;
.super Lorg/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor;
.source "DefaultInterfaceTemporal.java"

# interfaces
.implements Lorg/threeten/bp/temporal/Temporal;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor;-><init>()V

    return-void
.end method


# virtual methods
.method public minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    .line 64
    invoke-interface {p0, p1, p2, p3}, Lorg/threeten/bp/temporal/Temporal;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-interface {p1, v0, v1, p3}, Lorg/threeten/bp/temporal/Temporal;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-interface {p0, p1, p2, p3}, Lorg/threeten/bp/temporal/Temporal;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/temporal/Temporal;
    .locals 0

    .line 49
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalAdjuster;->adjustInto(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    return-object p1
.end method
