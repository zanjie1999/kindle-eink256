.class Lcom/amazon/weblab/mobile/cache/AutoPolicy;
.super Lcom/amazon/weblab/mobile/cache/CachePolicy;
.source "AutoPolicy.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/amazon/weblab/mobile/cache/CachePolicy;-><init>()V

    return-void
.end method


# virtual methods
.method public hasExpired(Lcom/amazon/weblab/mobile/model/TreatmentAssignment;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 18
    invoke-virtual {p1}, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->getSuggestedExpiration()Ljava/util/Date;

    move-result-object p1

    .line 19
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p1

    return p1

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "treatment can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
