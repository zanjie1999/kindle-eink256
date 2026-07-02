.class public Lcom/amazon/whispercloak/SecureMessage;
.super Ljava/lang/Object;
.source "SecureMessage.java"


# instance fields
.field private final mAad:[B

.field private final mCipherText:[B

.field private final mIV:[B

.field private final mMAC:[B


# direct methods
.method public constructor <init>([B[B[B[B)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/whispercloak/SecureMessage;->verifyParams([B[B[B[B)V

    .line 17
    iput-object p1, p0, Lcom/amazon/whispercloak/SecureMessage;->mIV:[B

    .line 18
    iput-object p2, p0, Lcom/amazon/whispercloak/SecureMessage;->mCipherText:[B

    .line 19
    iput-object p3, p0, Lcom/amazon/whispercloak/SecureMessage;->mMAC:[B

    .line 20
    iput-object p4, p0, Lcom/amazon/whispercloak/SecureMessage;->mAad:[B

    return-void
.end method

.method private verifyParams([B[B[B[B)V
    .locals 0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    return-void

    .line 33
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Mac Can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cipherText can\'tbe null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "IV can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 58
    const-class v1, Lcom/amazon/whispercloak/SecureMessage;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 60
    :cond_1
    check-cast p1, Lcom/amazon/whispercloak/SecureMessage;

    .line 62
    iget-object v1, p0, Lcom/amazon/whispercloak/SecureMessage;->mIV:[B

    iget-object v2, p1, Lcom/amazon/whispercloak/SecureMessage;->mIV:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 63
    :cond_2
    iget-object v1, p0, Lcom/amazon/whispercloak/SecureMessage;->mCipherText:[B

    iget-object v2, p1, Lcom/amazon/whispercloak/SecureMessage;->mCipherText:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 64
    :cond_3
    iget-object v1, p0, Lcom/amazon/whispercloak/SecureMessage;->mMAC:[B

    iget-object v2, p1, Lcom/amazon/whispercloak/SecureMessage;->mMAC:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    .line 65
    :cond_4
    iget-object v0, p0, Lcom/amazon/whispercloak/SecureMessage;->mAad:[B

    iget-object p1, p1, Lcom/amazon/whispercloak/SecureMessage;->mAad:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    :cond_5
    :goto_0
    return v0
.end method

.method public getAad()[B
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/amazon/whispercloak/SecureMessage;->mAad:[B

    return-object v0
.end method

.method public getCipherText()[B
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amazon/whispercloak/SecureMessage;->mCipherText:[B

    return-object v0
.end method

.method public getIv()[B
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/amazon/whispercloak/SecureMessage;->mIV:[B

    return-object v0
.end method

.method public getMac()[B
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amazon/whispercloak/SecureMessage;->mMAC:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/amazon/whispercloak/SecureMessage;->mIV:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 72
    iget-object v1, p0, Lcom/amazon/whispercloak/SecureMessage;->mCipherText:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 73
    iget-object v1, p0, Lcom/amazon/whispercloak/SecureMessage;->mMAC:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 74
    iget-object v1, p0, Lcom/amazon/whispercloak/SecureMessage;->mAad:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
