.class public final enum Lcom/amazon/sitb/android/PriceAge;
.super Ljava/lang/Enum;
.source "PriceAge.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/sitb/android/PriceAge;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/sitb/android/PriceAge;

.field public static final enum CURRENT:Lcom/amazon/sitb/android/PriceAge;

.field public static final enum EXPIRED:Lcom/amazon/sitb/android/PriceAge;

.field public static final enum EXPIRING:Lcom/amazon/sitb/android/PriceAge;

.field public static final enum FRESH:Lcom/amazon/sitb/android/PriceAge;


# instance fields
.field private final durationInMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 9
    const-class v0, Lcom/amazon/sitb/android/PriceAge;

    .line 14
    new-instance v0, Lcom/amazon/sitb/android/PriceAge;

    const-wide/32 v1, 0xea60

    const/4 v3, 0x0

    const-string v4, "FRESH"

    invoke-direct {v0, v4, v3, v1, v2}, Lcom/amazon/sitb/android/PriceAge;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/amazon/sitb/android/PriceAge;->FRESH:Lcom/amazon/sitb/android/PriceAge;

    .line 19
    new-instance v0, Lcom/amazon/sitb/android/PriceAge;

    const/4 v1, 0x1

    const-string v2, "CURRENT"

    invoke-direct {v0, v2, v1}, Lcom/amazon/sitb/android/PriceAge;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/sitb/android/PriceAge;->CURRENT:Lcom/amazon/sitb/android/PriceAge;

    .line 24
    new-instance v0, Lcom/amazon/sitb/android/PriceAge;

    const-wide/32 v4, 0x493e0

    const/4 v2, 0x2

    const-string v6, "EXPIRING"

    invoke-direct {v0, v6, v2, v4, v5}, Lcom/amazon/sitb/android/PriceAge;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/amazon/sitb/android/PriceAge;->EXPIRING:Lcom/amazon/sitb/android/PriceAge;

    .line 29
    new-instance v0, Lcom/amazon/sitb/android/PriceAge;

    const/4 v4, 0x3

    const-string v5, "EXPIRED"

    invoke-direct {v0, v5, v4}, Lcom/amazon/sitb/android/PriceAge;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/sitb/android/PriceAge;->EXPIRED:Lcom/amazon/sitb/android/PriceAge;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/sitb/android/PriceAge;

    .line 9
    sget-object v6, Lcom/amazon/sitb/android/PriceAge;->FRESH:Lcom/amazon/sitb/android/PriceAge;

    aput-object v6, v5, v3

    sget-object v3, Lcom/amazon/sitb/android/PriceAge;->CURRENT:Lcom/amazon/sitb/android/PriceAge;

    aput-object v3, v5, v1

    sget-object v1, Lcom/amazon/sitb/android/PriceAge;->EXPIRING:Lcom/amazon/sitb/android/PriceAge;

    aput-object v1, v5, v2

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/sitb/android/PriceAge;->$VALUES:[Lcom/amazon/sitb/android/PriceAge;

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

    .line 35
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/amazon/sitb/android/PriceAge;-><init>(Ljava/lang/String;IJ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput-wide p3, p0, Lcom/amazon/sitb/android/PriceAge;->durationInMillis:J

    return-void
.end method

.method public static getAge(JJ)Lcom/amazon/sitb/android/PriceAge;
    .locals 3

    sub-long/2addr p2, p0

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gtz v2, :cond_0

    .line 80
    sget-object p0, Lcom/amazon/sitb/android/PriceAge;->EXPIRED:Lcom/amazon/sitb/android/PriceAge;

    return-object p0

    .line 83
    :cond_0
    sget-object v0, Lcom/amazon/sitb/android/PriceAge;->FRESH:Lcom/amazon/sitb/android/PriceAge;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/PriceAge;->getDurationInMillis()J

    move-result-wide v0

    cmp-long v2, p0, v0

    if-gtz v2, :cond_1

    .line 85
    sget-object p0, Lcom/amazon/sitb/android/PriceAge;->FRESH:Lcom/amazon/sitb/android/PriceAge;

    return-object p0

    .line 88
    :cond_1
    sget-object p0, Lcom/amazon/sitb/android/PriceAge;->EXPIRING:Lcom/amazon/sitb/android/PriceAge;

    invoke-virtual {p0}, Lcom/amazon/sitb/android/PriceAge;->getDurationInMillis()J

    move-result-wide p0

    cmp-long v0, p2, p0

    if-gez v0, :cond_2

    .line 90
    sget-object p0, Lcom/amazon/sitb/android/PriceAge;->EXPIRING:Lcom/amazon/sitb/android/PriceAge;

    return-object p0

    .line 93
    :cond_2
    sget-object p0, Lcom/amazon/sitb/android/PriceAge;->CURRENT:Lcom/amazon/sitb/android/PriceAge;

    return-object p0
.end method

.method public static getAge(Lcom/amazon/sitb/android/BookPrice;)Lcom/amazon/sitb/android/PriceAge;
    .locals 4

    .line 64
    invoke-virtual {p0}, Lcom/amazon/sitb/android/BookPrice;->getAgeInMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/amazon/sitb/android/BookPrice;->getMaxAgeInMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/amazon/sitb/android/PriceAge;->getAge(JJ)Lcom/amazon/sitb/android/PriceAge;

    move-result-object p0

    return-object p0
.end method

.method public static getTimeToExpiringInMillis(JJ)J
    .locals 0

    sub-long/2addr p2, p0

    .line 130
    sget-object p0, Lcom/amazon/sitb/android/PriceAge;->EXPIRING:Lcom/amazon/sitb/android/PriceAge;

    invoke-virtual {p0}, Lcom/amazon/sitb/android/PriceAge;->getDurationInMillis()J

    move-result-wide p0

    sub-long/2addr p2, p0

    const-wide/16 p0, 0x0

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getTimeToExpiringInMillis(Lcom/amazon/sitb/android/BookPrice;)J
    .locals 4

    if-eqz p0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/amazon/sitb/android/BookPrice;->getAgeInMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/amazon/sitb/android/BookPrice;->getMaxAgeInMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/amazon/sitb/android/PriceAge;->getTimeToExpiringInMillis(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/sitb/android/PriceAge;
    .locals 1

    .line 9
    const-class v0, Lcom/amazon/sitb/android/PriceAge;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/sitb/android/PriceAge;

    return-object p0
.end method

.method public static values()[Lcom/amazon/sitb/android/PriceAge;
    .locals 1

    .line 9
    sget-object v0, Lcom/amazon/sitb/android/PriceAge;->$VALUES:[Lcom/amazon/sitb/android/PriceAge;

    invoke-virtual {v0}, [Lcom/amazon/sitb/android/PriceAge;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/sitb/android/PriceAge;

    return-object v0
.end method


# virtual methods
.method public getDurationInMillis()J
    .locals 3

    .line 50
    invoke-virtual {p0}, Lcom/amazon/sitb/android/PriceAge;->hasDuration()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-wide v0, p0, Lcom/amazon/sitb/android/PriceAge;->durationInMillis:J

    return-wide v0

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PriceAge."

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

    .line 45
    iget-wide v0, p0, Lcom/amazon/sitb/android/PriceAge;->durationInMillis:J

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

    .line 138
    sget-object v0, Lcom/amazon/sitb/android/PriceAge;->EXPIRED:Lcom/amazon/sitb/android/PriceAge;

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

    .line 154
    sget-object v0, Lcom/amazon/sitb/android/PriceAge;->EXPIRING:Lcom/amazon/sitb/android/PriceAge;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/sitb/android/PriceAge;->EXPIRED:Lcom/amazon/sitb/android/PriceAge;

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
