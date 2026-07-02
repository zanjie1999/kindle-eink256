.class public final enum Lcom/amazon/sitb/android/SeriesAge;
.super Ljava/lang/Enum;
.source "SeriesAge.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/sitb/android/SeriesAge;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/sitb/android/SeriesAge;

.field public static final enum CURRENT:Lcom/amazon/sitb/android/SeriesAge;

.field public static final enum EXPIRED:Lcom/amazon/sitb/android/SeriesAge;

.field public static final enum EXPIRING:Lcom/amazon/sitb/android/SeriesAge;

.field public static final enum FRESH:Lcom/amazon/sitb/android/SeriesAge;


# instance fields
.field private final durationInMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 5
    const-class v0, Lcom/amazon/sitb/android/SeriesAge;

    .line 11
    new-instance v0, Lcom/amazon/sitb/android/SeriesAge;

    const-wide/32 v1, 0xea60

    const/4 v3, 0x0

    const-string v4, "FRESH"

    invoke-direct {v0, v4, v3, v1, v2}, Lcom/amazon/sitb/android/SeriesAge;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/amazon/sitb/android/SeriesAge;->FRESH:Lcom/amazon/sitb/android/SeriesAge;

    .line 16
    new-instance v0, Lcom/amazon/sitb/android/SeriesAge;

    const/4 v1, 0x1

    const-string v2, "CURRENT"

    invoke-direct {v0, v2, v1}, Lcom/amazon/sitb/android/SeriesAge;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/sitb/android/SeriesAge;->CURRENT:Lcom/amazon/sitb/android/SeriesAge;

    .line 21
    new-instance v0, Lcom/amazon/sitb/android/SeriesAge;

    const-wide/32 v4, 0x493e0

    const/4 v2, 0x2

    const-string v6, "EXPIRING"

    invoke-direct {v0, v6, v2, v4, v5}, Lcom/amazon/sitb/android/SeriesAge;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/amazon/sitb/android/SeriesAge;->EXPIRING:Lcom/amazon/sitb/android/SeriesAge;

    .line 26
    new-instance v0, Lcom/amazon/sitb/android/SeriesAge;

    const/4 v4, 0x3

    const-string v5, "EXPIRED"

    invoke-direct {v0, v5, v4}, Lcom/amazon/sitb/android/SeriesAge;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/sitb/android/SeriesAge;->EXPIRED:Lcom/amazon/sitb/android/SeriesAge;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/sitb/android/SeriesAge;

    .line 5
    sget-object v6, Lcom/amazon/sitb/android/SeriesAge;->FRESH:Lcom/amazon/sitb/android/SeriesAge;

    aput-object v6, v5, v3

    sget-object v3, Lcom/amazon/sitb/android/SeriesAge;->CURRENT:Lcom/amazon/sitb/android/SeriesAge;

    aput-object v3, v5, v1

    sget-object v1, Lcom/amazon/sitb/android/SeriesAge;->EXPIRING:Lcom/amazon/sitb/android/SeriesAge;

    aput-object v1, v5, v2

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/sitb/android/SeriesAge;->$VALUES:[Lcom/amazon/sitb/android/SeriesAge;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 32
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/amazon/sitb/android/SeriesAge;-><init>(Ljava/lang/String;IJ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput-wide p3, p0, Lcom/amazon/sitb/android/SeriesAge;->durationInMillis:J

    return-void
.end method

.method public static getAge(JJ)Lcom/amazon/sitb/android/SeriesAge;
    .locals 3

    sub-long/2addr p2, p0

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gtz v2, :cond_0

    .line 77
    sget-object p0, Lcom/amazon/sitb/android/SeriesAge;->EXPIRED:Lcom/amazon/sitb/android/SeriesAge;

    return-object p0

    .line 80
    :cond_0
    sget-object v0, Lcom/amazon/sitb/android/SeriesAge;->FRESH:Lcom/amazon/sitb/android/SeriesAge;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/SeriesAge;->getDurationInMillis()J

    move-result-wide v0

    cmp-long v2, p0, v0

    if-gtz v2, :cond_1

    .line 82
    sget-object p0, Lcom/amazon/sitb/android/SeriesAge;->FRESH:Lcom/amazon/sitb/android/SeriesAge;

    return-object p0

    .line 85
    :cond_1
    sget-object p0, Lcom/amazon/sitb/android/SeriesAge;->EXPIRING:Lcom/amazon/sitb/android/SeriesAge;

    invoke-virtual {p0}, Lcom/amazon/sitb/android/SeriesAge;->getDurationInMillis()J

    move-result-wide p0

    cmp-long v0, p2, p0

    if-gez v0, :cond_2

    .line 87
    sget-object p0, Lcom/amazon/sitb/android/SeriesAge;->EXPIRING:Lcom/amazon/sitb/android/SeriesAge;

    return-object p0

    .line 90
    :cond_2
    sget-object p0, Lcom/amazon/sitb/android/SeriesAge;->CURRENT:Lcom/amazon/sitb/android/SeriesAge;

    return-object p0
.end method

.method public static getAge(Lcom/amazon/sitb/android/SeriesInfo;)Lcom/amazon/sitb/android/SeriesAge;
    .locals 4

    .line 61
    invoke-virtual {p0}, Lcom/amazon/sitb/android/SeriesInfo;->getAgeInMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/amazon/sitb/android/SeriesInfo;->getMaxAgeInMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/amazon/sitb/android/SeriesAge;->getAge(JJ)Lcom/amazon/sitb/android/SeriesAge;

    move-result-object p0

    return-object p0
.end method

.method public static getTimeToExpiringInMillis(JJ)J
    .locals 0

    sub-long/2addr p2, p0

    .line 127
    sget-object p0, Lcom/amazon/sitb/android/SeriesAge;->EXPIRING:Lcom/amazon/sitb/android/SeriesAge;

    invoke-virtual {p0}, Lcom/amazon/sitb/android/SeriesAge;->getDurationInMillis()J

    move-result-wide p0

    sub-long/2addr p2, p0

    const-wide/16 p0, 0x0

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getTimeToExpiringInMillis(Lcom/amazon/sitb/android/SeriesInfo;)J
    .locals 4

    if-eqz p0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/amazon/sitb/android/SeriesInfo;->getAgeInMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/amazon/sitb/android/SeriesInfo;->getMaxAgeInMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/amazon/sitb/android/SeriesAge;->getTimeToExpiringInMillis(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/sitb/android/SeriesAge;
    .locals 1

    .line 5
    const-class v0, Lcom/amazon/sitb/android/SeriesAge;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/sitb/android/SeriesAge;

    return-object p0
.end method

.method public static values()[Lcom/amazon/sitb/android/SeriesAge;
    .locals 1

    .line 5
    sget-object v0, Lcom/amazon/sitb/android/SeriesAge;->$VALUES:[Lcom/amazon/sitb/android/SeriesAge;

    invoke-virtual {v0}, [Lcom/amazon/sitb/android/SeriesAge;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/sitb/android/SeriesAge;

    return-object v0
.end method


# virtual methods
.method public getDurationInMillis()J
    .locals 3

    .line 47
    invoke-virtual {p0}, Lcom/amazon/sitb/android/SeriesAge;->hasDuration()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-wide v0, p0, Lcom/amazon/sitb/android/SeriesAge;->durationInMillis:J

    return-wide v0

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SeriesInfo : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " does not have a duration"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasDuration()Z
    .locals 5

    .line 42
    iget-wide v0, p0, Lcom/amazon/sitb/android/SeriesAge;->durationInMillis:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUsable()Z
    .locals 1

    .line 135
    sget-object v0, Lcom/amazon/sitb/android/SeriesAge;->EXPIRED:Lcom/amazon/sitb/android/SeriesAge;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public shouldUpdate()Z
    .locals 1

    .line 151
    sget-object v0, Lcom/amazon/sitb/android/SeriesAge;->EXPIRING:Lcom/amazon/sitb/android/SeriesAge;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/sitb/android/SeriesAge;->EXPIRED:Lcom/amazon/sitb/android/SeriesAge;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
