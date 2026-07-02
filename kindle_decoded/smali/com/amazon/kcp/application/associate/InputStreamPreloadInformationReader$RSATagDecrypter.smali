.class Lcom/amazon/kcp/application/associate/InputStreamPreloadInformationReader$RSATagDecrypter;
.super Ljava/lang/Object;
.source "InputStreamPreloadInformationReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/associate/InputStreamPreloadInformationReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RSATagDecrypter"
.end annotation


# static fields
.field private static final ASSOC_TAG_PUBLIC_KEY_SPEC:Ljava/security/spec/RSAPublicKeySpec;


# instance fields
.field private publicKey:Ljava/security/PublicKey;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 74
    new-instance v0, Ljava/security/spec/RSAPublicKeySpec;

    new-instance v1, Ljava/math/BigInteger;

    const/16 v2, 0x10

    const-string v3, "d42f9f3c2c0a90c291da4cbf60ac074dda7d4179ee7d2a41dc832b1f7d38dc02c1112ac8b7ea7392216b9a2a8328c8030886ca168a09eb1e3dbfa35a33669c00ad6e59f44ed7a0cbb162314dd6a2bd42641f69250492602a0b339cfe6948dc3a65fd025f3dad49ab3e7d92df0188bd2832df1f19df8a5b948c6b0f1253ec35b24ef322da1ba5c10fbbe3de0c55274ddce3c234761fbf98f17a3de0c591f855faae7da39530c294c84b0a50add70f28741842d5f0c6432352b24954d1da848dd6b998c4d8360053ffe058dd59256d548c32cc3232a5c269e6110c20a95ba8dc25abcacd0fd491f95ae4651f378e115fb81672c5b52f45118327a091c2ea8722ad"

    invoke-direct {v1, v3, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "10001"

    invoke-direct {v3, v4, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v3}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    sput-object v0, Lcom/amazon/kcp/application/associate/InputStreamPreloadInformationReader$RSATagDecrypter;->ASSOC_TAG_PUBLIC_KEY_SPEC:Ljava/security/spec/RSAPublicKeySpec;

    return-void
.end method

.method constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "KeyFactory.getInstance()"

    const/4 v1, 0x1

    .line 87
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    const-string v1, "RSA"

    .line 88
    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    const/4 v2, 0x0

    .line 89
    invoke-static {v0, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 90
    sget-object v0, Lcom/amazon/kcp/application/associate/InputStreamPreloadInformationReader$RSATagDecrypter;->ASSOC_TAG_PUBLIC_KEY_SPEC:Ljava/security/spec/RSAPublicKeySpec;

    invoke-virtual {v1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/application/associate/InputStreamPreloadInformationReader$RSATagDecrypter;->publicKey:Ljava/security/PublicKey;

    return-void
.end method


# virtual methods
.method decryptTag([B)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "RSA/ECB/PKCS1Padding"

    .line 94
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/amazon/kcp/application/associate/InputStreamPreloadInformationReader$RSATagDecrypter;->publicKey:Ljava/security/PublicKey;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 96
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 97
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method
