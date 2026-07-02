.class public Lcom/amazon/identity/auth/device/dz;
.super Ljava/lang/Object;
.source "DCP"


# instance fields
.field private lb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/dz;->lb:Ljava/util/List;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/dz;->lc:Ljava/util/List;

    .line 17
    iput-object p1, p0, Lcom/amazon/identity/auth/device/dz;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bv(Ljava/lang/String;)Lcom/amazon/identity/auth/device/dz;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dz;->lc:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public dP()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 63
    iget-object v1, p0, Lcom/amazon/identity/auth/device/dz;->mName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/identity/auth/device/dz;->lc:Ljava/util/List;

    const-string v2, ", "

    invoke-static {v2, v1}, Lcom/amazon/identity/auth/device/jc;->a(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "CREATE TABLE IF NOT EXISTS %s (%s);"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/dz;
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dz;->lb:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dz;->lc:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 58
    iget-object v1, p0, Lcom/amazon/identity/auth/device/dz;->mName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/identity/auth/device/dz;->lc:Ljava/util/List;

    const-string v2, ", "

    invoke-static {v2, v1}, Lcom/amazon/identity/auth/device/jc;->a(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "CREATE TABLE %s (%s);"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
