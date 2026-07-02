.class Lcom/amazon/identity/auth/device/i$c;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field public l:Landroid/os/Bundle;

.field public mError:Lcom/amazon/identity/auth/device/api/MAPError;

.field public mErrorMessage:Ljava/lang/String;

.field public mLegacyError:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Lcom/amazon/identity/auth/device/i$c;->l:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;)V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p3, p0, Lcom/amazon/identity/auth/device/i$c;->mLegacyError:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 130
    iput-object p1, p0, Lcom/amazon/identity/auth/device/i$c;->mError:Lcom/amazon/identity/auth/device/api/MAPError;

    .line 131
    iput-object p2, p0, Lcom/amazon/identity/auth/device/i$c;->mErrorMessage:Ljava/lang/String;

    return-void
.end method

.method private v(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/amazon/identity/auth/device/i$c;->l:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 160
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getDirectedId()Ljava/lang/String;
    .locals 1

    const-string v0, "com.amazon.dcp.sso.property.account.acctId"

    .line 145
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/i$c;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.amazon.dcp.sso.property.username"

    .line 150
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/i$c;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
