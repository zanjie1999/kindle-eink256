.class public final enum Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;
.super Ljava/lang/Enum;
.source "EncryptedSharedPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/security/crypto/EncryptedSharedPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PrefValueEncryptionScheme"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;

.field public static final enum AES256_GCM:Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;


# instance fields
.field private final mAeadKeyTemplate:Lcom/google/crypto/tink/KeyTemplate;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 205
    new-instance v0, Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;

    invoke-static {}, Lcom/google/crypto/tink/aead/AesGcmKeyManager;->aes256GcmTemplate()Lcom/google/crypto/tink/KeyTemplate;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "AES256_GCM"

    invoke-direct {v0, v3, v2, v1}, Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;-><init>(Ljava/lang/String;ILcom/google/crypto/tink/KeyTemplate;)V

    sput-object v0, Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;->AES256_GCM:Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;

    const/4 v1, 0x1

    new-array v1, v1, [Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;

    aput-object v0, v1, v2

    .line 197
    sput-object v1, Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;->$VALUES:[Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/google/crypto/tink/KeyTemplate;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "keyTemplates"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/KeyTemplate;",
            ")V"
        }
    .end annotation

    .line 209
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 210
    iput-object p3, p0, Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;->mAeadKeyTemplate:Lcom/google/crypto/tink/KeyTemplate;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 197
    const-class v0, Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;

    return-object p0
.end method

.method public static values()[Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;
    .locals 1

    .line 197
    sget-object v0, Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;->$VALUES:[Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;

    invoke-virtual {v0}, [Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;

    return-object v0
.end method


# virtual methods
.method getKeyTemplate()Lcom/google/crypto/tink/KeyTemplate;
    .locals 1

    .line 214
    iget-object v0, p0, Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;->mAeadKeyTemplate:Lcom/google/crypto/tink/KeyTemplate;

    return-object v0
.end method
