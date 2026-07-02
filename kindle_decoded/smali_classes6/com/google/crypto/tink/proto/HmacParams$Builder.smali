.class public final Lcom/google/crypto/tink/proto/HmacParams$Builder;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;
.source "HmacParams.java"

# interfaces
.implements Lcom/google/crypto/tink/proto/HmacParamsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/proto/HmacParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/crypto/tink/proto/HmacParams;",
        "Lcom/google/crypto/tink/proto/HmacParams$Builder;",
        ">;",
        "Lcom/google/crypto/tink/proto/HmacParamsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 195
    invoke-static {}, Lcom/google/crypto/tink/proto/HmacParams;->access$000()Lcom/google/crypto/tink/proto/HmacParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/proto/HmacParams$1;)V
    .locals 0

    .line 188
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/HmacParams$Builder;-><init>()V

    return-void
.end method
