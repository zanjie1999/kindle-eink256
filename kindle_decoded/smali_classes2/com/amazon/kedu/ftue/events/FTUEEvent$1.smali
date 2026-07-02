.class final Lcom/amazon/kedu/ftue/events/FTUEEvent$1;
.super Ljava/lang/Object;
.source "FTUEEvent.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kedu/ftue/events/FTUEEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/amazon/kedu/ftue/events/FTUEEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/kedu/ftue/events/FTUEEvent;Lcom/amazon/kedu/ftue/events/FTUEEvent;)I
    .locals 2

    .line 79
    invoke-virtual {p1}, Lcom/amazon/kedu/ftue/events/FTUEEvent;->getPriority()I

    move-result p1

    .line 80
    invoke-virtual {p2}, Lcom/amazon/kedu/ftue/events/FTUEEvent;->getPriority()I

    move-result p2

    .line 82
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 84
    invoke-static {p2, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1

    :cond_0
    if-le p1, p2, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    if-ne p1, p2, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 75
    check-cast p1, Lcom/amazon/kedu/ftue/events/FTUEEvent;

    check-cast p2, Lcom/amazon/kedu/ftue/events/FTUEEvent;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kedu/ftue/events/FTUEEvent$1;->compare(Lcom/amazon/kedu/ftue/events/FTUEEvent;Lcom/amazon/kedu/ftue/events/FTUEEvent;)I

    move-result p1

    return p1
.end method
