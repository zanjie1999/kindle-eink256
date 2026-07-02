.class public final Lcom/amazon/kcp/util/device/SafeInsetsPair;
.super Ljava/lang/Object;
.source "SafeInsets.kt"


# instance fields
.field private final landscapeSafeInsets:Lcom/amazon/kcp/util/device/SafeInsets;

.field private final portraitSafeInsets:Lcom/amazon/kcp/util/device/SafeInsets;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/amazon/kcp/util/device/SafeInsetsPair;-><init>(Lcom/amazon/kcp/util/device/SafeInsets;Lcom/amazon/kcp/util/device/SafeInsets;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/util/device/SafeInsets;Lcom/amazon/kcp/util/device/SafeInsets;)V
    .locals 1

    const-string v0, "portraitSafeInsets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "landscapeSafeInsets"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/util/device/SafeInsetsPair;->portraitSafeInsets:Lcom/amazon/kcp/util/device/SafeInsets;

    iput-object p2, p0, Lcom/amazon/kcp/util/device/SafeInsetsPair;->landscapeSafeInsets:Lcom/amazon/kcp/util/device/SafeInsets;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/amazon/kcp/util/device/SafeInsets;Lcom/amazon/kcp/util/device/SafeInsets;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 26
    new-instance p1, Lcom/amazon/kcp/util/device/SafeInsets;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kcp/util/device/SafeInsets;-><init>(IIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 27
    new-instance p2, Lcom/amazon/kcp/util/device/SafeInsets;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kcp/util/device/SafeInsets;-><init>(IIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/util/device/SafeInsetsPair;-><init>(Lcom/amazon/kcp/util/device/SafeInsets;Lcom/amazon/kcp/util/device/SafeInsets;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kcp/util/device/SafeInsetsPair;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kcp/util/device/SafeInsetsPair;

    iget-object v0, p0, Lcom/amazon/kcp/util/device/SafeInsetsPair;->portraitSafeInsets:Lcom/amazon/kcp/util/device/SafeInsets;

    iget-object v1, p1, Lcom/amazon/kcp/util/device/SafeInsetsPair;->portraitSafeInsets:Lcom/amazon/kcp/util/device/SafeInsets;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/util/device/SafeInsetsPair;->landscapeSafeInsets:Lcom/amazon/kcp/util/device/SafeInsets;

    iget-object p1, p1, Lcom/amazon/kcp/util/device/SafeInsetsPair;->landscapeSafeInsets:Lcom/amazon/kcp/util/device/SafeInsets;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getLandscapeSafeInsets()Lcom/amazon/kcp/util/device/SafeInsets;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/amazon/kcp/util/device/SafeInsetsPair;->landscapeSafeInsets:Lcom/amazon/kcp/util/device/SafeInsets;

    return-object v0
.end method

.method public final getPortraitSafeInsets()Lcom/amazon/kcp/util/device/SafeInsets;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/amazon/kcp/util/device/SafeInsetsPair;->portraitSafeInsets:Lcom/amazon/kcp/util/device/SafeInsets;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/amazon/kcp/util/device/SafeInsetsPair;->portraitSafeInsets:Lcom/amazon/kcp/util/device/SafeInsets;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/util/device/SafeInsets;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/util/device/SafeInsetsPair;->landscapeSafeInsets:Lcom/amazon/kcp/util/device/SafeInsets;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/amazon/kcp/util/device/SafeInsets;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SafeInsetsPair(portraitSafeInsets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/util/device/SafeInsetsPair;->portraitSafeInsets:Lcom/amazon/kcp/util/device/SafeInsets;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", landscapeSafeInsets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/util/device/SafeInsetsPair;->landscapeSafeInsets:Lcom/amazon/kcp/util/device/SafeInsets;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
