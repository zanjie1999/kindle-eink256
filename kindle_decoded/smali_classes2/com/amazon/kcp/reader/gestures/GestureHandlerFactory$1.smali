.class final Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory$1;
.super Ljava/lang/Object;
.source "GestureHandlerFactory.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/amazon/kindle/krx/gesture/IGestureHandler;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/kindle/krx/gesture/IGestureHandler;Lcom/amazon/kindle/krx/gesture/IGestureHandler;)I
    .locals 2

    .line 41
    invoke-interface {p2}, Lcom/amazon/kindle/krx/gesture/IGestureHandler;->getPriority()I

    move-result v0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/gesture/IGestureHandler;->getPriority()I

    move-result v1

    invoke-static {v0, v1}, Lcom/amazon/kcp/util/Utils;->compare(II)I

    move-result v0

    if-nez v0, :cond_1

    .line 43
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 46
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p2, p1}, Lcom/amazon/kcp/util/Utils;->compare(II)I

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 37
    check-cast p1, Lcom/amazon/kindle/krx/gesture/IGestureHandler;

    check-cast p2, Lcom/amazon/kindle/krx/gesture/IGestureHandler;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory$1;->compare(Lcom/amazon/kindle/krx/gesture/IGestureHandler;Lcom/amazon/kindle/krx/gesture/IGestureHandler;)I

    move-result p1

    return p1
.end method
