.class public final Landroidx/security/crypto/MasterKey$Builder;
.super Ljava/lang/Object;
.source "MasterKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/security/crypto/MasterKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAuthenticationRequired:Z

.field private final mContext:Landroid/content/Context;

.field private final mKeyAlias:Ljava/lang/String;

.field private mKeyGenParameterSpec:Landroid/security/keystore/KeyGenParameterSpec;

.field private mKeyScheme:Landroidx/security/crypto/MasterKey$KeyScheme;

.field private mRequestStrongBoxBacked:Z

.field private mUserAuthenticationValidityDurationSeconds:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string v0, "_androidx_security_master_key_"

    .line 186
    invoke-direct {p0, p1, v0}, Landroidx/security/crypto/MasterKey$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "keyAlias"
        }
    .end annotation

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/security/crypto/MasterKey$Builder;->mContext:Landroid/content/Context;

    .line 196
    iput-object p2, p0, Landroidx/security/crypto/MasterKey$Builder;->mKeyAlias:Ljava/lang/String;

    return-void
.end method

.method private buildOnM()Landroidx/security/crypto/MasterKey;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 323
    iget-object v0, p0, Landroidx/security/crypto/MasterKey$Builder;->mKeyScheme:Landroidx/security/crypto/MasterKey$KeyScheme;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/security/crypto/MasterKey$Builder;->mKeyGenParameterSpec:Landroid/security/keystore/KeyGenParameterSpec;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 324
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "build() called before setKeyGenParameterSpec or setKeyScheme."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/security/crypto/MasterKey$Builder;->mKeyScheme:Landroidx/security/crypto/MasterKey$KeyScheme;

    sget-object v1, Landroidx/security/crypto/MasterKey$KeyScheme;->AES256_GCM:Landroidx/security/crypto/MasterKey$KeyScheme;

    if-ne v0, v1, :cond_4

    .line 329
    new-instance v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    iget-object v1, p0, Landroidx/security/crypto/MasterKey$Builder;->mKeyAlias:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const-string v1, "GCM"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 332
    invoke-virtual {v0, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v0

    const-string v1, "NoPadding"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 333
    invoke-virtual {v0, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v0

    const/16 v1, 0x100

    .line 334
    invoke-virtual {v0, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v0

    .line 336
    iget-boolean v1, p0, Landroidx/security/crypto/MasterKey$Builder;->mAuthenticationRequired:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 337
    invoke-virtual {v0, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    iget v3, p0, Landroidx/security/crypto/MasterKey$Builder;->mUserAuthenticationValidityDurationSeconds:I

    .line 338
    invoke-virtual {v1, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setUserAuthenticationValidityDurationSeconds(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 342
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v1, v3, :cond_3

    iget-boolean v1, p0, Landroidx/security/crypto/MasterKey$Builder;->mRequestStrongBoxBacked:Z

    if-eqz v1, :cond_3

    .line 343
    iget-object v1, p0, Landroidx/security/crypto/MasterKey$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "android.hardware.strongbox_keystore"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 345
    invoke-virtual {v0, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setIsStrongBoxBacked(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 349
    :cond_3
    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v0

    iput-object v0, p0, Landroidx/security/crypto/MasterKey$Builder;->mKeyGenParameterSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 351
    :cond_4
    iget-object v0, p0, Landroidx/security/crypto/MasterKey$Builder;->mKeyGenParameterSpec:Landroid/security/keystore/KeyGenParameterSpec;

    if-eqz v0, :cond_5

    .line 357
    invoke-static {v0}, Landroidx/security/crypto/MasterKeys;->getOrCreate(Landroid/security/keystore/KeyGenParameterSpec;)Ljava/lang/String;

    move-result-object v0

    .line 358
    new-instance v1, Landroidx/security/crypto/MasterKey;

    iget-object v2, p0, Landroidx/security/crypto/MasterKey$Builder;->mKeyGenParameterSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-direct {v1, v0, v2}, Landroidx/security/crypto/MasterKey;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1

    .line 353
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "KeyGenParameterSpec was null after build() check"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Landroidx/security/crypto/MasterKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 314
    invoke-direct {p0}, Landroidx/security/crypto/MasterKey$Builder;->buildOnM()Landroidx/security/crypto/MasterKey;

    move-result-object v0

    return-object v0

    .line 316
    :cond_0
    new-instance v0, Landroidx/security/crypto/MasterKey;

    iget-object v1, p0, Landroidx/security/crypto/MasterKey$Builder;->mKeyAlias:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/security/crypto/MasterKey;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public setKeyGenParameterSpec(Landroid/security/keystore/KeyGenParameterSpec;)Landroidx/security/crypto/MasterKey$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyGenParameterSpec"
        }
    .end annotation

    .line 293
    iget-object v0, p0, Landroidx/security/crypto/MasterKey$Builder;->mKeyScheme:Landroidx/security/crypto/MasterKey$KeyScheme;

    if-nez v0, :cond_1

    .line 297
    iget-object v0, p0, Landroidx/security/crypto/MasterKey$Builder;->mKeyAlias:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    iput-object p1, p0, Landroidx/security/crypto/MasterKey$Builder;->mKeyGenParameterSpec:Landroid/security/keystore/KeyGenParameterSpec;

    return-object p0

    .line 298
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyGenParamSpec\'s key alias does not match provided alias ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/security/crypto/MasterKey$Builder;->mKeyAlias:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " vs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "KeyGenParamSpec set after setting a KeyScheme"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setKeyScheme(Landroidx/security/crypto/MasterKey$KeyScheme;)Landroidx/security/crypto/MasterKey$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyScheme"
        }
    .end annotation

    .line 212
    sget-object v0, Landroidx/security/crypto/MasterKey$1;->$SwitchMap$androidx$security$crypto$MasterKey$KeyScheme:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 214
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 215
    iget-object v0, p0, Landroidx/security/crypto/MasterKey$Builder;->mKeyGenParameterSpec:Landroid/security/keystore/KeyGenParameterSpec;

    if-nez v0, :cond_0

    goto :goto_0

    .line 216
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "KeyScheme set after setting a KeyGenParamSpec"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 224
    :cond_1
    :goto_0
    iput-object p1, p0, Landroidx/security/crypto/MasterKey$Builder;->mKeyScheme:Landroidx/security/crypto/MasterKey$KeyScheme;

    return-object p0

    .line 222
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
