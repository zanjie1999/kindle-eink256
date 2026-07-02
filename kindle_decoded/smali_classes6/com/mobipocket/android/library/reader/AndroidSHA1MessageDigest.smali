.class public Lcom/mobipocket/android/library/reader/AndroidSHA1MessageDigest;
.super Ljava/lang/Object;
.source "AndroidSHA1MessageDigest.java"

# interfaces
.implements Lcom/amazon/system/security/IMessageDigest;


# instance fields
.field md:Ljava/security/MessageDigest;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SHA-1"

    .line 20
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/mobipocket/android/library/reader/AndroidSHA1MessageDigest;->md:Ljava/security/MessageDigest;

    return-void
.end method


# virtual methods
.method public digest()[B
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/mobipocket/android/library/reader/AndroidSHA1MessageDigest;->md:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v0

    new-array v0, v0, [B

    .line 30
    iget-object v0, p0, Lcom/mobipocket/android/library/reader/AndroidSHA1MessageDigest;->md:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/mobipocket/android/library/reader/AndroidSHA1MessageDigest;->md:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    return-object v0
.end method

.method public update([B)V
    .locals 1

    if-eqz p1, :cond_0

    .line 45
    iget-object v0, p0, Lcom/mobipocket/android/library/reader/AndroidSHA1MessageDigest;->md:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    :cond_0
    return-void
.end method
