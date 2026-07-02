.class public final Lcom/google/crypto/tink/proto/KeyTemplate$Builder;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;
.source "KeyTemplate.java"

# interfaces
.implements Lcom/google/crypto/tink/proto/KeyTemplateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/proto/KeyTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/crypto/tink/proto/KeyTemplate;",
        "Lcom/google/crypto/tink/proto/KeyTemplate$Builder;",
        ">;",
        "Lcom/google/crypto/tink/proto/KeyTemplateOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 285
    invoke-static {}, Lcom/google/crypto/tink/proto/KeyTemplate;->access$000()Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/proto/KeyTemplate$1;)V
    .locals 0

    .line 278
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public setOutputPrefixType(Lcom/google/crypto/tink/proto/OutputPrefixType;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 453
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 454
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/KeyTemplate;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/proto/KeyTemplate;->access$700(Lcom/google/crypto/tink/proto/KeyTemplate;Lcom/google/crypto/tink/proto/OutputPrefixType;)V

    return-object p0
.end method

.method public setTypeUrl(Ljava/lang/String;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 325
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 326
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/KeyTemplate;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/proto/KeyTemplate;->access$100(Lcom/google/crypto/tink/proto/KeyTemplate;Ljava/lang/String;)V

    return-object p0
.end method

.method public setValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 382
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 383
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/KeyTemplate;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/proto/KeyTemplate;->access$400(Lcom/google/crypto/tink/proto/KeyTemplate;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-object p0
.end method
