.class public final Lcom/audible/mobile/domain/ImmutableCreativeIdImpl$Companion;
.super Ljava/lang/Object;
.source "ImmutableCreativeIdImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/domain/ImmutableCreativeIdImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/audible/mobile/domain/ImmutableCreativeIdImpl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final nullSafeFactory(Ljava/lang/String;)Lcom/audible/mobile/domain/CreativeId;
    .locals 1

    if-eqz p1, :cond_1

    .line 38
    invoke-static {p1}, Lcom/audible/mobile/util/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    new-instance v0, Lcom/audible/mobile/domain/ImmutableCreativeIdImpl;

    invoke-direct {v0, p1}, Lcom/audible/mobile/domain/ImmutableCreativeIdImpl;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 39
    :cond_1
    :goto_0
    sget-object v0, Lcom/audible/mobile/domain/CreativeId;->NONE:Lcom/audible/mobile/domain/ImmutableCreativeIdImpl;

    :goto_1
    return-object v0
.end method
