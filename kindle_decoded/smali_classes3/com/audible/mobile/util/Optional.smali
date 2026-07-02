.class public Lcom/audible/mobile/util/Optional;
.super Ljava/lang/Object;
.source "Optional.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final EMPTY:Lcom/audible/mobile/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/audible/mobile/util/Optional<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/audible/mobile/util/Optional;

    invoke-direct {v0}, Lcom/audible/mobile/util/Optional;-><init>()V

    sput-object v0, Lcom/audible/mobile/util/Optional;->EMPTY:Lcom/audible/mobile/util/Optional;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/audible/mobile/util/Optional;->value:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Optionals require a non-null this.value type"

    .line 66
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/audible/mobile/util/Optional;->value:Ljava/lang/Object;

    return-void
.end method

.method public static of(Ljava/lang/Object;)Lcom/audible/mobile/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/audible/mobile/util/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 80
    new-instance v0, Lcom/audible/mobile/util/Optional;

    invoke-direct {v0, p0}, Lcom/audible/mobile/util/Optional;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 159
    :cond_0
    instance-of v0, p1, Lcom/audible/mobile/util/Optional;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 163
    :cond_1
    check-cast p1, Lcom/audible/mobile/util/Optional;

    .line 164
    iget-object v0, p0, Lcom/audible/mobile/util/Optional;->value:Ljava/lang/Object;

    iget-object p1, p1, Lcom/audible/mobile/util/Optional;->value:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/audible/mobile/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/audible/mobile/util/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object v0

    .line 111
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "No value present"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/audible/mobile/util/Optional;->value:Ljava/lang/Object;

    invoke-static {v0}, Lcom/audible/mobile/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isPresent()Z
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/audible/mobile/util/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 191
    iget-object v0, p0, Lcom/audible/mobile/util/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Optional[%s]"

    .line 192
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "Optional.empty"

    :goto_0
    return-object v0
.end method
