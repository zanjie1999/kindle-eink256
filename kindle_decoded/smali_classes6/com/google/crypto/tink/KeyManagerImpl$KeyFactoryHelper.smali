.class Lcom/google/crypto/tink/KeyManagerImpl$KeyFactoryHelper;
.super Ljava/lang/Object;
.source "KeyManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/KeyManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyFactoryHelper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<KeyFormatProtoT::",
        "Lcom/google/crypto/tink/shaded/protobuf/MessageLite;",
        "KeyProtoT::",
        "Lcom/google/crypto/tink/shaded/protobuf/MessageLite;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final keyFactory:Lcom/google/crypto/tink/KeyTypeManager$KeyFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/KeyTypeManager$KeyFactory<",
            "TKeyFormatProtoT;TKeyProtoT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/crypto/tink/KeyTypeManager$KeyFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyFactory"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/KeyTypeManager$KeyFactory<",
            "TKeyFormatProtoT;TKeyProtoT;>;)V"
        }
    .end annotation

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-object p1, p0, Lcom/google/crypto/tink/KeyManagerImpl$KeyFactoryHelper;->keyFactory:Lcom/google/crypto/tink/KeyTypeManager$KeyFactory;

    return-void
.end method

.method private validateCreate(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyFormat"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKeyFormatProtoT;)TKeyProtoT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/google/crypto/tink/KeyManagerImpl$KeyFactoryHelper;->keyFactory:Lcom/google/crypto/tink/KeyTypeManager$KeyFactory;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/KeyTypeManager$KeyFactory;->validateKeyFormat(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)V

    .line 160
    iget-object v0, p0, Lcom/google/crypto/tink/KeyManagerImpl$KeyFactoryHelper;->keyFactory:Lcom/google/crypto/tink/KeyTypeManager$KeyFactory;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/KeyTypeManager$KeyFactory;->createKey(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    return-object p1
.end method


# virtual methods
.method parseValidateCreate(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serializedKeyFormat"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/shaded/protobuf/ByteString;",
            ")TKeyProtoT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/google/crypto/tink/KeyManagerImpl$KeyFactoryHelper;->keyFactory:Lcom/google/crypto/tink/KeyTypeManager$KeyFactory;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/KeyTypeManager$KeyFactory;->parseKeyFormat(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/crypto/tink/KeyManagerImpl$KeyFactoryHelper;->validateCreate(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method
