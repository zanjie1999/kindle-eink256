.class public final enum Lcom/amazon/kcp/cover/badge/Badge$ViewType;
.super Ljava/lang/Enum;
.source "Badge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/cover/badge/Badge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/cover/badge/Badge$ViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/cover/badge/Badge$ViewType;

.field public static final enum IMAGE:Lcom/amazon/kcp/cover/badge/Badge$ViewType;

.field public static final enum TEXT:Lcom/amazon/kcp/cover/badge/Badge$ViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 14
    new-instance v0, Lcom/amazon/kcp/cover/badge/Badge$ViewType;

    const/4 v1, 0x0

    const-string v2, "IMAGE"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kcp/cover/badge/Badge$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/cover/badge/Badge$ViewType;->IMAGE:Lcom/amazon/kcp/cover/badge/Badge$ViewType;

    .line 15
    new-instance v0, Lcom/amazon/kcp/cover/badge/Badge$ViewType;

    const/4 v2, 0x1

    const-string v3, "TEXT"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kcp/cover/badge/Badge$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/cover/badge/Badge$ViewType;->TEXT:Lcom/amazon/kcp/cover/badge/Badge$ViewType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/kcp/cover/badge/Badge$ViewType;

    .line 13
    sget-object v4, Lcom/amazon/kcp/cover/badge/Badge$ViewType;->IMAGE:Lcom/amazon/kcp/cover/badge/Badge$ViewType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/kcp/cover/badge/Badge$ViewType;->$VALUES:[Lcom/amazon/kcp/cover/badge/Badge$ViewType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/cover/badge/Badge$ViewType;
    .locals 1

    .line 13
    const-class v0, Lcom/amazon/kcp/cover/badge/Badge$ViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/cover/badge/Badge$ViewType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/cover/badge/Badge$ViewType;
    .locals 1

    .line 13
    sget-object v0, Lcom/amazon/kcp/cover/badge/Badge$ViewType;->$VALUES:[Lcom/amazon/kcp/cover/badge/Badge$ViewType;

    invoke-virtual {v0}, [Lcom/amazon/kcp/cover/badge/Badge$ViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/cover/badge/Badge$ViewType;

    return-object v0
.end method
