.class public final enum Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;
.super Ljava/lang/Enum;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos$FileOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OptimizeMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

.field public static final enum CODE_SIZE:Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

.field public static final enum LITE_RUNTIME:Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

.field public static final enum SPEED:Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

.field private static final VALUES:[Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 20871
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "SPEED"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->SPEED:Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    .line 20879
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    const/4 v3, 0x2

    const-string v4, "CODE_SIZE"

    invoke-direct {v0, v4, v2, v3}, Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->CODE_SIZE:Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    .line 20887
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    const/4 v4, 0x3

    const-string v5, "LITE_RUNTIME"

    invoke-direct {v0, v5, v3, v4}, Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->LITE_RUNTIME:Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    new-array v4, v4, [Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    .line 20862
    sget-object v5, Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->SPEED:Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    aput-object v5, v4, v1

    sget-object v1, Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->CODE_SIZE:Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->$VALUES:[Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    .line 20942
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode$1;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode$1;-><init>()V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 20962
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->values()[Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->VALUES:[Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 20975
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20976
    iput p3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 20932
    :cond_0
    sget-object p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->LITE_RUNTIME:Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    return-object p0

    .line 20931
    :cond_1
    sget-object p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->CODE_SIZE:Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    return-object p0

    .line 20930
    :cond_2
    sget-object p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->SPEED:Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    return-object p0
.end method

.method public static valueOf(I)Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 20925
    invoke-static {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->forNumber(I)Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;
    .locals 1

    .line 20862
    const-class v0, Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    return-object p0
.end method

.method public static values()[Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;
    .locals 1

    .line 20862
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->$VALUES:[Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    invoke-virtual {v0}, [Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 20917
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->value:I

    return v0
.end method
