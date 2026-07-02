.class final enum Lcom/google/protobuf/MapField$StorageMode;
.super Ljava/lang/Enum;
.source "MapField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/MapField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "StorageMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/protobuf/MapField$StorageMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protobuf/MapField$StorageMode;

.field public static final enum BOTH:Lcom/google/protobuf/MapField$StorageMode;

.field public static final enum LIST:Lcom/google/protobuf/MapField$StorageMode;

.field public static final enum MAP:Lcom/google/protobuf/MapField$StorageMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 78
    new-instance v0, Lcom/google/protobuf/MapField$StorageMode;

    const/4 v1, 0x0

    const-string v2, "MAP"

    invoke-direct {v0, v2, v1}, Lcom/google/protobuf/MapField$StorageMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/protobuf/MapField$StorageMode;->MAP:Lcom/google/protobuf/MapField$StorageMode;

    new-instance v0, Lcom/google/protobuf/MapField$StorageMode;

    const/4 v2, 0x1

    const-string v3, "LIST"

    invoke-direct {v0, v3, v2}, Lcom/google/protobuf/MapField$StorageMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/protobuf/MapField$StorageMode;->LIST:Lcom/google/protobuf/MapField$StorageMode;

    new-instance v0, Lcom/google/protobuf/MapField$StorageMode;

    const/4 v3, 0x2

    const-string v4, "BOTH"

    invoke-direct {v0, v4, v3}, Lcom/google/protobuf/MapField$StorageMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/protobuf/MapField$StorageMode;->BOTH:Lcom/google/protobuf/MapField$StorageMode;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/google/protobuf/MapField$StorageMode;

    sget-object v5, Lcom/google/protobuf/MapField$StorageMode;->MAP:Lcom/google/protobuf/MapField$StorageMode;

    aput-object v5, v4, v1

    sget-object v1, Lcom/google/protobuf/MapField$StorageMode;->LIST:Lcom/google/protobuf/MapField$StorageMode;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/google/protobuf/MapField$StorageMode;->$VALUES:[Lcom/google/protobuf/MapField$StorageMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protobuf/MapField$StorageMode;
    .locals 1

    .line 78
    const-class v0, Lcom/google/protobuf/MapField$StorageMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/MapField$StorageMode;

    return-object p0
.end method

.method public static values()[Lcom/google/protobuf/MapField$StorageMode;
    .locals 1

    .line 78
    sget-object v0, Lcom/google/protobuf/MapField$StorageMode;->$VALUES:[Lcom/google/protobuf/MapField$StorageMode;

    invoke-virtual {v0}, [Lcom/google/protobuf/MapField$StorageMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/MapField$StorageMode;

    return-object v0
.end method
