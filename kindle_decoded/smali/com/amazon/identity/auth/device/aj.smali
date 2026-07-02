.class public final Lcom/amazon/identity/auth/device/aj;
.super Ljava/lang/Object;
.source "DCP"


# instance fields
.field public final cT:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final cU:Z

.field public final cV:Ljava/lang/String;

.field public final cW:Z

.field public final className:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/amazon/identity/auth/device/jd;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    iput-object p1, p0, Lcom/amazon/identity/auth/device/aj;->packageName:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/amazon/identity/auth/device/aj;->className:Ljava/lang/String;

    const/4 p2, 0x1

    .line 58
    iput-boolean p2, p0, Lcom/amazon/identity/auth/device/aj;->cU:Z

    .line 59
    iput-object p3, p0, Lcom/amazon/identity/auth/device/aj;->cV:Ljava/lang/String;

    .line 1083
    invoke-static {p1}, Lcom/amazon/identity/auth/device/aj;->ad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1084
    iget-object p3, p0, Lcom/amazon/identity/auth/device/aj;->packageName:Ljava/lang/String;

    invoke-static {p3}, Lcom/amazon/identity/auth/device/aj;->ae(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1085
    iget-object v0, p0, Lcom/amazon/identity/auth/device/aj;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/aj;->af(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1086
    iget-object v1, p0, Lcom/amazon/identity/auth/device/aj;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/aj;->ag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1087
    iget-object v2, p0, Lcom/amazon/identity/auth/device/aj;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/aj;->ah(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1088
    iget-object v3, p0, Lcom/amazon/identity/auth/device/aj;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/amazon/identity/auth/device/aj;->ai(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1089
    iget-object v4, p0, Lcom/amazon/identity/auth/device/aj;->packageName:Ljava/lang/String;

    invoke-static {v4}, Lcom/amazon/identity/auth/device/aj;->aj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1090
    iget-object v5, p0, Lcom/amazon/identity/auth/device/aj;->packageName:Ljava/lang/String;

    invoke-static {v5}, Lcom/amazon/identity/auth/device/aj;->ak(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x8

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    aput-object p3, v6, p2

    const/4 p1, 0x2

    aput-object v0, v6, p1

    const/4 p1, 0x3

    aput-object v1, v6, p1

    const/4 p1, 0x4

    aput-object v2, v6, p1

    const/4 p1, 0x5

    aput-object v3, v6, p1

    const/4 p1, 0x6

    aput-object v4, v6, p1

    const/4 p1, 0x7

    aput-object v5, v6, p1

    .line 1092
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 60
    iput-object p1, p0, Lcom/amazon/identity/auth/device/aj;->cT:Ljava/util/List;

    .line 61
    iput-boolean p4, p0, Lcom/amazon/identity/auth/device/aj;->cW:Z

    return-void

    .line 53
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "One or more parameters are null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 32
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    iput-object p1, p0, Lcom/amazon/identity/auth/device/aj;->packageName:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/amazon/identity/auth/device/aj;->className:Ljava/lang/String;

    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lcom/amazon/identity/auth/device/aj;->cU:Z

    const/4 p2, 0x0

    .line 40
    iput-object p2, p0, Lcom/amazon/identity/auth/device/aj;->cV:Ljava/lang/String;

    .line 41
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/identity/auth/device/aj;->cT:Ljava/util/List;

    .line 42
    iput-boolean p1, p0, Lcom/amazon/identity/auth/device/aj;->cW:Z

    return-void

    .line 34
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "One or more parameters are null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static ad(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 109
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".tokens.adp_token"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ae(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 119
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".tokens.private_key"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static af(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".tokens.device_type"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 139
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".tokens.dsn"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ah(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 149
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".tokens.email"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ai(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 159
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".tokens.storeAuthCookie"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static aj(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 169
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".tokens.xmain"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ak(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 209
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".tokens.account_pool"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getComponentName()Landroid/content/ComponentName;
    .locals 3

    .line 219
    iget-object v0, p0, Lcom/amazon/identity/auth/device/aj;->className:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 223
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/aj;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/aj;->className:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
