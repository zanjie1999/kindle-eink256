.class public final Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo$Builder;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;
.source "KeysetInfo.java"

# interfaces
.implements Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;",
        "Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo$Builder;",
        ">;",
        "Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 433
    invoke-static {}, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->access$000()Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/proto/KeysetInfo$1;)V
    .locals 0

    .line 426
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public setKeyId(I)Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 599
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 600
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->access$700(Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;I)V

    return-object p0
.end method

.method public setOutputPrefixType(Lcom/google/crypto/tink/proto/OutputPrefixType;)Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 665
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 666
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->access$1000(Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;Lcom/google/crypto/tink/proto/OutputPrefixType;)V

    return-object p0
.end method

.method public setStatus(Lcom/google/crypto/tink/proto/KeyStatusType;)Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 559
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 560
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->access$500(Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;Lcom/google/crypto/tink/proto/KeyStatusType;)V

    return-object p0
.end method

.method public setTypeUrl(Ljava/lang/String;)Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 476
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 477
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->access$100(Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;Ljava/lang/String;)V

    return-object p0
.end method
