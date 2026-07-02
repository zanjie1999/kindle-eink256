.class public Lcom/amazon/identity/auth/device/v;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/z;


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.v"


# instance fields
.field private final o:Lcom/amazon/identity/auth/device/ed;

.field private final x:Lcom/amazon/identity/auth/device/ab;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/identity/auth/device/ed;)V
    .locals 1

    .line 28
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ab;->g(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ab;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazon/identity/auth/device/v;-><init>(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/ab;)V

    return-void
.end method

.method constructor <init>(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/ab;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/amazon/identity/auth/device/v;->o:Lcom/amazon/identity/auth/device/ed;

    .line 35
    iput-object p2, p0, Lcom/amazon/identity/auth/device/v;->x:Lcom/amazon/identity/auth/device/ab;

    return-void
.end method


# virtual methods
.method public N(Ljava/lang/String;)Z
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/amazon/identity/auth/device/v;->x:Lcom/amazon/identity/auth/device/ab;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/ab;->Q(Ljava/lang/String;)Z

    move-result p1

    .line 78
    sget-object v0, Lcom/amazon/identity/auth/device/v;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "deregisterAllAccountsOnAccountRemoval returns: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method public a(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0

    .line 97
    sget-object p1, Lcom/amazon/identity/auth/device/v;->TAG:Ljava/lang/String;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    .line 47
    iget-object p1, p0, Lcom/amazon/identity/auth/device/v;->o:Lcom/amazon/identity/auth/device/ed;

    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, Lcom/amazon/identity/auth/device/ix;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/amazon/identity/auth/device/da;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Set;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 89
    invoke-virtual {p0, p1, p3, p4}, Lcom/amazon/identity/auth/device/v;->a(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;I)[Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;

    .line 53
    iget-object v1, p0, Lcom/amazon/identity/auth/device/v;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionPackageMappingType;->createSessionPackageMappingInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionPackageMappingType;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$PackageMappingType;

    invoke-direct {v1, p1}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$PackageMappingType;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    aput-object v1, v0, p1

    new-instance p1, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionUserMappingType;

    invoke-direct {p1}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionUserMappingType;-><init>()V

    const/4 v1, 0x2

    aput-object p1, v0, v1

    .line 56
    invoke-static {p2}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$PrimaryUserMappingType;->createPrimaryMappingForProfile(I)Lcom/amazon/identity/auth/device/api/MultipleAccountManager$PrimaryUserMappingType;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    return-object v0
.end method

.method public b(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0

    .line 70
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/v;->a(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public z()Ljava/lang/String;
    .locals 4

    .line 62
    iget-object v0, p0, Lcom/amazon/identity/auth/device/v;->x:Lcom/amazon/identity/auth/device/ab;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;

    new-instance v2, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionUserMappingType;

    invoke-direct {v2}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionUserMappingType;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$PrimaryUserMappingType;

    invoke-direct {v2}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$PrimaryUserMappingType;-><init>()V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/ab;->getAccountForMapping([Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
