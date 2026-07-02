.class public final Lcom/google/crypto/tink/proto/AesCtrHmacAeadKeyFormat$Builder;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;
.source "AesCtrHmacAeadKeyFormat.java"

# interfaces
.implements Lcom/google/crypto/tink/proto/AesCtrHmacAeadKeyFormatOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/proto/AesCtrHmacAeadKeyFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/crypto/tink/proto/AesCtrHmacAeadKeyFormat;",
        "Lcom/google/crypto/tink/proto/AesCtrHmacAeadKeyFormat$Builder;",
        ">;",
        "Lcom/google/crypto/tink/proto/AesCtrHmacAeadKeyFormatOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 199
    invoke-static {}, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKeyFormat;->access$000()Lcom/google/crypto/tink/proto/AesCtrHmacAeadKeyFormat;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/proto/AesCtrHmacAeadKeyFormat$1;)V
    .locals 0

    .line 192
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKeyFormat$Builder;-><init>()V

    return-void
.end method
