.class public Lcom/amazon/identity/auth/device/ft;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/iu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/identity/auth/device/iu<",
        "Lcom/amazon/identity/auth/device/ft;",
        ">;"
    }
.end annotation


# instance fields
.field public final directedId:Ljava/lang/String;

.field public final displayName:Ljava/lang/String;

.field public final nc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/gf<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final tokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/gf<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/identity/auth/device/ft;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/gf<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/identity/auth/device/ft;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/gf<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/gf<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/amazon/identity/auth/device/ft;->directedId:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/amazon/identity/auth/device/ft;->displayName:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/amazon/identity/auth/device/ft;->nc:Ljava/util/Map;

    .line 42
    iput-object p4, p0, Lcom/amazon/identity/auth/device/ft;->tokens:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public eO()Lcom/amazon/identity/auth/device/ft;
    .locals 5

    .line 88
    new-instance v0, Lcom/amazon/identity/auth/device/ft;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/ft;->directedId:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/ft;->displayName:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/ft;->nc:Ljava/util/Map;

    .line 90
    invoke-static {v3}, Lcom/amazon/identity/auth/device/ic;->j(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/identity/auth/device/ft;->tokens:Ljava/util/Map;

    .line 91
    invoke-static {v4}, Lcom/amazon/identity/auth/device/ic;->j(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/identity/auth/device/ft;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-object v0
.end method

.method public synthetic ej()Lcom/amazon/identity/auth/device/iu;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/ft;->eO()Lcom/amazon/identity/auth/device/ft;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 64
    const-class v2, Lcom/amazon/identity/auth/device/ft;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 69
    :cond_1
    check-cast p1, Lcom/amazon/identity/auth/device/ft;

    .line 71
    iget-object v2, p0, Lcom/amazon/identity/auth/device/ft;->directedId:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/identity/auth/device/ft;->directedId:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/identity/auth/device/ft;->displayName:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/identity/auth/device/ft;->displayName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/identity/auth/device/ft;->nc:Ljava/util/Map;

    iget-object v3, p1, Lcom/amazon/identity/auth/device/ft;->nc:Ljava/util/Map;

    .line 72
    invoke-static {v2, v3}, Lcom/amazon/identity/auth/device/ic;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/identity/auth/device/ft;->tokens:Ljava/util/Map;

    iget-object p1, p1, Lcom/amazon/identity/auth/device/ft;->tokens:Ljava/util/Map;

    invoke-static {v2, p1}, Lcom/amazon/identity/auth/device/ic;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ft;->directedId:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 51
    iget-object v2, p0, Lcom/amazon/identity/auth/device/ft;->displayName:Ljava/lang/String;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 52
    iget-object v2, p0, Lcom/amazon/identity/auth/device/ft;->tokens:Ljava/util/Map;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 53
    iget-object v2, p0, Lcom/amazon/identity/auth/device/ft;->nc:Ljava/util/Map;

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 78
    iget-object v1, p0, Lcom/amazon/identity/auth/device/ft;->directedId:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/identity/auth/device/ft;->displayName:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/identity/auth/device/ft;->nc:Ljava/util/Map;

    .line 81
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/identity/auth/device/ft;->tokens:Ljava/util/Map;

    .line 82
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "DirectedId: %s, Display Name: %s, userdata: %s, tokens: %s"

    .line 78
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
