.class public interface abstract Lorg/threeten/bp/temporal/TemporalAccessor;
.super Ljava/lang/Object;
.source "TemporalAccessor.java"


# virtual methods
.method public abstract get(Lorg/threeten/bp/temporal/TemporalField;)I
.end method

.method public abstract getLong(Lorg/threeten/bp/temporal/TemporalField;)J
.end method

.method public abstract isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z
.end method

.method public abstract query(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/threeten/bp/temporal/TemporalQuery<",
            "TR;>;)TR;"
        }
    .end annotation
.end method

.method public abstract range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;
.end method
