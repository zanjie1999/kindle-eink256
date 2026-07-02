.class public final Lcom/audible/mobile/domain/ImmutablePageIdImpl$Companion;
.super Ljava/lang/Object;
.source "ImmutablePageIdImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/domain/ImmutablePageIdImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImmutablePageIdImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImmutablePageIdImpl.kt\ncom/audible/mobile/domain/ImmutablePageIdImpl$Companion\n*L\n1#1,42:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/audible/mobile/domain/ImmutablePageIdImpl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final nullSafeFactory(Ljava/lang/String;)Lcom/audible/mobile/domain/PageId;
    .locals 2

    if-eqz p1, :cond_0

    .line 35
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 36
    new-instance v0, Lcom/audible/mobile/domain/ImmutablePageIdImpl;

    invoke-direct {v0, p1}, Lcom/audible/mobile/domain/ImmutablePageIdImpl;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 38
    :cond_0
    sget-object v0, Lcom/audible/mobile/domain/PageId;->NONE:Lcom/audible/mobile/domain/ImmutablePageIdImpl;

    :goto_0
    return-object v0
.end method
