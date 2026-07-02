.class public final Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint$Companion;
.super Ljava/lang/Object;
.source "SidekickSettings.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSidekickSettings.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SidekickSettings.kt\ncom/amazon/kcp/home/debug/SidekickGammaEndpoint$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,253:1\n1102#2,2:254\n*E\n*S KotlinDebug\n*F\n+ 1 SidekickSettings.kt\ncom/amazon/kcp/home/debug/SidekickGammaEndpoint$Companion\n*L\n93#1,2:254\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromUrl(Ljava/lang/String;)Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 89
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 93
    :cond_2
    invoke-static {}, Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint;->values()[Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint;

    move-result-object v1

    .line 254
    array-length v2, v1

    :goto_2
    if-ge v0, v2, :cond_4

    aget-object v3, v1, v0

    .line 93
    invoke-virtual {v3}, Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    return-object v3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 255
    :cond_4
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string v0, "Array contains no element matching the predicate."

    invoke-direct {p1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
