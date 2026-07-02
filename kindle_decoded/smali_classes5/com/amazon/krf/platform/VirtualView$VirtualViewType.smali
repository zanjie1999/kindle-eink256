.class public final enum Lcom/amazon/krf/platform/VirtualView$VirtualViewType;
.super Ljava/lang/Enum;
.source "VirtualView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/krf/platform/VirtualView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VirtualViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/krf/platform/VirtualView$VirtualViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

.field public static final enum AVI_PLUGIN:Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

.field public static final enum CONTENT_DECORATION:Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

.field public static final enum IMAGE:Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

.field public static final enum KVG:Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

.field public static final enum MAIN_VIEW:Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

.field public static final enum NEXT:Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

.field public static final enum NEXT_BUFFER:Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

.field public static final enum PREV:Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

.field public static final enum PREV_BUFFER:Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

.field public static final enum TEXT:Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

.field public static final enum UNDEFINED:Lcom/amazon/krf/platform/VirtualView$VirtualViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 18
    new-instance v0, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    const/4 v1, 0x0

    const-string v2, "UNDEFINED"

    invoke-direct {v0, v2, v1}, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;->UNDEFINED:Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    .line 22
    new-instance v0, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    const/4 v2, 0x1

    const-string v3, "MAIN_VIEW"

    invoke-direct {v0, v3, v2}, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;->MAIN_VIEW:Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    .line 26
    new-instance v0, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    const/4 v3, 0x2

    const-string v4, "CONTENT_DECORATION"

    invoke-direct {v0, v4, v3}, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;->CONTENT_DECORATION:Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    .line 30
    new-instance v0, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    const/4 v4, 0x3

    const-string v5, "AVI_PLUGIN"

    invoke-direct {v0, v5, v4}, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;->AVI_PLUGIN:Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    .line 34
    new-instance v0, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    const/4 v5, 0x4

    const-string v6, "IMAGE"

    invoke-direct {v0, v6, v5}, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;->IMAGE:Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    .line 38
    new-instance v0, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    const/4 v6, 0x5

    const-string v7, "TEXT"

    invoke-direct {v0, v7, v6}, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;->TEXT:Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    .line 43
    new-instance v0, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    const/4 v7, 0x6

    const-string v8, "PREV"

    invoke-direct {v0, v8, v7}, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;->PREV:Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    .line 48
    new-instance v0, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    const/4 v8, 0x7

    const-string v9, "PREV_BUFFER"

    invoke-direct {v0, v9, v8}, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;->PREV_BUFFER:Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    .line 53
    new-instance v0, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    const/16 v9, 0x8

    const-string v10, "NEXT_BUFFER"

    invoke-direct {v0, v10, v9}, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;->NEXT_BUFFER:Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    .line 58
    new-instance v0, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    const/16 v10, 0x9

    const-string v11, "NEXT"

    invoke-direct {v0, v11, v10}, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;->NEXT:Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    .line 62
    new-instance v0, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    const/16 v11, 0xa

    const-string v12, "KVG"

    invoke-direct {v0, v12, v11}, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;->KVG:Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    const/16 v12, 0xb

    new-array v12, v12, [Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    .line 14
    sget-object v13, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;->UNDEFINED:Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    aput-object v13, v12, v1

    sget-object v1, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;->MAIN_VIEW:Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    aput-object v1, v12, v2

    sget-object v1, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;->CONTENT_DECORATION:Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    aput-object v1, v12, v3

    sget-object v1, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;->AVI_PLUGIN:Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    aput-object v1, v12, v4

    sget-object v1, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;->IMAGE:Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    aput-object v1, v12, v5

    sget-object v1, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;->TEXT:Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    aput-object v1, v12, v6

    sget-object v1, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;->PREV:Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    aput-object v1, v12, v7

    sget-object v1, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;->PREV_BUFFER:Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    aput-object v1, v12, v8

    sget-object v1, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;->NEXT_BUFFER:Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    aput-object v1, v12, v9

    sget-object v1, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;->NEXT:Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    aput-object v1, v12, v10

    aput-object v0, v12, v11

    sput-object v12, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;->$VALUES:[Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/krf/platform/VirtualView$VirtualViewType;
    .locals 1

    .line 14
    const-class v0, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/krf/platform/VirtualView$VirtualViewType;
    .locals 1

    .line 14
    sget-object v0, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;->$VALUES:[Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    invoke-virtual {v0}, [Lcom/amazon/krf/platform/VirtualView$VirtualViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    return-object v0
.end method
