.class public Lcom/amazon/sitb/android/cache/series/SeriesInfoFormatter;
.super Ljava/lang/Object;
.source "SeriesInfoFormatter.java"

# interfaces
.implements Lcom/amazon/sitb/android/cache/CacheObjectFormatter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/sitb/android/cache/CacheObjectFormatter<",
        "Lcom/amazon/sitb/android/SeriesInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public format(Lcom/amazon/sitb/android/SeriesInfo;)Ljava/lang/String;
    .locals 4

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    .line 18
    invoke-virtual {p1}, Lcom/amazon/sitb/android/SeriesInfo;->getNextBookAsin()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "@@"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 19
    invoke-virtual {p1}, Lcom/amazon/sitb/android/SeriesInfo;->getNextBookTitle()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 20
    invoke-virtual {p1}, Lcom/amazon/sitb/android/SeriesInfo;->getShowAtPercentRead()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v0, v3

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 21
    invoke-virtual {p1}, Lcom/amazon/sitb/android/SeriesInfo;->getTimeCached()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v0, v3

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 22
    invoke-virtual {p1}, Lcom/amazon/sitb/android/SeriesInfo;->getMaxAgeInMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/16 v1, 0x8

    aput-object p1, v0, v1

    const-string p1, "%s%s%s%s%d%s%d%s%d"

    .line 17
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic format(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 12
    check-cast p1, Lcom/amazon/sitb/android/SeriesInfo;

    invoke-virtual {p0, p1}, Lcom/amazon/sitb/android/cache/series/SeriesInfoFormatter;->format(Lcom/amazon/sitb/android/SeriesInfo;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
