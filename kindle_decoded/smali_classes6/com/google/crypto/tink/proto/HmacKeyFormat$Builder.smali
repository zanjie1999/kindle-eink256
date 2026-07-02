.class public final Lcom/google/crypto/tink/proto/HmacKeyFormat$Builder;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;
.source "HmacKeyFormat.java"

# interfaces
.implements Lcom/google/crypto/tink/proto/HmacKeyFormatOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/proto/HmacKeyFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/crypto/tink/proto/HmacKeyFormat;",
        "Lcom/google/crypto/tink/proto/HmacKeyFormat$Builder;",
        ">;",
        "Lcom/google/crypto/tink/proto/HmacKeyFormatOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 205
    invoke-static {}, Lcom/google/crypto/tink/proto/HmacKeyFormat;->access$000()Lcom/google/crypto/tink/proto/HmacKeyFormat;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/proto/HmacKeyFormat$1;)V
    .locals 0

    .line 198
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/HmacKeyFormat$Builder;-><init>()V

    return-void
.end method
