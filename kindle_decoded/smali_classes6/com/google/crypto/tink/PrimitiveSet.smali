.class public final Lcom/google/crypto/tink/PrimitiveSet;
.super Ljava/lang/Object;
.source "PrimitiveSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/PrimitiveSet$Prefix;,
        Lcom/google/crypto/tink/PrimitiveSet$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private primary:Lcom/google/crypto/tink/PrimitiveSet$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/PrimitiveSet$Entry<",
            "TP;>;"
        }
    .end annotation
.end field

.field private final primitiveClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TP;>;"
        }
    .end annotation
.end field

.field private final primitives:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lcom/google/crypto/tink/PrimitiveSet$Prefix;",
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/PrimitiveSet$Entry<",
            "TP;>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "primitiveClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TP;>;)V"
        }
    .end annotation

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/crypto/tink/PrimitiveSet;->primitives:Ljava/util/concurrent/ConcurrentMap;

    .line 145
    iput-object p1, p0, Lcom/google/crypto/tink/PrimitiveSet;->primitiveClass:Ljava/lang/Class;

    return-void
.end method

.method public static newPrimitiveSet(Ljava/lang/Class;)Lcom/google/crypto/tink/PrimitiveSet;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "primitiveClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TP;>;)",
            "Lcom/google/crypto/tink/PrimitiveSet<",
            "TP;>;"
        }
    .end annotation

    .line 149
    new-instance v0, Lcom/google/crypto/tink/PrimitiveSet;

    invoke-direct {v0, p0}, Lcom/google/crypto/tink/PrimitiveSet;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public addPrimitive(Ljava/lang/Object;Lcom/google/crypto/tink/proto/Keyset$Key;)Lcom/google/crypto/tink/PrimitiveSet$Entry;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "primitive",
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;",
            "Lcom/google/crypto/tink/proto/Keyset$Key;",
            ")",
            "Lcom/google/crypto/tink/PrimitiveSet$Entry<",
            "TP;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 175
    invoke-virtual {p2}, Lcom/google/crypto/tink/proto/Keyset$Key;->getStatus()Lcom/google/crypto/tink/proto/KeyStatusType;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/proto/KeyStatusType;->ENABLED:Lcom/google/crypto/tink/proto/KeyStatusType;

    if-ne v0, v1, :cond_1

    .line 178
    new-instance v0, Lcom/google/crypto/tink/PrimitiveSet$Entry;

    .line 181
    invoke-static {p2}, Lcom/google/crypto/tink/CryptoFormat;->getOutputPrefix(Lcom/google/crypto/tink/proto/Keyset$Key;)[B

    move-result-object v4

    .line 182
    invoke-virtual {p2}, Lcom/google/crypto/tink/proto/Keyset$Key;->getStatus()Lcom/google/crypto/tink/proto/KeyStatusType;

    move-result-object v5

    .line 183
    invoke-virtual {p2}, Lcom/google/crypto/tink/proto/Keyset$Key;->getOutputPrefixType()Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object v6

    .line 184
    invoke-virtual {p2}, Lcom/google/crypto/tink/proto/Keyset$Key;->getKeyId()I

    move-result v7

    move-object v2, v0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/crypto/tink/PrimitiveSet$Entry;-><init>(Ljava/lang/Object;[BLcom/google/crypto/tink/proto/KeyStatusType;Lcom/google/crypto/tink/proto/OutputPrefixType;I)V

    .line 185
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 186
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    new-instance p2, Lcom/google/crypto/tink/PrimitiveSet$Prefix;

    invoke-virtual {v0}, Lcom/google/crypto/tink/PrimitiveSet$Entry;->getIdentifier()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p2, v1, v2}, Lcom/google/crypto/tink/PrimitiveSet$Prefix;-><init>([BLcom/google/crypto/tink/PrimitiveSet$1;)V

    .line 189
    iget-object v1, p0, Lcom/google/crypto/tink/PrimitiveSet;->primitives:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p2, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    .line 191
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 192
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 193
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object p1, p0, Lcom/google/crypto/tink/PrimitiveSet;->primitives:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0

    .line 176
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "only ENABLED key is allowed"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPrimary()Lcom/google/crypto/tink/PrimitiveSet$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/PrimitiveSet$Entry<",
            "TP;>;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/google/crypto/tink/PrimitiveSet;->primary:Lcom/google/crypto/tink/PrimitiveSet$Entry;

    return-object v0
.end method

.method public getPrimitive([B)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "identifier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/PrimitiveSet$Entry<",
            "TP;>;>;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/google/crypto/tink/PrimitiveSet;->primitives:Ljava/util/concurrent/ConcurrentMap;

    new-instance v1, Lcom/google/crypto/tink/PrimitiveSet$Prefix;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/crypto/tink/PrimitiveSet$Prefix;-><init>([BLcom/google/crypto/tink/PrimitiveSet$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getPrimitiveClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TP;>;"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/google/crypto/tink/PrimitiveSet;->primitiveClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getRawPrimitives()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/PrimitiveSet$Entry<",
            "TP;>;>;"
        }
    .end annotation

    .line 114
    sget-object v0, Lcom/google/crypto/tink/CryptoFormat;->RAW_PREFIX:[B

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/PrimitiveSet;->getPrimitive([B)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setPrimary(Lcom/google/crypto/tink/PrimitiveSet$Entry;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "primary"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/PrimitiveSet$Entry<",
            "TP;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 157
    invoke-virtual {p1}, Lcom/google/crypto/tink/PrimitiveSet$Entry;->getStatus()Lcom/google/crypto/tink/proto/KeyStatusType;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/proto/KeyStatusType;->ENABLED:Lcom/google/crypto/tink/proto/KeyStatusType;

    if-ne v0, v1, :cond_1

    .line 160
    invoke-virtual {p1}, Lcom/google/crypto/tink/PrimitiveSet$Entry;->getIdentifier()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/PrimitiveSet;->getPrimitive([B)Ljava/util/List;

    move-result-object v0

    .line 161
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    iput-object p1, p0, Lcom/google/crypto/tink/PrimitiveSet;->primary:Lcom/google/crypto/tink/PrimitiveSet$Entry;

    return-void

    .line 162
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "the primary entry cannot be set to an entry which is not held by this primitive set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 158
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "the primary entry has to be ENABLED"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 155
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "the primary entry must be non-null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
