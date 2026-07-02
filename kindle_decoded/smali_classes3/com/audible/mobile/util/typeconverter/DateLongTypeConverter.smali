.class public final Lcom/audible/mobile/util/typeconverter/DateLongTypeConverter;
.super Ljava/lang/Object;
.source "DateLongTypeConverter.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dateToLong(Ljava/util/Date;)J
    .locals 2

    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    return-wide v0
.end method

.method public final longToDate(J)Ljava/util/Date;
    .locals 3

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 15
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
