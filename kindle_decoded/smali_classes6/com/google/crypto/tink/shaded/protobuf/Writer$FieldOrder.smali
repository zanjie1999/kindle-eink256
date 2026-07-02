.class public final enum Lcom/google/crypto/tink/shaded/protobuf/Writer$FieldOrder;
.super Ljava/lang/Enum;
.source "Writer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/Writer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FieldOrder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/crypto/tink/shaded/protobuf/Writer$FieldOrder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/crypto/tink/shaded/protobuf/Writer$FieldOrder;

.field public static final enum ASCENDING:Lcom/google/crypto/tink/shaded/protobuf/Writer$FieldOrder;

.field public static final enum DESCENDING:Lcom/google/crypto/tink/shaded/protobuf/Writer$FieldOrder;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 44
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/Writer$FieldOrder;

    const/4 v1, 0x0

    const-string v2, "ASCENDING"

    invoke-direct {v0, v2, v1}, Lcom/google/crypto/tink/shaded/protobuf/Writer$FieldOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/Writer$FieldOrder;->ASCENDING:Lcom/google/crypto/tink/shaded/protobuf/Writer$FieldOrder;

    .line 47
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/Writer$FieldOrder;

    const/4 v2, 0x1

    const-string v3, "DESCENDING"

    invoke-direct {v0, v3, v2}, Lcom/google/crypto/tink/shaded/protobuf/Writer$FieldOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/Writer$FieldOrder;->DESCENDING:Lcom/google/crypto/tink/shaded/protobuf/Writer$FieldOrder;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/crypto/tink/shaded/protobuf/Writer$FieldOrder;

    .line 42
    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/Writer$FieldOrder;->ASCENDING:Lcom/google/crypto/tink/shaded/protobuf/Writer$FieldOrder;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/google/crypto/tink/shaded/protobuf/Writer$FieldOrder;->$VALUES:[Lcom/google/crypto/tink/shaded/protobuf/Writer$FieldOrder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/Writer$FieldOrder;
    .locals 1

    .line 42
    const-class v0, Lcom/google/crypto/tink/shaded/protobuf/Writer$FieldOrder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/Writer$FieldOrder;

    return-object p0
.end method

.method public static values()[Lcom/google/crypto/tink/shaded/protobuf/Writer$FieldOrder;
    .locals 1

    .line 42
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Writer$FieldOrder;->$VALUES:[Lcom/google/crypto/tink/shaded/protobuf/Writer$FieldOrder;

    invoke-virtual {v0}, [Lcom/google/crypto/tink/shaded/protobuf/Writer$FieldOrder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/crypto/tink/shaded/protobuf/Writer$FieldOrder;

    return-object v0
.end method
