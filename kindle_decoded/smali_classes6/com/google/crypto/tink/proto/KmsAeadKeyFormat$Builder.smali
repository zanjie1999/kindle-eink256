.class public final Lcom/google/crypto/tink/proto/KmsAeadKeyFormat$Builder;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;
.source "KmsAeadKeyFormat.java"

# interfaces
.implements Lcom/google/crypto/tink/proto/KmsAeadKeyFormatOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/proto/KmsAeadKeyFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/crypto/tink/proto/KmsAeadKeyFormat;",
        "Lcom/google/crypto/tink/proto/KmsAeadKeyFormat$Builder;",
        ">;",
        "Lcom/google/crypto/tink/proto/KmsAeadKeyFormatOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 200
    invoke-static {}, Lcom/google/crypto/tink/proto/KmsAeadKeyFormat;->access$000()Lcom/google/crypto/tink/proto/KmsAeadKeyFormat;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/proto/KmsAeadKeyFormat$1;)V
    .locals 0

    .line 193
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/KmsAeadKeyFormat$Builder;-><init>()V

    return-void
.end method
