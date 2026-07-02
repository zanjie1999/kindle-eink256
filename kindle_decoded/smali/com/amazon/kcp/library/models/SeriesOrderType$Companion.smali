.class public final Lcom/amazon/kcp/library/models/SeriesOrderType$Companion;
.super Ljava/lang/Object;
.source "SeriesOrderType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/models/SeriesOrderType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/amazon/kcp/library/models/SeriesOrderType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromString(Ljava/lang/String;)Lcom/amazon/kcp/library/models/SeriesOrderType;
    .locals 2

    if-eqz p1, :cond_1

    if-eqz p1, :cond_0

    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "(this as java.lang.String).toUpperCase()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x3bd2f46c

    if-eq v0, v1, :cond_4

    const v1, -0x1d277bb3

    if-eq v0, v1, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, "ORDERED"

    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/amazon/kcp/library/models/SeriesOrderType;->ORDERED:Lcom/amazon/kcp/library/models/SeriesOrderType;

    goto :goto_2

    :cond_4
    const-string v0, "UNORDERED"

    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/amazon/kcp/library/models/SeriesOrderType;->UNORDERED:Lcom/amazon/kcp/library/models/SeriesOrderType;

    goto :goto_2

    .line 17
    :cond_5
    :goto_1
    sget-object p1, Lcom/amazon/kcp/library/models/SeriesOrderType;->UNORDERED:Lcom/amazon/kcp/library/models/SeriesOrderType;

    :goto_2
    return-object p1
.end method
