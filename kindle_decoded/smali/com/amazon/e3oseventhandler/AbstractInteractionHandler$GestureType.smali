.class public final enum Lcom/amazon/e3oseventhandler/AbstractInteractionHandler$GestureType;
.super Ljava/lang/Enum;
.source "AbstractInteractionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/e3oseventhandler/AbstractInteractionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GestureType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/e3oseventhandler/AbstractInteractionHandler$GestureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/e3oseventhandler/AbstractInteractionHandler$GestureType;

.field public static final enum SCROLL:Lcom/amazon/e3oseventhandler/AbstractInteractionHandler$GestureType;

.field public static final enum UNKNOWN:Lcom/amazon/e3oseventhandler/AbstractInteractionHandler$GestureType;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 82
    new-instance v0, Lcom/amazon/e3oseventhandler/AbstractInteractionHandler$GestureType;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1, v1}, Lcom/amazon/e3oseventhandler/AbstractInteractionHandler$GestureType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/e3oseventhandler/AbstractInteractionHandler$GestureType;->UNKNOWN:Lcom/amazon/e3oseventhandler/AbstractInteractionHandler$GestureType;

    .line 87
    new-instance v0, Lcom/amazon/e3oseventhandler/AbstractInteractionHandler$GestureType;

    const/4 v2, 0x1

    const-string v3, "SCROLL"

    const/4 v4, 0x4

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/e3oseventhandler/AbstractInteractionHandler$GestureType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/e3oseventhandler/AbstractInteractionHandler$GestureType;->SCROLL:Lcom/amazon/e3oseventhandler/AbstractInteractionHandler$GestureType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/e3oseventhandler/AbstractInteractionHandler$GestureType;

    .line 77
    sget-object v4, Lcom/amazon/e3oseventhandler/AbstractInteractionHandler$GestureType;->UNKNOWN:Lcom/amazon/e3oseventhandler/AbstractInteractionHandler$GestureType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/e3oseventhandler/AbstractInteractionHandler$GestureType;->$VALUES:[Lcom/amazon/e3oseventhandler/AbstractInteractionHandler$GestureType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 90
    iput p3, p0, Lcom/amazon/e3oseventhandler/AbstractInteractionHandler$GestureType;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/e3oseventhandler/AbstractInteractionHandler$GestureType;
    .locals 1

    .line 77
    const-class v0, Lcom/amazon/e3oseventhandler/AbstractInteractionHandler$GestureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/e3oseventhandler/AbstractInteractionHandler$GestureType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/e3oseventhandler/AbstractInteractionHandler$GestureType;
    .locals 1

    .line 77
    sget-object v0, Lcom/amazon/e3oseventhandler/AbstractInteractionHandler$GestureType;->$VALUES:[Lcom/amazon/e3oseventhandler/AbstractInteractionHandler$GestureType;

    invoke-virtual {v0}, [Lcom/amazon/e3oseventhandler/AbstractInteractionHandler$GestureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/e3oseventhandler/AbstractInteractionHandler$GestureType;

    return-object v0
.end method


# virtual methods
.method public getmId()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/amazon/e3oseventhandler/AbstractInteractionHandler$GestureType;->mId:I

    return v0
.end method
