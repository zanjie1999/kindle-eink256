.class public final enum Lcom/amazon/kcp/cover/badge/IBadgeable$SashBadgeType;
.super Ljava/lang/Enum;
.source "IBadgeable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/cover/badge/IBadgeable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SashBadgeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/cover/badge/IBadgeable$SashBadgeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/cover/badge/IBadgeable$SashBadgeType;

.field public static final enum NORMAL:Lcom/amazon/kcp/cover/badge/IBadgeable$SashBadgeType;

.field public static final enum SMALL:Lcom/amazon/kcp/cover/badge/IBadgeable$SashBadgeType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 19
    new-instance v0, Lcom/amazon/kcp/cover/badge/IBadgeable$SashBadgeType;

    const/4 v1, 0x0

    const-string v2, "NORMAL"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kcp/cover/badge/IBadgeable$SashBadgeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/cover/badge/IBadgeable$SashBadgeType;->NORMAL:Lcom/amazon/kcp/cover/badge/IBadgeable$SashBadgeType;

    .line 20
    new-instance v0, Lcom/amazon/kcp/cover/badge/IBadgeable$SashBadgeType;

    const/4 v2, 0x1

    const-string v3, "SMALL"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kcp/cover/badge/IBadgeable$SashBadgeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/cover/badge/IBadgeable$SashBadgeType;->SMALL:Lcom/amazon/kcp/cover/badge/IBadgeable$SashBadgeType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/kcp/cover/badge/IBadgeable$SashBadgeType;

    .line 18
    sget-object v4, Lcom/amazon/kcp/cover/badge/IBadgeable$SashBadgeType;->NORMAL:Lcom/amazon/kcp/cover/badge/IBadgeable$SashBadgeType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/kcp/cover/badge/IBadgeable$SashBadgeType;->$VALUES:[Lcom/amazon/kcp/cover/badge/IBadgeable$SashBadgeType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/cover/badge/IBadgeable$SashBadgeType;
    .locals 1

    .line 18
    const-class v0, Lcom/amazon/kcp/cover/badge/IBadgeable$SashBadgeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/cover/badge/IBadgeable$SashBadgeType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/cover/badge/IBadgeable$SashBadgeType;
    .locals 1

    .line 18
    sget-object v0, Lcom/amazon/kcp/cover/badge/IBadgeable$SashBadgeType;->$VALUES:[Lcom/amazon/kcp/cover/badge/IBadgeable$SashBadgeType;

    invoke-virtual {v0}, [Lcom/amazon/kcp/cover/badge/IBadgeable$SashBadgeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/cover/badge/IBadgeable$SashBadgeType;

    return-object v0
.end method
