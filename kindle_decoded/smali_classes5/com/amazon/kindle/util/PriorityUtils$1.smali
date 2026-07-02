.class final Lcom/amazon/kindle/util/PriorityUtils$1;
.super Ljava/lang/Object;
.source "PriorityUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/util/PriorityUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/amazon/kindle/krx/foundation/Prioritized;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/kindle/krx/foundation/Prioritized;Lcom/amazon/kindle/krx/foundation/Prioritized;)I
    .locals 0

    .line 22
    invoke-interface {p1}, Lcom/amazon/kindle/krx/foundation/Prioritized;->getPriority()I

    move-result p1

    invoke-interface {p2}, Lcom/amazon/kindle/krx/foundation/Prioritized;->getPriority()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 19
    check-cast p1, Lcom/amazon/kindle/krx/foundation/Prioritized;

    check-cast p2, Lcom/amazon/kindle/krx/foundation/Prioritized;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/util/PriorityUtils$1;->compare(Lcom/amazon/kindle/krx/foundation/Prioritized;Lcom/amazon/kindle/krx/foundation/Prioritized;)I

    move-result p1

    return p1
.end method
