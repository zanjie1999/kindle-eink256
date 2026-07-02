.class public final enum Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$PageTurnBox;
.super Ljava/lang/Enum;
.source "SelectionGestureHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "PageTurnBox"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$PageTurnBox;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$PageTurnBox;

.field public static final enum NEXT_PAGE_BOX:Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$PageTurnBox;

.field public static final enum OUTSIDE_BOX:Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$PageTurnBox;

.field public static final enum PREV_PAGE_BOX:Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$PageTurnBox;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 95
    new-instance v0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$PageTurnBox;

    const/4 v1, 0x0

    const-string v2, "OUTSIDE_BOX"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$PageTurnBox;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$PageTurnBox;->OUTSIDE_BOX:Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$PageTurnBox;

    .line 96
    new-instance v0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$PageTurnBox;

    const/4 v2, 0x1

    const-string v3, "PREV_PAGE_BOX"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$PageTurnBox;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$PageTurnBox;->PREV_PAGE_BOX:Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$PageTurnBox;

    .line 97
    new-instance v0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$PageTurnBox;

    const/4 v3, 0x2

    const-string v4, "NEXT_PAGE_BOX"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$PageTurnBox;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$PageTurnBox;->NEXT_PAGE_BOX:Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$PageTurnBox;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$PageTurnBox;

    .line 94
    sget-object v5, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$PageTurnBox;->OUTSIDE_BOX:Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$PageTurnBox;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$PageTurnBox;->PREV_PAGE_BOX:Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$PageTurnBox;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$PageTurnBox;->$VALUES:[Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$PageTurnBox;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 94
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$PageTurnBox;
    .locals 1

    .line 94
    const-class v0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$PageTurnBox;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$PageTurnBox;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$PageTurnBox;
    .locals 1

    .line 94
    sget-object v0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$PageTurnBox;->$VALUES:[Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$PageTurnBox;

    invoke-virtual {v0}, [Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$PageTurnBox;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$PageTurnBox;

    return-object v0
.end method
