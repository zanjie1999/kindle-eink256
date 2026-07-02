.class public final enum Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;
.super Ljava/lang/Enum;
.source "DecorationAnchor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;

.field public static final enum Above:Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;

.field public static final enum BottomLeft:Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;

.field public static final enum BottomRight:Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;

.field public static final enum Left:Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;

.field public static final enum Right:Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;

.field public static final enum StrikeThrough:Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;

.field public static final enum TopLeft:Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;

.field public static final enum TopRight:Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;

.field public static final enum Under:Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 10
    new-instance v0, Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;

    const/4 v1, 0x0

    const-string v2, "Above"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;->Above:Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;

    .line 11
    new-instance v0, Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;

    const/4 v2, 0x1

    const-string v3, "StrikeThrough"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;->StrikeThrough:Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;

    .line 12
    new-instance v0, Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;

    const/4 v3, 0x2

    const-string v4, "Under"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;->Under:Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;

    .line 13
    new-instance v0, Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;

    const/4 v4, 0x3

    const-string v5, "TopLeft"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;->TopLeft:Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;

    .line 14
    new-instance v0, Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;

    const/4 v5, 0x4

    const-string v6, "Left"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;->Left:Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;

    .line 15
    new-instance v0, Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;

    const/4 v6, 0x5

    const-string v7, "BottomLeft"

    invoke-direct {v0, v7, v6}, Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;->BottomLeft:Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;

    .line 16
    new-instance v0, Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;

    const/4 v7, 0x6

    const-string v8, "TopRight"

    invoke-direct {v0, v8, v7}, Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;->TopRight:Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;

    .line 17
    new-instance v0, Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;

    const/4 v8, 0x7

    const-string v9, "Right"

    invoke-direct {v0, v9, v8}, Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;->Right:Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;

    .line 18
    new-instance v0, Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;

    const/16 v9, 0x8

    const-string v10, "BottomRight"

    invoke-direct {v0, v10, v9}, Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;->BottomRight:Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;

    const/16 v10, 0x9

    new-array v10, v10, [Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;

    .line 8
    sget-object v11, Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;->Above:Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;

    aput-object v11, v10, v1

    sget-object v1, Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;->StrikeThrough:Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;

    aput-object v1, v10, v2

    sget-object v1, Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;->Under:Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;

    aput-object v1, v10, v3

    sget-object v1, Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;->TopLeft:Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;

    aput-object v1, v10, v4

    sget-object v1, Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;->Left:Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;

    aput-object v1, v10, v5

    sget-object v1, Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;->BottomLeft:Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;

    aput-object v1, v10, v6

    sget-object v1, Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;->TopRight:Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;

    aput-object v1, v10, v7

    sget-object v1, Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;->Right:Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;

    aput-object v1, v10, v8

    aput-object v0, v10, v9

    sput-object v10, Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;->$VALUES:[Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;
    .locals 1

    .line 8
    const-class v0, Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;
    .locals 1

    .line 8
    sget-object v0, Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;->$VALUES:[Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;

    return-object v0
.end method
