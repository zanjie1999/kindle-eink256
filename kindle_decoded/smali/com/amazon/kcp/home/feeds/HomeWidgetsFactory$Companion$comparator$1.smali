.class final Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory$Companion$comparator$1;
.super Ljava/lang/Object;
.source "HomeWidgetsFactory.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/amazon/kindle/home/card/HomeCard;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory$Companion$comparator$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory$Companion$comparator$1;

    invoke-direct {v0}, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory$Companion$comparator$1;-><init>()V

    sput-object v0, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory$Companion$comparator$1;->INSTANCE:Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory$Companion$comparator$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/amazon/kindle/home/card/HomeCard;Lcom/amazon/kindle/home/card/HomeCard;)I
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 124
    invoke-interface {p1}, Lcom/amazon/kindle/home/card/HomeCard;->getPriority()I

    move-result p1

    invoke-interface {p2}, Lcom/amazon/kindle/home/card/HomeCard;->getPriority()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 112
    check-cast p1, Lcom/amazon/kindle/home/card/HomeCard;

    check-cast p2, Lcom/amazon/kindle/home/card/HomeCard;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory$Companion$comparator$1;->compare(Lcom/amazon/kindle/home/card/HomeCard;Lcom/amazon/kindle/home/card/HomeCard;)I

    move-result p1

    return p1
.end method
