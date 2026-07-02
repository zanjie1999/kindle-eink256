.class public abstract Lcom/audible/hushpuppy/common/debug/DebugUriTranslator;
.super Ljava/lang/Object;
.source "DebugUriTranslator.java"

# interfaces
.implements Lcom/audible/mobile/framework/UriTranslator;


# instance fields
.field private final klazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/audible/hushpuppy/common/debug/DebugUriTranslator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/common/debug/DebugUriTranslator;->klazz:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 25
    :cond_1
    check-cast p1, Lcom/audible/hushpuppy/common/debug/DebugUriTranslator;

    .line 26
    iget-object v0, p0, Lcom/audible/hushpuppy/common/debug/DebugUriTranslator;->klazz:Ljava/lang/Class;

    iget-object p1, p1, Lcom/audible/hushpuppy/common/debug/DebugUriTranslator;->klazz:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/audible/hushpuppy/common/debug/DebugUriTranslator;->klazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
