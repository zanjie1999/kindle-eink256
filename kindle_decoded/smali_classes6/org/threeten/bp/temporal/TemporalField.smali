.class public interface abstract Lorg/threeten/bp/temporal/TemporalField;
.super Ljava/lang/Object;
.source "TemporalField.java"


# virtual methods
.method public abstract adjustInto(Lorg/threeten/bp/temporal/Temporal;J)Lorg/threeten/bp/temporal/Temporal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lorg/threeten/bp/temporal/Temporal;",
            ">(TR;J)TR;"
        }
    .end annotation
.end method

.method public abstract getFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)J
.end method

.method public abstract isDateBased()Z
.end method

.method public abstract isSupportedBy(Lorg/threeten/bp/temporal/TemporalAccessor;)Z
.end method

.method public abstract isTimeBased()Z
.end method

.method public abstract range()Lorg/threeten/bp/temporal/ValueRange;
.end method

.method public abstract rangeRefinedBy(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/temporal/ValueRange;
.end method
