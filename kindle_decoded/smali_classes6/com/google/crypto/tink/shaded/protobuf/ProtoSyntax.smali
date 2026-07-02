.class public final enum Lcom/google/crypto/tink/shaded/protobuf/ProtoSyntax;
.super Ljava/lang/Enum;
.source "ProtoSyntax.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/crypto/tink/shaded/protobuf/ProtoSyntax;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/crypto/tink/shaded/protobuf/ProtoSyntax;

.field public static final enum PROTO2:Lcom/google/crypto/tink/shaded/protobuf/ProtoSyntax;

.field public static final enum PROTO3:Lcom/google/crypto/tink/shaded/protobuf/ProtoSyntax;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 36
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/ProtoSyntax;

    const/4 v1, 0x0

    const-string v2, "PROTO2"

    invoke-direct {v0, v2, v1}, Lcom/google/crypto/tink/shaded/protobuf/ProtoSyntax;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/ProtoSyntax;->PROTO2:Lcom/google/crypto/tink/shaded/protobuf/ProtoSyntax;

    .line 37
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/ProtoSyntax;

    const/4 v2, 0x1

    const-string v3, "PROTO3"

    invoke-direct {v0, v3, v2}, Lcom/google/crypto/tink/shaded/protobuf/ProtoSyntax;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/ProtoSyntax;->PROTO3:Lcom/google/crypto/tink/shaded/protobuf/ProtoSyntax;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/crypto/tink/shaded/protobuf/ProtoSyntax;

    .line 34
    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/ProtoSyntax;->PROTO2:Lcom/google/crypto/tink/shaded/protobuf/ProtoSyntax;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/google/crypto/tink/shaded/protobuf/ProtoSyntax;->$VALUES:[Lcom/google/crypto/tink/shaded/protobuf/ProtoSyntax;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/ProtoSyntax;
    .locals 1

    .line 34
    const-class v0, Lcom/google/crypto/tink/shaded/protobuf/ProtoSyntax;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/ProtoSyntax;

    return-object p0
.end method

.method public static values()[Lcom/google/crypto/tink/shaded/protobuf/ProtoSyntax;
    .locals 1

    .line 34
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ProtoSyntax;->$VALUES:[Lcom/google/crypto/tink/shaded/protobuf/ProtoSyntax;

    invoke-virtual {v0}, [Lcom/google/crypto/tink/shaded/protobuf/ProtoSyntax;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/crypto/tink/shaded/protobuf/ProtoSyntax;

    return-object v0
.end method
