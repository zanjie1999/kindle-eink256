.class public final enum Lcom/audible/mobile/download/lowstorage/LowStorageAction;
.super Ljava/lang/Enum;
.source "LowStorageAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/mobile/download/lowstorage/LowStorageAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/mobile/download/lowstorage/LowStorageAction;

.field public static final enum CANCEL_REQUEST:Lcom/audible/mobile/download/lowstorage/LowStorageAction;

.field public static final enum NONE:Lcom/audible/mobile/download/lowstorage/LowStorageAction;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 10
    new-instance v0, Lcom/audible/mobile/download/lowstorage/LowStorageAction;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lcom/audible/mobile/download/lowstorage/LowStorageAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/download/lowstorage/LowStorageAction;->NONE:Lcom/audible/mobile/download/lowstorage/LowStorageAction;

    new-instance v0, Lcom/audible/mobile/download/lowstorage/LowStorageAction;

    const/4 v2, 0x1

    const-string v3, "CANCEL_REQUEST"

    invoke-direct {v0, v3, v2}, Lcom/audible/mobile/download/lowstorage/LowStorageAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/download/lowstorage/LowStorageAction;->CANCEL_REQUEST:Lcom/audible/mobile/download/lowstorage/LowStorageAction;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/audible/mobile/download/lowstorage/LowStorageAction;

    .line 9
    sget-object v4, Lcom/audible/mobile/download/lowstorage/LowStorageAction;->NONE:Lcom/audible/mobile/download/lowstorage/LowStorageAction;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/audible/mobile/download/lowstorage/LowStorageAction;->$VALUES:[Lcom/audible/mobile/download/lowstorage/LowStorageAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/mobile/download/lowstorage/LowStorageAction;
    .locals 1

    .line 9
    const-class v0, Lcom/audible/mobile/download/lowstorage/LowStorageAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/mobile/download/lowstorage/LowStorageAction;

    return-object p0
.end method

.method public static values()[Lcom/audible/mobile/download/lowstorage/LowStorageAction;
    .locals 1

    .line 9
    sget-object v0, Lcom/audible/mobile/download/lowstorage/LowStorageAction;->$VALUES:[Lcom/audible/mobile/download/lowstorage/LowStorageAction;

    invoke-virtual {v0}, [Lcom/audible/mobile/download/lowstorage/LowStorageAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/mobile/download/lowstorage/LowStorageAction;

    return-object v0
.end method
