.class public final enum Lcom/amazon/kcp/info/CustomTutorialFragment$Direction;
.super Ljava/lang/Enum;
.source "CustomTutorialFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/info/CustomTutorialFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/info/CustomTutorialFragment$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/info/CustomTutorialFragment$Direction;

.field public static final enum DOWNWARD:Lcom/amazon/kcp/info/CustomTutorialFragment$Direction;

.field public static final enum UPWARD:Lcom/amazon/kcp/info/CustomTutorialFragment$Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 30
    new-instance v0, Lcom/amazon/kcp/info/CustomTutorialFragment$Direction;

    const/4 v1, 0x0

    const-string v2, "UPWARD"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kcp/info/CustomTutorialFragment$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/info/CustomTutorialFragment$Direction;->UPWARD:Lcom/amazon/kcp/info/CustomTutorialFragment$Direction;

    new-instance v0, Lcom/amazon/kcp/info/CustomTutorialFragment$Direction;

    const/4 v2, 0x1

    const-string v3, "DOWNWARD"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kcp/info/CustomTutorialFragment$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/info/CustomTutorialFragment$Direction;->DOWNWARD:Lcom/amazon/kcp/info/CustomTutorialFragment$Direction;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/kcp/info/CustomTutorialFragment$Direction;

    .line 29
    sget-object v4, Lcom/amazon/kcp/info/CustomTutorialFragment$Direction;->UPWARD:Lcom/amazon/kcp/info/CustomTutorialFragment$Direction;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/kcp/info/CustomTutorialFragment$Direction;->$VALUES:[Lcom/amazon/kcp/info/CustomTutorialFragment$Direction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/info/CustomTutorialFragment$Direction;
    .locals 1

    .line 29
    const-class v0, Lcom/amazon/kcp/info/CustomTutorialFragment$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/info/CustomTutorialFragment$Direction;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/info/CustomTutorialFragment$Direction;
    .locals 1

    .line 29
    sget-object v0, Lcom/amazon/kcp/info/CustomTutorialFragment$Direction;->$VALUES:[Lcom/amazon/kcp/info/CustomTutorialFragment$Direction;

    invoke-virtual {v0}, [Lcom/amazon/kcp/info/CustomTutorialFragment$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/info/CustomTutorialFragment$Direction;

    return-object v0
.end method
