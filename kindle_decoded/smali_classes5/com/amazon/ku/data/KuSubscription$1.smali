.class final Lcom/amazon/ku/data/KuSubscription$1;
.super Ljava/lang/Object;
.source "KuSubscription.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ku/data/KuSubscription;->findLatestSubscription(Ljava/util/Collection;)Lcom/amazon/ku/data/KuSubscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/amazon/ku/data/KuSubscription;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/ku/data/KuSubscription;Lcom/amazon/ku/data/KuSubscription;)I
    .locals 3

    .line 100
    invoke-virtual {p1}, Lcom/amazon/ku/data/KuSubscription;->getStatusStartDate()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/amazon/ku/data/KuSubscription;->getStatusStartDate()J

    move-result-wide p1

    cmp-long v2, v0, p1

    if-lez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 97
    check-cast p1, Lcom/amazon/ku/data/KuSubscription;

    check-cast p2, Lcom/amazon/ku/data/KuSubscription;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/ku/data/KuSubscription$1;->compare(Lcom/amazon/ku/data/KuSubscription;Lcom/amazon/ku/data/KuSubscription;)I

    move-result p1

    return p1
.end method
