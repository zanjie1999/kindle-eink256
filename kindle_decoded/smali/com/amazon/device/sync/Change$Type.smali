.class public final enum Lcom/amazon/device/sync/Change$Type;
.super Ljava/lang/Enum;
.source "Change.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/sync/Change;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/device/sync/Change$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/device/sync/Change$Type;

.field public static final enum ADDED:Lcom/amazon/device/sync/Change$Type;

.field public static final enum DELETED:Lcom/amazon/device/sync/Change$Type;

.field public static final enum UPDATED:Lcom/amazon/device/sync/Change$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 23
    new-instance v0, Lcom/amazon/device/sync/Change$Type;

    const/4 v1, 0x0

    const-string v2, "ADDED"

    invoke-direct {v0, v2, v1}, Lcom/amazon/device/sync/Change$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/sync/Change$Type;->ADDED:Lcom/amazon/device/sync/Change$Type;

    .line 27
    new-instance v0, Lcom/amazon/device/sync/Change$Type;

    const/4 v2, 0x1

    const-string v3, "UPDATED"

    invoke-direct {v0, v3, v2}, Lcom/amazon/device/sync/Change$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/sync/Change$Type;->UPDATED:Lcom/amazon/device/sync/Change$Type;

    .line 31
    new-instance v0, Lcom/amazon/device/sync/Change$Type;

    const/4 v3, 0x2

    const-string v4, "DELETED"

    invoke-direct {v0, v4, v3}, Lcom/amazon/device/sync/Change$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/sync/Change$Type;->DELETED:Lcom/amazon/device/sync/Change$Type;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/device/sync/Change$Type;

    .line 18
    sget-object v5, Lcom/amazon/device/sync/Change$Type;->ADDED:Lcom/amazon/device/sync/Change$Type;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/device/sync/Change$Type;->UPDATED:Lcom/amazon/device/sync/Change$Type;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/device/sync/Change$Type;->$VALUES:[Lcom/amazon/device/sync/Change$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/device/sync/Change$Type;
    .locals 1

    .line 18
    const-class v0, Lcom/amazon/device/sync/Change$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/device/sync/Change$Type;

    return-object p0
.end method

.method public static values()[Lcom/amazon/device/sync/Change$Type;
    .locals 1

    .line 18
    sget-object v0, Lcom/amazon/device/sync/Change$Type;->$VALUES:[Lcom/amazon/device/sync/Change$Type;

    invoke-virtual {v0}, [Lcom/amazon/device/sync/Change$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/device/sync/Change$Type;

    return-object v0
.end method
