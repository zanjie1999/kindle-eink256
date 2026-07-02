.class public final Lcom/google/crypto/tink/proto/AesSivKeyFormat$Builder;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;
.source "AesSivKeyFormat.java"

# interfaces
.implements Lcom/google/crypto/tink/proto/AesSivKeyFormatOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/proto/AesSivKeyFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/crypto/tink/proto/AesSivKeyFormat;",
        "Lcom/google/crypto/tink/proto/AesSivKeyFormat$Builder;",
        ">;",
        "Lcom/google/crypto/tink/proto/AesSivKeyFormatOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 145
    invoke-static {}, Lcom/google/crypto/tink/proto/AesSivKeyFormat;->access$000()Lcom/google/crypto/tink/proto/AesSivKeyFormat;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/proto/AesSivKeyFormat$1;)V
    .locals 0

    .line 138
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/AesSivKeyFormat$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public setKeySize(I)Lcom/google/crypto/tink/proto/AesSivKeyFormat$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 171
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 172
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/AesSivKeyFormat;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/proto/AesSivKeyFormat;->access$100(Lcom/google/crypto/tink/proto/AesSivKeyFormat;I)V

    return-object p0
.end method
