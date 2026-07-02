.class public Lcom/amazon/identity/auth/device/an;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/as;


# instance fields
.field private dg:Lcom/amazon/identity/auth/device/as;

.field private dh:Lcom/amazon/identity/auth/device/as;

.field private final o:Lcom/amazon/identity/auth/device/ed;


# direct methods
.method public constructor <init>(Lcom/amazon/identity/auth/device/ed;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/amazon/identity/auth/device/an;->o:Lcom/amazon/identity/auth/device/ed;

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/amazon/identity/auth/device/an;->dg:Lcom/amazon/identity/auth/device/as;

    .line 26
    iput-object p1, p0, Lcom/amazon/identity/auth/device/an;->dh:Lcom/amazon/identity/auth/device/as;

    return-void
.end method

.method private af()Lcom/amazon/identity/auth/device/as;
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/amazon/identity/auth/device/an;->dg:Lcom/amazon/identity/auth/device/as;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/amazon/identity/auth/device/av;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/an;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/av;-><init>(Lcom/amazon/identity/auth/device/ed;)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/an;->dg:Lcom/amazon/identity/auth/device/as;

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/an;->dg:Lcom/amazon/identity/auth/device/as;

    return-object v0
.end method

.method private ag()Lcom/amazon/identity/auth/device/as;
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/amazon/identity/auth/device/an;->dh:Lcom/amazon/identity/auth/device/as;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/amazon/identity/auth/device/ao;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/an;->o:Lcom/amazon/identity/auth/device/ed;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amazon/identity/auth/device/ao;-><init>(Lcom/amazon/identity/auth/device/ed;B)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/an;->dh:Lcom/amazon/identity/auth/device/as;

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/an;->dh:Lcom/amazon/identity/auth/device/as;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;Landroid/os/Bundle;Ljava/util/EnumSet;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            "Landroid/os/Bundle;",
            "Ljava/util/EnumSet<",
            "Lcom/amazon/identity/auth/device/api/CustomerAttributeStore$GetAttributeOptions;",
            ">;",
            "Lcom/amazon/identity/auth/device/ej;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 1103
    invoke-static {p2}, Lcom/amazon/identity/auth/device/ij;->dk(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ij;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/identity/auth/device/au;->a(Lcom/amazon/identity/auth/device/ij;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/an;->ag()Lcom/amazon/identity/auth/device/as;

    move-result-object v1

    .line 1128
    invoke-static {p2}, Lcom/amazon/identity/auth/device/ij;->dk(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ij;

    move-result-object p2

    .line 1129
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/ij;->getKey()Ljava/lang/String;

    move-result-object v3

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 51
    invoke-interface/range {v1 .. v7}, Lcom/amazon/identity/auth/device/as;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;Landroid/os/Bundle;Ljava/util/EnumSet;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object p1

    return-object p1

    .line 60
    :cond_0
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/an;->af()Lcom/amazon/identity/auth/device/as;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/amazon/identity/auth/device/as;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;Landroid/os/Bundle;Ljava/util/EnumSet;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object p1

    return-object p1
.end method

.method public peekAttribute(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .line 2103
    invoke-static {p2}, Lcom/amazon/identity/auth/device/ij;->dk(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ij;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/identity/auth/device/au;->a(Lcom/amazon/identity/auth/device/ij;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/an;->ag()Lcom/amazon/identity/auth/device/as;

    move-result-object v0

    .line 2128
    invoke-static {p2}, Lcom/amazon/identity/auth/device/ij;->dk(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ij;

    move-result-object p2

    .line 2129
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/ij;->getKey()Ljava/lang/String;

    move-result-object p2

    .line 69
    invoke-interface {v0, p1, p2}, Lcom/amazon/identity/auth/device/as;->peekAttribute(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 73
    :cond_0
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/an;->af()Lcom/amazon/identity/auth/device/as;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/amazon/identity/auth/device/as;->peekAttribute(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 3103
    invoke-static {p2}, Lcom/amazon/identity/auth/device/ij;->dk(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ij;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/identity/auth/device/au;->a(Lcom/amazon/identity/auth/device/ij;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/an;->ag()Lcom/amazon/identity/auth/device/as;

    move-result-object v0

    .line 3128
    invoke-static {p2}, Lcom/amazon/identity/auth/device/ij;->dk(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ij;

    move-result-object p2

    .line 3129
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/ij;->getKey()Ljava/lang/String;

    move-result-object p2

    .line 114
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/amazon/identity/auth/device/as;->setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object p1

    return-object p1

    .line 121
    :cond_0
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/an;->af()Lcom/amazon/identity/auth/device/as;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/amazon/identity/auth/device/as;->setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object p1

    return-object p1
.end method
