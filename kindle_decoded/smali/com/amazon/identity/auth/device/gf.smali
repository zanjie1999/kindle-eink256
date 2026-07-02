.class public Lcom/amazon/identity/auth/device/gf;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/iu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazon/identity/auth/device/iu<",
        "Lcom/amazon/identity/auth/device/gf<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final nH:Ljava/util/Date;

.field private nI:Z

.field private nJ:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/util/Date;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/Date;",
            "ZZ)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "dateTime"

    .line 23
    invoke-static {p2, v0}, Lcom/amazon/identity/auth/device/ik;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lcom/amazon/identity/auth/device/gf;->mValue:Ljava/lang/Object;

    .line 26
    invoke-virtual {p2}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    iput-object p1, p0, Lcom/amazon/identity/auth/device/gf;->nH:Ljava/util/Date;

    .line 27
    iput-boolean p3, p0, Lcom/amazon/identity/auth/device/gf;->nI:Z

    .line 28
    iput-boolean p4, p0, Lcom/amazon/identity/auth/device/gf;->nJ:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Date;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gf;->nH:Ljava/util/Date;

    invoke-virtual {v0, p1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 58
    iput-boolean p1, p0, Lcom/amazon/identity/auth/device/gf;->nI:Z

    return-void
.end method

.method public b(Ljava/util/Date;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gf;->nH:Ljava/util/Date;

    invoke-virtual {v0, p1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 68
    iput-boolean p1, p0, Lcom/amazon/identity/auth/device/gf;->nI:Z

    return-void
.end method

.method public c(Ljava/util/Date;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gf;->nH:Ljava/util/Date;

    invoke-virtual {v0, p1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p1

    return p1
.end method

.method public synthetic ej()Lcom/amazon/identity/auth/device/iu;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/gf;->fj()Lcom/amazon/identity/auth/device/gf;

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

    .line 112
    const-class v2, Lcom/amazon/identity/auth/device/gf;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 117
    :cond_1
    check-cast p1, Lcom/amazon/identity/auth/device/gf;

    .line 119
    iget-boolean v2, p0, Lcom/amazon/identity/auth/device/gf;->nJ:Z

    iget-boolean v3, p1, Lcom/amazon/identity/auth/device/gf;->nJ:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/amazon/identity/auth/device/gf;->nI:Z

    iget-boolean v3, p1, Lcom/amazon/identity/auth/device/gf;->nI:Z

    if-ne v2, v3, :cond_2

    .line 120
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/gf;->fh()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/gf;->fh()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/gf;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/gf;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/amazon/identity/auth/device/ic;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public fh()Ljava/util/Date;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gf;->nH:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public fi()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/amazon/identity/auth/device/gf;->nJ:Z

    return v0
.end method

.method public fj()Lcom/amazon/identity/auth/device/gf;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/identity/auth/device/gf<",
            "TT;>;"
        }
    .end annotation

    .line 139
    :try_start_0
    new-instance v0, Lcom/amazon/identity/auth/device/gf;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/gf;->mValue:Ljava/lang/Object;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/ic;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/identity/auth/device/gf;->nH:Ljava/util/Date;

    .line 140
    invoke-virtual {v2}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Date;

    iget-boolean v3, p0, Lcom/amazon/identity/auth/device/gf;->nI:Z

    iget-boolean v4, p0, Lcom/amazon/identity/auth/device/gf;->nJ:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/identity/auth/device/gf;-><init>(Ljava/lang/Object;Ljava/util/Date;ZZ)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 146
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gf;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 98
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gf;->nH:Ljava/util/Date;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/Date;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 99
    iget-boolean v2, p0, Lcom/amazon/identity/auth/device/gf;->nJ:Z

    const/16 v3, 0x4cf

    const/16 v4, 0x4d5

    if-eqz v2, :cond_1

    const/16 v2, 0x4cf

    goto :goto_1

    :cond_1
    const/16 v2, 0x4d5

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 100
    iget-boolean v2, p0, Lcom/amazon/identity/auth/device/gf;->nI:Z

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/16 v3, 0x4d5

    :goto_2
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 101
    iget-object v2, p0, Lcom/amazon/identity/auth/device/gf;->mValue:Ljava/lang/Object;

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    return v0
.end method

.method public isDirty()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lcom/amazon/identity/auth/device/gf;->nI:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 126
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/gf;->mValue:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 128
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "None"

    :goto_0
    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/amazon/identity/auth/device/gf;->nH:Ljava/util/Date;

    .line 129
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/amazon/identity/auth/device/gf;->nJ:Z

    .line 130
    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/amazon/identity/auth/device/gf;->nI:Z

    .line 131
    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Value: %s, TimeStamp: %d, Deleted: %s, Dirty: %s"

    .line 126
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
