.class public final Lcom/google/crypto/tink/proto/AesCtrKeyFormat$Builder;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;
.source "AesCtrKeyFormat.java"

# interfaces
.implements Lcom/google/crypto/tink/proto/AesCtrKeyFormatOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/proto/AesCtrKeyFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/crypto/tink/proto/AesCtrKeyFormat;",
        "Lcom/google/crypto/tink/proto/AesCtrKeyFormat$Builder;",
        ">;",
        "Lcom/google/crypto/tink/proto/AesCtrKeyFormatOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 179
    invoke-static {}, Lcom/google/crypto/tink/proto/AesCtrKeyFormat;->access$000()Lcom/google/crypto/tink/proto/AesCtrKeyFormat;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/proto/AesCtrKeyFormat$1;)V
    .locals 0

    .line 172
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/AesCtrKeyFormat$Builder;-><init>()V

    return-void
.end method
