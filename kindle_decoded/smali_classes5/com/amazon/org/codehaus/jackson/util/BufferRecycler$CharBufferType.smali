.class public final enum Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;
.super Ljava/lang/Enum;
.source "BufferRecycler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/org/codehaus/jackson/util/BufferRecycler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CharBufferType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;

.field public static final enum CONCAT_BUFFER:Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;

.field public static final enum NAME_COPY_BUFFER:Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;

.field public static final enum TEXT_BUFFER:Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;

.field public static final enum TOKEN_BUFFER:Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;


# instance fields
.field private final size:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 36
    new-instance v0, Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;

    const/16 v1, 0x7d0

    const/4 v2, 0x0

    const-string v3, "TOKEN_BUFFER"

    invoke-direct {v0, v3, v2, v1}, Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;->TOKEN_BUFFER:Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;

    .line 37
    new-instance v0, Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;

    const/4 v3, 0x1

    const-string v4, "CONCAT_BUFFER"

    invoke-direct {v0, v4, v3, v1}, Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;->CONCAT_BUFFER:Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;

    .line 38
    new-instance v0, Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;

    const/16 v1, 0xc8

    const/4 v4, 0x2

    const-string v5, "TEXT_BUFFER"

    invoke-direct {v0, v5, v4, v1}, Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;->TEXT_BUFFER:Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;

    .line 39
    new-instance v0, Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;

    const/4 v5, 0x3

    const-string v6, "NAME_COPY_BUFFER"

    invoke-direct {v0, v6, v5, v1}, Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;->NAME_COPY_BUFFER:Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;

    .line 35
    sget-object v6, Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;->TOKEN_BUFFER:Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;

    aput-object v6, v1, v2

    sget-object v2, Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;->CONCAT_BUFFER:Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;->TEXT_BUFFER:Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;->$VALUES:[Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;->size:I

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;->size:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;
    .locals 1

    .line 35
    const-class v0, Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;
    .locals 1

    .line 35
    sget-object v0, Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;->$VALUES:[Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;

    invoke-virtual {v0}, [Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;

    return-object v0
.end method
