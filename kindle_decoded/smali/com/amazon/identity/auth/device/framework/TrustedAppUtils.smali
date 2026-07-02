.class public final Lcom/amazon/identity/auth/device/framework/TrustedAppUtils;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/framework/TrustedAppUtils$TrustedCertificate;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.framework.TrustedAppUtils"

.field private static volatile ly:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/pm/PackageManager;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/Set<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation

    .line 141
    sget-object v0, Lcom/amazon/identity/auth/device/framework/TrustedAppUtils;->ly:Ljava/util/Set;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 146
    invoke-static {p0, p1, v0}, Lcom/amazon/identity/auth/device/framework/TrustedAppUtils;->a(Landroid/content/Context;Landroid/content/pm/PackageManager;Z)Ljava/util/Set;

    move-result-object p0

    .line 147
    sput-object p0, Lcom/amazon/identity/auth/device/framework/TrustedAppUtils;->ly:Ljava/util/Set;

    return-object p0
.end method

.method private static a(Landroid/content/Context;Landroid/content/pm/PackageManager;Z)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/PackageManager;",
            "Z)",
            "Ljava/util/Set<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 170
    invoke-static {}, Lcom/amazon/identity/auth/device/cx;->cu()Lcom/amazon/identity/auth/device/utils/BuildConfiguration;

    move-result-object p2

    goto :goto_0

    .line 174
    :cond_0
    invoke-static {p0}, Lcom/amazon/identity/auth/device/cx;->y(Landroid/content/Context;)Lcom/amazon/identity/auth/device/utils/BuildConfiguration;

    move-result-object p2

    :goto_0
    if-nez p2, :cond_2

    .line 180
    sget-object p2, Lcom/amazon/device/information/contract/DeviceInformationContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/amazon/identity/auth/device/ek;->b(Landroid/net/Uri;Landroid/content/pm/PackageManager;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 184
    :try_start_0
    new-instance p0, Ljava/util/HashSet;

    const-string p2, "android"

    const/16 v0, 0x40

    .line 1127
    invoke-static {p2, v0, p1}, Lcom/amazon/identity/auth/device/ek;->a(Ljava/lang/String;ILandroid/content/pm/PackageManager;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 1130
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 184
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 188
    :catch_0
    sget-object p0, Lcom/amazon/identity/auth/device/framework/TrustedAppUtils;->TAG:Ljava/lang/String;

    const-string p1, "Could not find system package on ADIP device"

    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x0

    return-object p0

    .line 194
    :cond_2
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 195
    sget-object p1, Lcom/amazon/identity/auth/device/utils/KeyType;->Debug:Lcom/amazon/identity/auth/device/utils/KeyType;

    invoke-virtual {p2, p1}, Lcom/amazon/identity/auth/device/utils/BuildConfiguration;->isSignedWith(Lcom/amazon/identity/auth/device/utils/KeyType;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 197
    invoke-static {p0}, Lcom/amazon/identity/auth/device/framework/TrustedAppUtils;->f(Ljava/util/Set;)V

    goto :goto_1

    .line 199
    :cond_3
    sget-object p1, Lcom/amazon/identity/auth/device/utils/KeyType;->ReleaseDebug:Lcom/amazon/identity/auth/device/utils/KeyType;

    invoke-virtual {p2, p1}, Lcom/amazon/identity/auth/device/utils/BuildConfiguration;->isSignedWith(Lcom/amazon/identity/auth/device/utils/KeyType;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 201
    invoke-static {p0}, Lcom/amazon/identity/auth/device/framework/TrustedAppUtils;->f(Ljava/util/Set;)V

    .line 206
    :cond_4
    invoke-static {p0}, Lcom/amazon/identity/auth/device/framework/TrustedAppUtils;->g(Ljava/util/Set;)V

    .line 211
    :goto_1
    sget-object p1, Landroid/os/Build;->TAGS:Ljava/lang/String;

    if-eqz p1, :cond_7

    const-string p2, ","

    .line 213
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 214
    array-length p2, p1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, p2, :cond_7

    aget-object v1, p1, v0

    const-string/jumbo v2, "test-keys"

    .line 220
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "dev-keys"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 222
    :cond_5
    invoke-static {p0}, Lcom/amazon/identity/auth/device/framework/TrustedAppUtils;->f(Ljava/util/Set;)V

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 227
    :cond_7
    invoke-static {}, Lcom/amazon/identity/auth/device/framework/TrustedAppUtils;->eb()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 2115
    sget-object p1, Lcom/amazon/identity/auth/device/framework/TrustedAppUtils;->TAG:Ljava/lang/String;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 2116
    sget-object p1, Lcom/amazon/identity/auth/device/framework/TrustedAppUtils$TrustedCertificate;->BETA_CERT:Lcom/amazon/identity/auth/device/framework/TrustedAppUtils$TrustedCertificate;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/framework/TrustedAppUtils$TrustedCertificate;->toSignature()Landroid/content/pm/Signature;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_8
    return-object p0
.end method

.method public static b(Landroid/content/Context;Landroid/content/pm/PackageManager;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/Set<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 156
    invoke-static {p0, p1, v0}, Lcom/amazon/identity/auth/device/framework/TrustedAppUtils;->a(Landroid/content/Context;Landroid/content/pm/PackageManager;Z)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method static eb()Z
    .locals 9

    .line 238
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const-string v2, ","

    .line 242
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 243
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x1

    if-ge v3, v2, :cond_2

    aget-object v7, v0, v3

    const-string v8, "amz-b"

    .line 245
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v4, 0x1

    :cond_0
    const-string/jumbo v8, "release-keys"

    .line 250
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v5, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    return v6

    .line 264
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-ge v0, v2, :cond_4

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v1, "beta"

    .line 266
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    :cond_4
    return v1
.end method

.method private static f(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/content/pm/Signature;",
            ">;)V"
        }
    .end annotation

    .line 91
    sget-object v0, Lcom/amazon/identity/auth/device/framework/TrustedAppUtils;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lcom/amazon/identity/auth/device/framework/TrustedAppUtils$TrustedCertificate;->values()[Lcom/amazon/identity/auth/device/framework/TrustedAppUtils$TrustedCertificate;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 94
    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/framework/TrustedAppUtils$TrustedCertificate;->isDebugCert()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 96
    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/framework/TrustedAppUtils$TrustedCertificate;->toSignature()Landroid/content/pm/Signature;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static g(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/content/pm/Signature;",
            ">;)V"
        }
    .end annotation

    .line 103
    sget-object v0, Lcom/amazon/identity/auth/device/framework/TrustedAppUtils;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 104
    invoke-static {}, Lcom/amazon/identity/auth/device/framework/TrustedAppUtils$TrustedCertificate;->values()[Lcom/amazon/identity/auth/device/framework/TrustedAppUtils$TrustedCertificate;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 106
    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/framework/TrustedAppUtils$TrustedCertificate;->isReleaseCert()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 108
    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/framework/TrustedAppUtils$TrustedCertificate;->toSignature()Landroid/content/pm/Signature;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
