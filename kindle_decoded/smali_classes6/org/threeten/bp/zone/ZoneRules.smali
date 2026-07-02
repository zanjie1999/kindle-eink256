.class public abstract Lorg/threeten/bp/zone/ZoneRules;
.super Ljava/lang/Object;
.source "ZoneRules.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/threeten/bp/zone/ZoneRules$Fixed;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static of(Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/zone/ZoneRules;
    .locals 1

    const-string v0, "offset"

    .line 103
    invoke-static {p0, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    new-instance v0, Lorg/threeten/bp/zone/ZoneRules$Fixed;

    invoke-direct {v0, p0}, Lorg/threeten/bp/zone/ZoneRules$Fixed;-><init>(Lorg/threeten/bp/ZoneOffset;)V

    return-object v0
.end method


# virtual methods
.method public abstract getOffset(Lorg/threeten/bp/Instant;)Lorg/threeten/bp/ZoneOffset;
.end method

.method public abstract getTransition(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/zone/ZoneOffsetTransition;
.end method

.method public abstract getValidOffsets(Lorg/threeten/bp/LocalDateTime;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/LocalDateTime;",
            ")",
            "Ljava/util/List<",
            "Lorg/threeten/bp/ZoneOffset;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isFixedOffset()Z
.end method

.method public abstract isValidOffset(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)Z
.end method
