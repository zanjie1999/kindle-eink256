.class public final enum Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;
.super Ljava/lang/Enum;
.source "Descriptors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Descriptors$FileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Syntax"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;

.field public static final enum PROTO2:Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;

.field public static final enum PROTO3:Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;

.field public static final enum UNKNOWN:Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 143
    new-instance v0, Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    const-string v3, "unknown"

    invoke-direct {v0, v2, v1, v3}, Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;->UNKNOWN:Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;

    .line 144
    new-instance v0, Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;

    const/4 v2, 0x1

    const-string v3, "PROTO2"

    const-string v4, "proto2"

    invoke-direct {v0, v3, v2, v4}, Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;->PROTO2:Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;

    .line 145
    new-instance v0, Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;

    const/4 v3, 0x2

    const-string v4, "PROTO3"

    const-string v5, "proto3"

    invoke-direct {v0, v4, v3, v5}, Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;->PROTO3:Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;

    .line 142
    sget-object v5, Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;->UNKNOWN:Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;

    aput-object v5, v4, v1

    sget-object v1, Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;->PROTO2:Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;->$VALUES:[Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 147
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 148
    iput-object p3, p0, Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;->name:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;)Ljava/lang/String;
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;->name:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;
    .locals 1

    .line 142
    const-class v0, Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;

    return-object p0
.end method

.method public static values()[Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;
    .locals 1

    .line 142
    sget-object v0, Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;->$VALUES:[Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;

    invoke-virtual {v0}, [Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;

    return-object v0
.end method
