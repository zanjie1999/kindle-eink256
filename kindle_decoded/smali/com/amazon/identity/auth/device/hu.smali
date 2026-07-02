.class public final Lcom/amazon/identity/auth/device/hu;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/hu$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.hu"

.field private static final qG:Lcom/amazon/identity/auth/device/et;

.field private static qH:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/amazon/identity/auth/device/en<",
            "Lcom/amazon/identity/auth/device/hu$a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/amazon/identity/auth/device/eu;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/eu;-><init>()V

    sput-object v0, Lcom/amazon/identity/auth/device/hu;->qG:Lcom/amazon/identity/auth/device/et;

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/amazon/identity/auth/device/hu;->qH:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/accounts/AuthenticatorDescription;Z)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 205
    iget-object v0, p1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    const-string v1, "com.amazon.account"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 210
    :cond_0
    iget-object p1, p1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/hu;->e(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p1

    .line 211
    sget-object p2, Lcom/amazon/identity/auth/device/hu;->qG:Lcom/amazon/identity/auth/device/et;

    invoke-interface {p2, p0, p1}, Lcom/amazon/identity/auth/device/et;->a(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method private static a(Landroid/content/Context;Lcom/amazon/identity/auth/device/hu$a;)Z
    .locals 4

    .line 224
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 225
    iget-object p1, p1, Lcom/amazon/identity/auth/device/hu$a;->mPackageName:Ljava/lang/String;

    .line 227
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    sget-object v1, Lcom/amazon/identity/auth/device/hu;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p1, v2, p0

    const-string p0, "Current package: %s and Authenticator owner\'s package: %s are different"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public static al(Landroid/content/Context;)Z
    .locals 1

    .line 48
    invoke-static {p0}, Lcom/amazon/identity/auth/device/hu;->ao(Landroid/content/Context;)Lcom/amazon/identity/auth/device/hu$a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 54
    :cond_0
    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/hu;->a(Landroid/content/Context;Lcom/amazon/identity/auth/device/hu$a;)Z

    move-result p0

    return p0
.end method

.method public static am(Landroid/content/Context;)Z
    .locals 0

    .line 59
    invoke-static {p0}, Lcom/amazon/identity/auth/device/hu;->ao(Landroid/content/Context;)Lcom/amazon/identity/auth/device/hu$a;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static an(Landroid/content/Context;)Z
    .locals 1

    .line 64
    invoke-static {p0}, Lcom/amazon/identity/auth/device/hu;->ao(Landroid/content/Context;)Lcom/amazon/identity/auth/device/hu$a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 70
    :cond_0
    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/hu;->a(Landroid/content/Context;Lcom/amazon/identity/auth/device/hu$a;)Z

    move-result p0

    return p0
.end method

.method public static ao(Landroid/content/Context;)Lcom/amazon/identity/auth/device/hu$a;
    .locals 2

    .line 76
    invoke-static {p0}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/identity/auth/device/mw;->f(Lcom/amazon/identity/auth/device/ed;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 81
    :cond_0
    sget-object v0, Lcom/amazon/identity/auth/device/hu;->qH:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 83
    invoke-static {p0}, Lcom/amazon/identity/auth/device/hu;->at(Landroid/content/Context;)Lcom/amazon/identity/auth/device/en;

    move-result-object p0

    .line 84
    sget-object v0, Lcom/amazon/identity/auth/device/hu;->qH:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 86
    :cond_1
    sget-object p0, Lcom/amazon/identity/auth/device/hu;->qH:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/device/en;

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/en;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/device/hu$a;

    return-object p0
.end method

.method public static ap(Landroid/content/Context;)Z
    .locals 0

    .line 92
    invoke-static {p0}, Lcom/amazon/identity/auth/device/hu;->aq(Landroid/content/Context;)Lcom/amazon/identity/auth/device/hu$a;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static aq(Landroid/content/Context;)Lcom/amazon/identity/auth/device/hu$a;
    .locals 0

    .line 97
    invoke-static {p0}, Lcom/amazon/identity/auth/device/hu;->at(Landroid/content/Context;)Lcom/amazon/identity/auth/device/en;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/en;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/device/hu$a;

    return-object p0
.end method

.method public static ar(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1164
    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/hu;->b(Landroid/content/Context;Z)Landroid/accounts/AuthenticatorDescription;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public static as(Landroid/content/Context;)Z
    .locals 7

    .line 1186
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 1188
    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    .line 1190
    invoke-static {p0, v5, v4}, Lcom/amazon/identity/auth/device/hu;->a(Landroid/content/Context;Landroid/accounts/AuthenticatorDescription;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1192
    sget-object p0, Lcom/amazon/identity/auth/device/hu;->TAG:Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/Object;

    iget-object v1, v5, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    aput-object v1, v0, v2

    const-string v1, "SSO was found in package %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1197
    :cond_1
    sget-object p0, Lcom/amazon/identity/auth/device/hu;->TAG:Ljava/lang/String;

    const-string v0, "Cannot find amazon authenticator. returning null"

    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_2

    return v4

    :cond_2
    return v2
.end method

.method private static at(Landroid/content/Context;)Lcom/amazon/identity/auth/device/en;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/amazon/identity/auth/device/en<",
            "Lcom/amazon/identity/auth/device/hu$a;",
            ">;"
        }
    .end annotation

    .line 118
    sget-object v0, Lcom/amazon/identity/auth/device/dn;->jE:Landroid/net/Uri;

    .line 119
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/ek;->a(Landroid/net/Uri;Landroid/content/pm/PackageManager;)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 124
    iget-object v4, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/amazon/identity/auth/device/hu;->e(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v4

    .line 125
    sget-object v5, Lcom/amazon/identity/auth/device/hu;->qG:Lcom/amazon/identity/auth/device/et;

    invoke-interface {v5, p0, v4}, Lcom/amazon/identity/auth/device/et;->a(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 127
    iget-object v4, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/amazon/identity/auth/device/jj;->D(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    .line 129
    sget-object v4, Lcom/amazon/identity/auth/device/hu;->TAG:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    sget-object v7, Lcom/amazon/identity/auth/device/dn;->jE:Landroid/net/Uri;

    aput-object v7, v6, v1

    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    aput-object v1, v6, v3

    aput-object p0, v6, v2

    const-string v1, "Retrieved central APK info from package manager using content provider %s. The package name is : %s and version is: %d."

    .line 130
    invoke-static {v5, v1, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 129
    invoke-static {v4}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 136
    new-instance v1, Lcom/amazon/identity/auth/device/en;

    new-instance v2, Lcom/amazon/identity/auth/device/hu$a;

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-direct {v2, v0, p0}, Lcom/amazon/identity/auth/device/hu$a;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-direct {v1, v2}, Lcom/amazon/identity/auth/device/en;-><init>(Ljava/lang/Object;)V

    return-object v1

    .line 141
    :cond_0
    invoke-static {p0, v3}, Lcom/amazon/identity/auth/device/hu;->b(Landroid/content/Context;Z)Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    .line 145
    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/jj;->D(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    .line 146
    sget-object v4, Lcom/amazon/identity/auth/device/hu;->TAG:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    aput-object p0, v2, v3

    const-string v1, "Retrieved central APK info from account manager using account authenticator. The package name is: %s and version is: %d."

    .line 147
    invoke-static {v5, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 146
    invoke-static {v4}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 152
    new-instance v1, Lcom/amazon/identity/auth/device/en;

    new-instance v2, Lcom/amazon/identity/auth/device/hu$a;

    invoke-direct {v2, v0, p0}, Lcom/amazon/identity/auth/device/hu$a;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-direct {v1, v2}, Lcom/amazon/identity/auth/device/en;-><init>(Ljava/lang/Object;)V

    return-object v1

    .line 156
    :cond_1
    sget-object p0, Lcom/amazon/identity/auth/device/hu;->TAG:Ljava/lang/String;

    const-string v0, "No central apk detected. This should be a 3P device."

    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    new-instance p0, Lcom/amazon/identity/auth/device/en;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/en;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static au(Landroid/content/Context;)Landroid/accounts/AuthenticatorDescription;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 164
    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/hu;->b(Landroid/content/Context;Z)Landroid/accounts/AuthenticatorDescription;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Z)Landroid/accounts/AuthenticatorDescription;
    .locals 6

    .line 169
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 173
    invoke-static {p0, v4, p1}, Lcom/amazon/identity/auth/device/hu;->a(Landroid/content/Context;Landroid/accounts/AuthenticatorDescription;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 175
    sget-object p0, Lcom/amazon/identity/auth/device/hu;->TAG:Ljava/lang/String;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    iget-object v0, v4, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    aput-object v0, p1, v2

    const-string v0, "SSO was found in package %s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 180
    :cond_1
    sget-object p0, Lcom/amazon/identity/auth/device/hu;->TAG:Ljava/lang/String;

    const-string p1, "Cannot find amazon authenticator. returning null"

    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static e(Ljava/lang/String;Z)Landroid/os/Bundle;
    .locals 2

    .line 216
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "central_package_name"

    .line 217
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "ignore_isolation_mode"

    .line 218
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method
