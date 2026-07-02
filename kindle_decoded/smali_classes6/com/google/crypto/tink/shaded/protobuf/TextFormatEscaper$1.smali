.class Lcom/google/crypto/tink/shaded/protobuf/TextFormatEscaper$1;
.super Ljava/lang/Object;
.source "TextFormatEscaper.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/TextFormatEscaper$ByteSequence;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/crypto/tink/shaded/protobuf/TextFormatEscaper;->escapeBytes(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$input:Lcom/google/crypto/tink/shaded/protobuf/ByteString;


# direct methods
.method constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/TextFormatEscaper$1;->val$input:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public byteAt(I)B
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/TextFormatEscaper$1;->val$input:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->byteAt(I)B

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/TextFormatEscaper$1;->val$input:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->size()I

    move-result v0

    return v0
.end method
