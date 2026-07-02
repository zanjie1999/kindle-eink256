.class public final Lcom/google/crypto/tink/proto/Keyset$Key$Builder;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;
.source "Keyset.java"

# interfaces
.implements Lcom/google/crypto/tink/proto/Keyset$KeyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/proto/Keyset$Key;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/crypto/tink/proto/Keyset$Key;",
        "Lcom/google/crypto/tink/proto/Keyset$Key$Builder;",
        ">;",
        "Lcom/google/crypto/tink/proto/Keyset$KeyOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 414
    invoke-static {}, Lcom/google/crypto/tink/proto/Keyset$Key;->access$000()Lcom/google/crypto/tink/proto/Keyset$Key;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/proto/Keyset$1;)V
    .locals 0

    .line 407
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/Keyset$Key$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public setKeyData(Lcom/google/crypto/tink/proto/KeyData;)Lcom/google/crypto/tink/proto/Keyset$Key$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 451
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 452
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/Keyset$Key;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/proto/Keyset$Key;->access$100(Lcom/google/crypto/tink/proto/Keyset$Key;Lcom/google/crypto/tink/proto/KeyData;)V

    return-object p0
.end method

.method public setKeyId(I)Lcom/google/crypto/tink/proto/Keyset$Key$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 565
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 566
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/Keyset$Key;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/proto/Keyset$Key;->access$700(Lcom/google/crypto/tink/proto/Keyset$Key;I)V

    return-object p0
.end method

.method public setOutputPrefixType(Lcom/google/crypto/tink/proto/OutputPrefixType;)Lcom/google/crypto/tink/proto/Keyset$Key$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 636
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 637
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/Keyset$Key;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/proto/Keyset$Key;->access$1000(Lcom/google/crypto/tink/proto/Keyset$Key;Lcom/google/crypto/tink/proto/OutputPrefixType;)V

    return-object p0
.end method

.method public setStatus(Lcom/google/crypto/tink/proto/KeyStatusType;)Lcom/google/crypto/tink/proto/Keyset$Key$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 527
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 528
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/Keyset$Key;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/proto/Keyset$Key;->access$500(Lcom/google/crypto/tink/proto/Keyset$Key;Lcom/google/crypto/tink/proto/KeyStatusType;)V

    return-object p0
.end method
