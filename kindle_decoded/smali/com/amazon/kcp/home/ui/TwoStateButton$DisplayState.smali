.class public final enum Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;
.super Ljava/lang/Enum;
.source "TwoStateButton.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/home/ui/TwoStateButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisplayState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;

.field public static final enum progressBar:Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;

.field public static final enum stateOne:Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;

.field public static final enum stateTwo:Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;

    new-instance v2, Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string/jumbo v5, "stateOne"

    .line 34
    invoke-direct {v2, v5, v3, v4}, Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;->stateOne:Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;

    aput-object v2, v1, v3

    new-instance v2, Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;

    const/4 v3, 0x2

    const-string/jumbo v5, "stateTwo"

    .line 35
    invoke-direct {v2, v5, v4, v3}, Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;->stateTwo:Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;

    aput-object v2, v1, v4

    new-instance v2, Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;

    const-string/jumbo v4, "progressBar"

    .line 36
    invoke-direct {v2, v4, v3, v0}, Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;->progressBar:Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;

    aput-object v2, v1, v3

    sput-object v1, Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;->$VALUES:[Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;
    .locals 1

    const-class v0, Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;->$VALUES:[Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;

    invoke-virtual {v0}, [Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;

    return-object v0
.end method
