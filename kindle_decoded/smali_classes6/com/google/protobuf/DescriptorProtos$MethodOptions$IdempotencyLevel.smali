.class public final enum Lcom/google/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;
.super Ljava/lang/Enum;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos$MethodOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IdempotencyLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;

.field public static final enum IDEMPOTENCY_UNKNOWN:Lcom/google/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;

.field public static final enum IDEMPOTENT:Lcom/google/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;

.field public static final enum NO_SIDE_EFFECTS:Lcom/google/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;

.field private static final VALUES:[Lcom/google/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 32784
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;

    const/4 v1, 0x0

    const-string v2, "IDEMPOTENCY_UNKNOWN"

    invoke-direct {v0, v2, v1, v1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;->IDEMPOTENCY_UNKNOWN:Lcom/google/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;

    .line 32792
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;

    const/4 v2, 0x1

    const-string v3, "NO_SIDE_EFFECTS"

    invoke-direct {v0, v3, v2, v2}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;->NO_SIDE_EFFECTS:Lcom/google/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;

    .line 32800
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;

    const/4 v3, 0x2

    const-string v4, "IDEMPOTENT"

    invoke-direct {v0, v4, v3, v3}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;->IDEMPOTENT:Lcom/google/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/google/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;

    .line 32779
    sget-object v5, Lcom/google/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;->IDEMPOTENCY_UNKNOWN:Lcom/google/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;

    aput-object v5, v4, v1

    sget-object v1, Lcom/google/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;->NO_SIDE_EFFECTS:Lcom/google/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/google/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;->$VALUES:[Lcom/google/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;

    .line 32851
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel$1;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel$1;-><init>()V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 32871
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;->values()[Lcom/google/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;->VALUES:[Lcom/google/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 32884
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32885
    iput p3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/google/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 32841
    :cond_0
    sget-object p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;->IDEMPOTENT:Lcom/google/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;

    return-object p0

    .line 32840
    :cond_1
    sget-object p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;->NO_SIDE_EFFECTS:Lcom/google/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;

    return-object p0

    .line 32839
    :cond_2
    sget-object p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;->IDEMPOTENCY_UNKNOWN:Lcom/google/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;

    return-object p0
.end method

.method public static valueOf(I)Lcom/google/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 32834
    invoke-static {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;->forNumber(I)Lcom/google/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;
    .locals 1

    .line 32779
    const-class v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;

    return-object p0
.end method

.method public static values()[Lcom/google/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;
    .locals 1

    .line 32779
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;->$VALUES:[Lcom/google/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;

    invoke-virtual {v0}, [Lcom/google/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 32826
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;->value:I

    return v0
.end method
