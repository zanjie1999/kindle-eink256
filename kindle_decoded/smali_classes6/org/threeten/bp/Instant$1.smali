.class Lorg/threeten/bp/Instant$1;
.super Ljava/lang/Object;
.source "Instant.java"

# interfaces
.implements Lorg/threeten/bp/temporal/TemporalQuery;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/Instant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/threeten/bp/temporal/TemporalQuery<",
        "Lorg/threeten/bp/Instant;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic queryFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)Ljava/lang/Object;
    .locals 0

    .line 198
    invoke-virtual {p0, p1}, Lorg/threeten/bp/Instant$1;->queryFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/Instant;

    move-result-object p1

    return-object p1
.end method

.method public queryFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/Instant;
    .locals 0

    .line 201
    invoke-static {p1}, Lorg/threeten/bp/Instant;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/Instant;

    move-result-object p1

    return-object p1
.end method
