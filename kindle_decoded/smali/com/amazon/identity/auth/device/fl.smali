.class public Lcom/amazon/identity/auth/device/fl;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/fl$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "fl"


# instance fields
.field private bM:Ljava/lang/String;

.field private kl:Ljava/lang/String;

.field private mF:Ljava/lang/String;

.field private mG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static B(Landroid/os/Bundle;)Lcom/amazon/identity/auth/device/fl;
    .locals 2

    .line 49
    invoke-static {}, Lcom/amazon/identity/auth/device/fl;->eB()Lcom/amazon/identity/auth/device/fl;

    move-result-object v0

    const-string v1, "com.amazon.dcp.sso.property.account.acctId"

    .line 50
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/fl;->bR(Ljava/lang/String;)Lcom/amazon/identity/auth/device/fl;

    move-result-object v0

    const-string v1, "key_recover_context_reason"

    .line 51
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1152
    iput-object v1, v0, Lcom/amazon/identity/auth/device/fl;->mF:Ljava/lang/String;

    const-string v1, "key_recover_context_url"

    .line 52
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/fl;->bT(Ljava/lang/String;)Lcom/amazon/identity/auth/device/fl;

    move-result-object v0

    const-string v1, "key_recover_context_action"

    .line 53
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/amazon/identity/auth/device/fl;->bU(Ljava/lang/String;)Lcom/amazon/identity/auth/device/fl;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;)Lcom/amazon/identity/auth/device/fl;
    .locals 1

    .line 138
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;->getErrorBundle()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "com.amazon.identity.mobi.account.recover.context"

    .line 141
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 144
    invoke-static {p0}, Lcom/amazon/identity/auth/device/fl;->B(Landroid/os/Bundle;)Lcom/amazon/identity/auth/device/fl;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static eB()Lcom/amazon/identity/auth/device/fl;
    .locals 2

    .line 59
    sget-object v0, Lcom/amazon/identity/auth/device/fl;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 60
    new-instance v0, Lcom/amazon/identity/auth/device/fl;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/fl;-><init>()V

    const-string v1, "action_confirm_credential"

    .line 62
    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/fl;->bU(Ljava/lang/String;)Lcom/amazon/identity/auth/device/fl;

    move-result-object v0

    return-object v0
.end method

.method public static eD()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection$AccountNeedsRecoveryException;
        }
    .end annotation

    return-void
.end method


# virtual methods
.method public bR(Ljava/lang/String;)Lcom/amazon/identity/auth/device/fl;
    .locals 5

    .line 86
    sget-object v0, Lcom/amazon/identity/auth/device/fl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Building an account recover context bundle for: ***"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iput-object p1, p0, Lcom/amazon/identity/auth/device/fl;->bM:Ljava/lang/String;

    return-object p0
.end method

.method public bS(Ljava/lang/String;)Lcom/amazon/identity/auth/device/fl;
    .locals 2

    .line 93
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BuildAccountRecoverContext:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2152
    iput-object p1, p0, Lcom/amazon/identity/auth/device/fl;->mF:Ljava/lang/String;

    return-object p0
.end method

.method public bT(Ljava/lang/String;)Lcom/amazon/identity/auth/device/fl;
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/amazon/identity/auth/device/fl;->mG:Ljava/lang/String;

    return-object p0
.end method

.method public bU(Ljava/lang/String;)Lcom/amazon/identity/auth/device/fl;
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/amazon/identity/auth/device/fl;->kl:Ljava/lang/String;

    return-object p0
.end method

.method public eC()Landroid/os/Bundle;
    .locals 3

    .line 79
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 80
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/fl;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.amazon.identity.mobi.account.recover.context"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public getDirectedId()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fl;->bM:Ljava/lang/String;

    return-object v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 67
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 68
    iget-object v1, p0, Lcom/amazon/identity/auth/device/fl;->bM:Ljava/lang/String;

    const-string v2, "com.amazon.dcp.sso.property.account.acctId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lcom/amazon/identity/auth/device/fl;->mF:Ljava/lang/String;

    const-string v2, "key_recover_context_reason"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/amazon/identity/auth/device/fl;->mG:Ljava/lang/String;

    const-string v2, "key_recover_context_url"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/amazon/identity/auth/device/fl;->kl:Ljava/lang/String;

    const-string v2, "key_recover_context_action"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
