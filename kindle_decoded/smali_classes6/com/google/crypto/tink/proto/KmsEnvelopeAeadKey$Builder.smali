.class public final Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey$Builder;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;
.source "KmsEnvelopeAeadKey.java"

# interfaces
.implements Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;",
        "Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey$Builder;",
        ">;",
        "Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 207
    invoke-static {}, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;->access$000()Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey$1;)V
    .locals 0

    .line 200
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public setParams(Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat;)Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 269
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 270
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;->access$300(Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat;)V

    return-object p0
.end method

.method public setVersion(I)Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 225
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 226
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;->access$100(Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;I)V

    return-object p0
.end method
