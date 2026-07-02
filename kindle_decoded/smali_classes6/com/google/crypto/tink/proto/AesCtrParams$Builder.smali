.class public final Lcom/google/crypto/tink/proto/AesCtrParams$Builder;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;
.source "AesCtrParams.java"

# interfaces
.implements Lcom/google/crypto/tink/proto/AesCtrParamsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/proto/AesCtrParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/crypto/tink/proto/AesCtrParams;",
        "Lcom/google/crypto/tink/proto/AesCtrParams$Builder;",
        ">;",
        "Lcom/google/crypto/tink/proto/AesCtrParamsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 133
    invoke-static {}, Lcom/google/crypto/tink/proto/AesCtrParams;->access$000()Lcom/google/crypto/tink/proto/AesCtrParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/proto/AesCtrParams$1;)V
    .locals 0

    .line 126
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/AesCtrParams$Builder;-><init>()V

    return-void
.end method
