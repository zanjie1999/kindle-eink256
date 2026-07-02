.class public final Lcom/amazon/identity/auth/device/ly;
.super Ljava/lang/Object;
.source "DCP"


# instance fields
.field private final bk:Ljava/lang/String;

.field private final uw:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/amazon/identity/auth/device/ly;->uw:Ljava/lang/Long;

    .line 12
    iput-object p2, p0, Lcom/amazon/identity/auth/device/ly;->bk:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 46
    :cond_1
    instance-of v2, p1, Lcom/amazon/identity/auth/device/ly;

    if-nez v2, :cond_2

    return v1

    .line 51
    :cond_2
    check-cast p1, Lcom/amazon/identity/auth/device/ly;

    .line 54
    iget-object v2, p0, Lcom/amazon/identity/auth/device/ly;->bk:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 56
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ly;->iz()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 60
    :cond_4
    iget-object v3, p1, Lcom/amazon/identity/auth/device/ly;->bk:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_0
    if-nez v2, :cond_5

    return v1

    .line 68
    :cond_5
    iget-object v2, p0, Lcom/amazon/identity/auth/device/ly;->uw:Ljava/lang/Long;

    if-nez v2, :cond_7

    .line 70
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ly;->iz()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 74
    :cond_7
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ly;->bk:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/identity/auth/device/ly;->bk:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ly;->bk:Ljava/lang/String;

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

    .line 31
    iget-object v2, p0, Lcom/amazon/identity/auth/device/ly;->uw:Ljava/lang/Long;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public iy()Ljava/lang/Long;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ly;->uw:Ljava/lang/Long;

    return-object v0
.end method

.method public iz()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ly;->bk:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 83
    iget-object v1, p0, Lcom/amazon/identity/auth/device/ly;->uw:Ljava/lang/Long;

    if-nez v1, :cond_0

    const-string v1, "None"

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/amazon/identity/auth/device/ly;->bk:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "Version: %s, ComponentId: %s"

    .line 83
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
