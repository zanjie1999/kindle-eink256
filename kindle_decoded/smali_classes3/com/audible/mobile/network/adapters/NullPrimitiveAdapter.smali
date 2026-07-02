.class public final Lcom/audible/mobile/network/adapters/NullPrimitiveAdapter;
.super Ljava/lang/Object;
.source "NullPrimitiveAdapter.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final booleanFromJson(Ljava/lang/Boolean;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 17
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final doubleFromJson(Ljava/lang/Double;)D
    .locals 2

    if-eqz p1, :cond_0

    .line 22
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public final intFromJson(Ljava/lang/Integer;)I
    .locals 0

    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final longFromJson(Ljava/lang/Long;)J
    .locals 2

    if-eqz p1, :cond_0

    .line 27
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method
