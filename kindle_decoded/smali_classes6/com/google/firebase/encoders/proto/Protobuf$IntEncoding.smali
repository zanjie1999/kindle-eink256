.class public final enum Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;
.super Ljava/lang/Enum;
.source "Protobuf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/encoders/proto/Protobuf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IntEncoding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;

.field public static final enum DEFAULT:Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;

.field public static final enum FIXED:Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;

.field public static final enum SIGNED:Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 32
    new-instance v0, Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;

    const/4 v1, 0x0

    const-string v2, "DEFAULT"

    invoke-direct {v0, v2, v1}, Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;->DEFAULT:Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;

    .line 33
    new-instance v0, Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;

    const/4 v2, 0x1

    const-string v3, "SIGNED"

    invoke-direct {v0, v3, v2}, Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;->SIGNED:Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;

    .line 34
    new-instance v0, Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;

    const/4 v3, 0x2

    const-string v4, "FIXED"

    invoke-direct {v0, v4, v3}, Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;->FIXED:Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;

    .line 31
    sget-object v5, Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;->DEFAULT:Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;

    aput-object v5, v4, v1

    sget-object v1, Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;->SIGNED:Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;->$VALUES:[Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;
    .locals 1

    .line 31
    const-class v0, Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;

    return-object p0
.end method

.method public static values()[Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;
    .locals 1

    .line 31
    sget-object v0, Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;->$VALUES:[Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;

    invoke-virtual {v0}, [Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;

    return-object v0
.end method
