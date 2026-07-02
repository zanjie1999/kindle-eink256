.class public final enum Lcom/amazon/krf/platform/KRFBookInfo$BookOrientationLock;
.super Ljava/lang/Enum;
.source "KRFBookInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/krf/platform/KRFBookInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BookOrientationLock"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/krf/platform/KRFBookInfo$BookOrientationLock;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/krf/platform/KRFBookInfo$BookOrientationLock;

.field public static final enum kBookOrientationLockLandscape:Lcom/amazon/krf/platform/KRFBookInfo$BookOrientationLock;

.field public static final enum kBookOrientationLockNone:Lcom/amazon/krf/platform/KRFBookInfo$BookOrientationLock;

.field public static final enum kBookOrientationLockPortait:Lcom/amazon/krf/platform/KRFBookInfo$BookOrientationLock;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 37
    new-instance v0, Lcom/amazon/krf/platform/KRFBookInfo$BookOrientationLock;

    const/4 v1, 0x0

    const-string v2, "kBookOrientationLockNone"

    invoke-direct {v0, v2, v1}, Lcom/amazon/krf/platform/KRFBookInfo$BookOrientationLock;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/KRFBookInfo$BookOrientationLock;->kBookOrientationLockNone:Lcom/amazon/krf/platform/KRFBookInfo$BookOrientationLock;

    .line 38
    new-instance v0, Lcom/amazon/krf/platform/KRFBookInfo$BookOrientationLock;

    const/4 v2, 0x1

    const-string v3, "kBookOrientationLockPortait"

    invoke-direct {v0, v3, v2}, Lcom/amazon/krf/platform/KRFBookInfo$BookOrientationLock;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/KRFBookInfo$BookOrientationLock;->kBookOrientationLockPortait:Lcom/amazon/krf/platform/KRFBookInfo$BookOrientationLock;

    .line 39
    new-instance v0, Lcom/amazon/krf/platform/KRFBookInfo$BookOrientationLock;

    const/4 v3, 0x2

    const-string v4, "kBookOrientationLockLandscape"

    invoke-direct {v0, v4, v3}, Lcom/amazon/krf/platform/KRFBookInfo$BookOrientationLock;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/KRFBookInfo$BookOrientationLock;->kBookOrientationLockLandscape:Lcom/amazon/krf/platform/KRFBookInfo$BookOrientationLock;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/krf/platform/KRFBookInfo$BookOrientationLock;

    .line 35
    sget-object v5, Lcom/amazon/krf/platform/KRFBookInfo$BookOrientationLock;->kBookOrientationLockNone:Lcom/amazon/krf/platform/KRFBookInfo$BookOrientationLock;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/krf/platform/KRFBookInfo$BookOrientationLock;->kBookOrientationLockPortait:Lcom/amazon/krf/platform/KRFBookInfo$BookOrientationLock;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/krf/platform/KRFBookInfo$BookOrientationLock;->$VALUES:[Lcom/amazon/krf/platform/KRFBookInfo$BookOrientationLock;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static createFromInt(I)Lcom/amazon/krf/platform/KRFBookInfo$BookOrientationLock;
    .locals 1

    .line 42
    invoke-static {}, Lcom/amazon/krf/platform/KRFBookInfo$BookOrientationLock;->values()[Lcom/amazon/krf/platform/KRFBookInfo$BookOrientationLock;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/krf/platform/KRFBookInfo$BookOrientationLock;
    .locals 1

    .line 35
    const-class v0, Lcom/amazon/krf/platform/KRFBookInfo$BookOrientationLock;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/krf/platform/KRFBookInfo$BookOrientationLock;

    return-object p0
.end method

.method public static values()[Lcom/amazon/krf/platform/KRFBookInfo$BookOrientationLock;
    .locals 1

    .line 35
    sget-object v0, Lcom/amazon/krf/platform/KRFBookInfo$BookOrientationLock;->$VALUES:[Lcom/amazon/krf/platform/KRFBookInfo$BookOrientationLock;

    invoke-virtual {v0}, [Lcom/amazon/krf/platform/KRFBookInfo$BookOrientationLock;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/krf/platform/KRFBookInfo$BookOrientationLock;

    return-object v0
.end method
