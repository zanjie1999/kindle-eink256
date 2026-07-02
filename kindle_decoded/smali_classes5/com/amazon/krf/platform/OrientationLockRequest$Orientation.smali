.class public final enum Lcom/amazon/krf/platform/OrientationLockRequest$Orientation;
.super Ljava/lang/Enum;
.source "OrientationLockRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/krf/platform/OrientationLockRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Orientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/krf/platform/OrientationLockRequest$Orientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/krf/platform/OrientationLockRequest$Orientation;

.field public static final enum DEFAULT:Lcom/amazon/krf/platform/OrientationLockRequest$Orientation;

.field public static final enum LANDSCAPE:Lcom/amazon/krf/platform/OrientationLockRequest$Orientation;

.field public static final enum PORTRAIT:Lcom/amazon/krf/platform/OrientationLockRequest$Orientation;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 28
    new-instance v0, Lcom/amazon/krf/platform/OrientationLockRequest$Orientation;

    const/4 v1, 0x0

    const-string v2, "DEFAULT"

    invoke-direct {v0, v2, v1}, Lcom/amazon/krf/platform/OrientationLockRequest$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/OrientationLockRequest$Orientation;->DEFAULT:Lcom/amazon/krf/platform/OrientationLockRequest$Orientation;

    .line 33
    new-instance v0, Lcom/amazon/krf/platform/OrientationLockRequest$Orientation;

    const/4 v2, 0x1

    const-string v3, "PORTRAIT"

    invoke-direct {v0, v3, v2}, Lcom/amazon/krf/platform/OrientationLockRequest$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/OrientationLockRequest$Orientation;->PORTRAIT:Lcom/amazon/krf/platform/OrientationLockRequest$Orientation;

    .line 38
    new-instance v0, Lcom/amazon/krf/platform/OrientationLockRequest$Orientation;

    const/4 v3, 0x2

    const-string v4, "LANDSCAPE"

    invoke-direct {v0, v4, v3}, Lcom/amazon/krf/platform/OrientationLockRequest$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/OrientationLockRequest$Orientation;->LANDSCAPE:Lcom/amazon/krf/platform/OrientationLockRequest$Orientation;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/krf/platform/OrientationLockRequest$Orientation;

    .line 22
    sget-object v5, Lcom/amazon/krf/platform/OrientationLockRequest$Orientation;->DEFAULT:Lcom/amazon/krf/platform/OrientationLockRequest$Orientation;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/krf/platform/OrientationLockRequest$Orientation;->PORTRAIT:Lcom/amazon/krf/platform/OrientationLockRequest$Orientation;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/krf/platform/OrientationLockRequest$Orientation;->$VALUES:[Lcom/amazon/krf/platform/OrientationLockRequest$Orientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/krf/platform/OrientationLockRequest$Orientation;
    .locals 1

    .line 22
    const-class v0, Lcom/amazon/krf/platform/OrientationLockRequest$Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/krf/platform/OrientationLockRequest$Orientation;

    return-object p0
.end method

.method public static values()[Lcom/amazon/krf/platform/OrientationLockRequest$Orientation;
    .locals 1

    .line 22
    sget-object v0, Lcom/amazon/krf/platform/OrientationLockRequest$Orientation;->$VALUES:[Lcom/amazon/krf/platform/OrientationLockRequest$Orientation;

    invoke-virtual {v0}, [Lcom/amazon/krf/platform/OrientationLockRequest$Orientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/krf/platform/OrientationLockRequest$Orientation;

    return-object v0
.end method
