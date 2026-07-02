.class public final Lcom/google/crypto/tink/proto/AesEaxKey$Builder;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;
.source "AesEaxKey.java"

# interfaces
.implements Lcom/google/crypto/tink/proto/AesEaxKeyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/proto/AesEaxKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/crypto/tink/proto/AesEaxKey;",
        "Lcom/google/crypto/tink/proto/AesEaxKey$Builder;",
        ">;",
        "Lcom/google/crypto/tink/proto/AesEaxKeyOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 215
    invoke-static {}, Lcom/google/crypto/tink/proto/AesEaxKey;->access$000()Lcom/google/crypto/tink/proto/AesEaxKey;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/proto/AesEaxKey$1;)V
    .locals 0

    .line 208
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/AesEaxKey$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public setKeyValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/AesEaxKey$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 308
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 309
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/AesEaxKey;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/proto/AesEaxKey;->access$600(Lcom/google/crypto/tink/proto/AesEaxKey;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-object p0
.end method

.method public setParams(Lcom/google/crypto/tink/proto/AesEaxParams;)Lcom/google/crypto/tink/proto/AesEaxKey$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 265
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 266
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/AesEaxKey;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/proto/AesEaxKey;->access$300(Lcom/google/crypto/tink/proto/AesEaxKey;Lcom/google/crypto/tink/proto/AesEaxParams;)V

    return-object p0
.end method

.method public setVersion(I)Lcom/google/crypto/tink/proto/AesEaxKey$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 233
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 234
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/AesEaxKey;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/proto/AesEaxKey;->access$100(Lcom/google/crypto/tink/proto/AesEaxKey;I)V

    return-object p0
.end method
