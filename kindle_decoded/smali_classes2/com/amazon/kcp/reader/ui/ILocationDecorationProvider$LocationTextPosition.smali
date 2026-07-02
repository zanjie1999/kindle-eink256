.class public final enum Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider$LocationTextPosition;
.super Ljava/lang/Enum;
.source "ILocationDecorationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LocationTextPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider$LocationTextPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider$LocationTextPosition;

.field public static final enum BottomCenter:Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider$LocationTextPosition;

.field public static final enum BottomLeft:Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider$LocationTextPosition;

.field public static final enum BottomRight:Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider$LocationTextPosition;

.field public static final enum TopCenter:Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider$LocationTextPosition;

.field public static final enum TopLeft:Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider$LocationTextPosition;

.field public static final enum TopRight:Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider$LocationTextPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 21
    new-instance v0, Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider$LocationTextPosition;

    const/4 v1, 0x0

    const-string v2, "TopLeft"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider$LocationTextPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider$LocationTextPosition;->TopLeft:Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider$LocationTextPosition;

    .line 22
    new-instance v0, Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider$LocationTextPosition;

    const/4 v2, 0x1

    const-string v3, "TopCenter"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider$LocationTextPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider$LocationTextPosition;->TopCenter:Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider$LocationTextPosition;

    .line 23
    new-instance v0, Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider$LocationTextPosition;

    const/4 v3, 0x2

    const-string v4, "TopRight"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider$LocationTextPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider$LocationTextPosition;->TopRight:Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider$LocationTextPosition;

    .line 24
    new-instance v0, Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider$LocationTextPosition;

    const/4 v4, 0x3

    const-string v5, "BottomLeft"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider$LocationTextPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider$LocationTextPosition;->BottomLeft:Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider$LocationTextPosition;

    .line 25
    new-instance v0, Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider$LocationTextPosition;

    const/4 v5, 0x4

    const-string v6, "BottomCenter"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider$LocationTextPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider$LocationTextPosition;->BottomCenter:Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider$LocationTextPosition;

    .line 26
    new-instance v0, Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider$LocationTextPosition;

    const/4 v6, 0x5

    const-string v7, "BottomRight"

    invoke-direct {v0, v7, v6}, Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider$LocationTextPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider$LocationTextPosition;->BottomRight:Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider$LocationTextPosition;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider$LocationTextPosition;

    .line 20
    sget-object v8, Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider$LocationTextPosition;->TopLeft:Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider$LocationTextPosition;

    aput-object v8, v7, v1

    sget-object v1, Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider$LocationTextPosition;->TopCenter:Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider$LocationTextPosition;

    aput-object v1, v7, v2

    sget-object v1, Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider$LocationTextPosition;->TopRight:Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider$LocationTextPosition;

    aput-object v1, v7, v3

    sget-object v1, Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider$LocationTextPosition;->BottomLeft:Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider$LocationTextPosition;

    aput-object v1, v7, v4

    sget-object v1, Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider$LocationTextPosition;->BottomCenter:Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider$LocationTextPosition;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider$LocationTextPosition;->$VALUES:[Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider$LocationTextPosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider$LocationTextPosition;
    .locals 1

    .line 20
    const-class v0, Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider$LocationTextPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider$LocationTextPosition;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider$LocationTextPosition;
    .locals 1

    .line 20
    sget-object v0, Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider$LocationTextPosition;->$VALUES:[Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider$LocationTextPosition;

    invoke-virtual {v0}, [Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider$LocationTextPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider$LocationTextPosition;

    return-object v0
.end method
