.class public abstract Lorg/spongycastle/asn1/ASN1Set;
.super Lorg/spongycastle/asn1/ASN1Primitive;
.source "ASN1Set.java"


# instance fields
.field private isSorted:Z

.field private set:Ljava/util/Vector;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 222
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 98
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lorg/spongycastle/asn1/ASN1Set;->isSorted:Z

    return-void
.end method

.method protected constructor <init>(Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 2

    .line 231
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 98
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    const/4 v1, 0x0

    .line 99
    iput-boolean v1, p0, Lorg/spongycastle/asn1/ASN1Set;->isSorted:Z

    .line 232
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method protected constructor <init>(Lorg/spongycastle/asn1/ASN1EncodableVector;Z)V
    .locals 3

    .line 243
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 98
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lorg/spongycastle/asn1/ASN1Set;->isSorted:Z

    .line 244
    :goto_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 246
    iget-object v1, p0, Lorg/spongycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->get(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 251
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Set;->sort()V

    :cond_1
    return-void
.end method

.method protected constructor <init>([Lorg/spongycastle/asn1/ASN1Encodable;Z)V
    .locals 3

    .line 261
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 98
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lorg/spongycastle/asn1/ASN1Set;->isSorted:Z

    .line 262
    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 264
    iget-object v1, p0, Lorg/spongycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 269
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Set;->sort()V

    :cond_1
    return-void
.end method

.method private getDEREncoded(Lorg/spongycastle/asn1/ASN1Encodable;)[B
    .locals 1

    .line 489
    :try_start_0
    invoke-interface {p1}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p1

    const-string v0, "DER"

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 493
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "cannot encode object added to SET"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Set;
    .locals 3

    if-eqz p0, :cond_4

    .line 111
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1SetParser;

    if-eqz v0, :cond_1

    .line 117
    check-cast p0, Lorg/spongycastle/asn1/ASN1SetParser;

    invoke-interface {p0}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Set;

    move-result-object p0

    return-object p0

    .line 119
    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    .line 123
    :try_start_0
    check-cast p0, [B

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Set;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 127
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to construct set from byte[]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_2
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_3

    .line 132
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 134
    instance-of v1, v0, Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v1, :cond_3

    .line 136
    check-cast v0, Lorg/spongycastle/asn1/ASN1Set;

    return-object v0

    .line 140
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_4
    :goto_0
    check-cast p0, Lorg/spongycastle/asn1/ASN1Set;

    return-object p0
.end method

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Set;
    .locals 2

    if-eqz p1, :cond_1

    .line 166
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 171
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lorg/spongycastle/asn1/ASN1Set;

    return-object p0

    .line 168
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "object implicit - explicit expected."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 180
    :cond_1
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 182
    instance-of p1, p0, Lorg/spongycastle/asn1/BERTaggedObject;

    if-eqz p1, :cond_2

    .line 184
    new-instance p1, Lorg/spongycastle/asn1/BERSet;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/spongycastle/asn1/BERSet;-><init>(Lorg/spongycastle/asn1/ASN1Encodable;)V

    return-object p1

    .line 188
    :cond_2
    new-instance p1, Lorg/spongycastle/asn1/DLSet;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/spongycastle/asn1/DLSet;-><init>(Lorg/spongycastle/asn1/ASN1Encodable;)V

    return-object p1

    .line 193
    :cond_3
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p1

    instance-of p1, p1, Lorg/spongycastle/asn1/ASN1Set;

    if-eqz p1, :cond_4

    .line 195
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lorg/spongycastle/asn1/ASN1Set;

    return-object p0

    .line 202
    :cond_4
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p1

    instance-of p1, p1, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz p1, :cond_6

    .line 204
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 206
    instance-of p0, p0, Lorg/spongycastle/asn1/BERTaggedObject;

    if-eqz p0, :cond_5

    .line 208
    new-instance p0, Lorg/spongycastle/asn1/BERSet;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->toArray()[Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/BERSet;-><init>([Lorg/spongycastle/asn1/ASN1Encodable;)V

    return-object p0

    .line 212
    :cond_5
    new-instance p0, Lorg/spongycastle/asn1/DLSet;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->toArray()[Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/DLSet;-><init>([Lorg/spongycastle/asn1/ASN1Encodable;)V

    return-object p0

    .line 218
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown object in getInstance: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getNext(Ljava/util/Enumeration;)Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 0

    .line 455
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/asn1/ASN1Encodable;

    if-nez p1, :cond_0

    .line 460
    sget-object p1, Lorg/spongycastle/asn1/DERNull;->INSTANCE:Lorg/spongycastle/asn1/DERNull;

    :cond_0
    return-object p1
.end method

.method private lessThanOrEqual([B[B)Z
    .locals 6

    .line 473
    array-length v0, p1

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-eq v2, v0, :cond_2

    .line 476
    aget-byte v4, p1, v2

    aget-byte v5, p2, v2

    if-eq v4, v5, :cond_1

    .line 478
    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    aget-byte p2, p2, v2

    and-int/lit16 p2, p2, 0xff

    if-ge p1, p2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 481
    :cond_2
    array-length p1, p1

    if-ne v0, p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method


# virtual methods
.method asn1Equals(Lorg/spongycastle/asn1/ASN1Primitive;)Z
    .locals 4

    .line 419
    instance-of v0, p1, Lorg/spongycastle/asn1/ASN1Set;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 424
    :cond_0
    check-cast p1, Lorg/spongycastle/asn1/ASN1Set;

    .line 426
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Set;->size()I

    move-result v0

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Set;->size()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    .line 431
    :cond_1
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 432
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    .line 434
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 436
    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/ASN1Set;->getNext(Ljava/util/Enumeration;)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    .line 437
    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/ASN1Set;->getNext(Ljava/util/Enumeration;)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    .line 439
    invoke-interface {v2}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    .line 440
    invoke-interface {v3}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 442
    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 1

    .line 287
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/asn1/ASN1Encodable;

    return-object p1
.end method

.method public getObjects()Ljava/util/Enumeration;
    .locals 1

    .line 275
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 356
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 357
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Set;->size()I

    move-result v1

    .line 359
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 361
    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/ASN1Set;->getNext(Ljava/util/Enumeration;)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    mul-int/lit8 v1, v1, 0x11

    .line 364
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method isConstructed()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    .line 297
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method protected sort()V
    .locals 9

    .line 499
    iget-boolean v0, p0, Lorg/spongycastle/asn1/ASN1Set;->isSorted:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 501
    iput-boolean v0, p0, Lorg/spongycastle/asn1/ASN1Set;->isSorted:Z

    .line 502
    iget-object v1, p0, Lorg/spongycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-le v1, v0, :cond_2

    .line 505
    iget-object v1, p0, Lorg/spongycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    sub-int/2addr v1, v0

    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_2

    .line 511
    iget-object v2, p0, Lorg/spongycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-direct {p0, v2}, Lorg/spongycastle/asn1/ASN1Set;->getDEREncoded(Lorg/spongycastle/asn1/ASN1Encodable;)[B

    move-result-object v2

    move-object v4, v2

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_1
    if-eq v5, v1, :cond_1

    .line 517
    iget-object v6, p0, Lorg/spongycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v6, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-direct {p0, v6}, Lorg/spongycastle/asn1/ASN1Set;->getDEREncoded(Lorg/spongycastle/asn1/ASN1Encodable;)[B

    move-result-object v6

    .line 519
    invoke-direct {p0, v4, v6}, Lorg/spongycastle/asn1/ASN1Set;->lessThanOrEqual([B[B)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v4, v6

    goto :goto_2

    .line 525
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    invoke-virtual {v2, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 527
    iget-object v3, p0, Lorg/spongycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    invoke-virtual {v3, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6, v5}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 528
    iget-object v3, p0, Lorg/spongycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    invoke-virtual {v3, v2, v7}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    move v3, v5

    const/4 v2, 0x1

    :goto_2
    move v5, v7

    goto :goto_1

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    return-void
.end method

.method toDERObject()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 3

    .line 376
    iget-boolean v0, p0, Lorg/spongycastle/asn1/ASN1Set;->isSorted:Z

    if-eqz v0, :cond_0

    .line 378
    new-instance v0, Lorg/spongycastle/asn1/DERSet;

    invoke-direct {v0}, Lorg/spongycastle/asn1/DERSet;-><init>()V

    .line 380
    iget-object v1, p0, Lorg/spongycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    iput-object v1, v0, Lorg/spongycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    return-object v0

    .line 386
    :cond_0
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    .line 388
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 390
    iget-object v2, p0, Lorg/spongycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 393
    :cond_1
    new-instance v1, Lorg/spongycastle/asn1/DERSet;

    invoke-direct {v1}, Lorg/spongycastle/asn1/DERSet;-><init>()V

    .line 395
    iput-object v0, v1, Lorg/spongycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    .line 397
    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Set;->sort()V

    return-object v1
.end method

.method toDLObject()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 409
    new-instance v0, Lorg/spongycastle/asn1/DLSet;

    invoke-direct {v0}, Lorg/spongycastle/asn1/DLSet;-><init>()V

    .line 411
    iget-object v1, p0, Lorg/spongycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    iput-object v1, v0, Lorg/spongycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 553
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
