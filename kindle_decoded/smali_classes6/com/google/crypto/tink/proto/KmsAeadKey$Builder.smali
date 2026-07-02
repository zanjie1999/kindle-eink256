.class public final Lcom/google/crypto/tink/proto/KmsAeadKey$Builder;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;
.source "KmsAeadKey.java"

# interfaces
.implements Lcom/google/crypto/tink/proto/KmsAeadKeyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/proto/KmsAeadKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/crypto/tink/proto/KmsAeadKey;",
        "Lcom/google/crypto/tink/proto/KmsAeadKey$Builder;",
        ">;",
        "Lcom/google/crypto/tink/proto/KmsAeadKeyOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 207
    invoke-static {}, Lcom/google/crypto/tink/proto/KmsAeadKey;->access$000()Lcom/google/crypto/tink/proto/KmsAeadKey;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/proto/KmsAeadKey$1;)V
    .locals 0

    .line 200
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/KmsAeadKey$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public setParams(Lcom/google/crypto/tink/proto/KmsAeadKeyFormat;)Lcom/google/crypto/tink/proto/KmsAeadKey$Builder;
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

    check-cast v0, Lcom/google/crypto/tink/proto/KmsAeadKey;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/proto/KmsAeadKey;->access$300(Lcom/google/crypto/tink/proto/KmsAeadKey;Lcom/google/crypto/tink/proto/KmsAeadKeyFormat;)V

    return-object p0
.end method

.method public setVersion(I)Lcom/google/crypto/tink/proto/KmsAeadKey$Builder;
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

    check-cast v0, Lcom/google/crypto/tink/proto/KmsAeadKey;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/proto/KmsAeadKey;->access$100(Lcom/google/crypto/tink/proto/KmsAeadKey;I)V

    return-object p0
.end method
