.class Lcom/amazon/identity/auth/device/ab$c;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/ab$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private final be:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/accounts/AmazonAccountManager;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/amazon/identity/auth/device/ab$c;->mContext:Landroid/content/Context;

    .line 98
    iput-object p2, p0, Lcom/amazon/identity/auth/device/ab$c;->be:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    return-void
.end method


# virtual methods
.method public R()Z
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ab$c;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$PrimaryUserMappingType;->isSupportedOnThisPlatform(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public S(Ljava/lang/String;)Z
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ab$c;->be:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    .line 1116
    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->C(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public T(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/ab$e;",
            ">;"
        }
    .end annotation

    .line 122
    invoke-static {}, Lcom/amazon/identity/auth/device/ab;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Primary user mapping cannot be changed"

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public U(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/ab$e;",
            ">;"
        }
    .end annotation

    .line 129
    invoke-static {}, Lcom/amazon/identity/auth/device/ab;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Primary user mapping cannot be removed"

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public V(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/ab$e;",
            ">;"
        }
    .end annotation

    .line 136
    invoke-static {}, Lcom/amazon/identity/auth/device/ab;->access$000()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 137
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method
