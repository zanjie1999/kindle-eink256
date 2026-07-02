.class final enum Lcom/amazon/identity/auth/device/storage/LocalDataStorage$GetDataOptions;
.super Ljava/lang/Enum;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/storage/LocalDataStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "GetDataOptions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/identity/auth/device/storage/LocalDataStorage$GetDataOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/identity/auth/device/storage/LocalDataStorage$GetDataOptions;

.field public static final enum Deleted:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$GetDataOptions;

.field public static final enum DirtyOnly:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$GetDataOptions;

.field public static final enum NotDeleted:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$GetDataOptions;

.field public static final enum NotDirtyOnly:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$GetDataOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 101
    new-instance v0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage$GetDataOptions;

    const/4 v1, 0x0

    const-string v2, "DirtyOnly"

    invoke-direct {v0, v2, v1}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage$GetDataOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage$GetDataOptions;->DirtyOnly:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$GetDataOptions;

    .line 102
    new-instance v0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage$GetDataOptions;

    const/4 v2, 0x1

    const-string v3, "NotDirtyOnly"

    invoke-direct {v0, v3, v2}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage$GetDataOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage$GetDataOptions;->NotDirtyOnly:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$GetDataOptions;

    .line 103
    new-instance v0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage$GetDataOptions;

    const/4 v3, 0x2

    const-string v4, "Deleted"

    invoke-direct {v0, v4, v3}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage$GetDataOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage$GetDataOptions;->Deleted:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$GetDataOptions;

    .line 104
    new-instance v0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage$GetDataOptions;

    const/4 v4, 0x3

    const-string v5, "NotDeleted"

    invoke-direct {v0, v5, v4}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage$GetDataOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage$GetDataOptions;->NotDeleted:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$GetDataOptions;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/identity/auth/device/storage/LocalDataStorage$GetDataOptions;

    .line 99
    sget-object v6, Lcom/amazon/identity/auth/device/storage/LocalDataStorage$GetDataOptions;->DirtyOnly:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$GetDataOptions;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/identity/auth/device/storage/LocalDataStorage$GetDataOptions;->NotDirtyOnly:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$GetDataOptions;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/identity/auth/device/storage/LocalDataStorage$GetDataOptions;->Deleted:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$GetDataOptions;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/identity/auth/device/storage/LocalDataStorage$GetDataOptions;->$VALUES:[Lcom/amazon/identity/auth/device/storage/LocalDataStorage$GetDataOptions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/identity/auth/device/storage/LocalDataStorage$GetDataOptions;
    .locals 1

    .line 99
    const-class v0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage$GetDataOptions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage$GetDataOptions;

    return-object p0
.end method

.method public static values()[Lcom/amazon/identity/auth/device/storage/LocalDataStorage$GetDataOptions;
    .locals 1

    .line 99
    sget-object v0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage$GetDataOptions;->$VALUES:[Lcom/amazon/identity/auth/device/storage/LocalDataStorage$GetDataOptions;

    invoke-virtual {v0}, [Lcom/amazon/identity/auth/device/storage/LocalDataStorage$GetDataOptions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/identity/auth/device/storage/LocalDataStorage$GetDataOptions;

    return-object v0
.end method
