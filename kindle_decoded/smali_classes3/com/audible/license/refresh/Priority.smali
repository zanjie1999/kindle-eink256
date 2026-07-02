.class public final enum Lcom/audible/license/refresh/Priority;
.super Ljava/lang/Enum;
.source "Priority.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/license/refresh/Priority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/license/refresh/Priority;

.field public static final enum IMMEDIATE:Lcom/audible/license/refresh/Priority;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/audible/license/refresh/Priority;

    new-instance v1, Lcom/audible/license/refresh/Priority;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "IMMEDIATE"

    .line 11
    invoke-direct {v1, v4, v2, v3}, Lcom/audible/license/refresh/Priority;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/audible/license/refresh/Priority;->IMMEDIATE:Lcom/audible/license/refresh/Priority;

    aput-object v1, v0, v2

    new-instance v1, Lcom/audible/license/refresh/Priority;

    const-string v2, "NORMAL"

    const/4 v4, 0x5

    .line 16
    invoke-direct {v1, v2, v3, v4}, Lcom/audible/license/refresh/Priority;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v3

    sput-object v0, Lcom/audible/license/refresh/Priority;->$VALUES:[Lcom/audible/license/refresh/Priority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/audible/license/refresh/Priority;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/license/refresh/Priority;
    .locals 1

    const-class v0, Lcom/audible/license/refresh/Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/license/refresh/Priority;

    return-object p0
.end method

.method public static values()[Lcom/audible/license/refresh/Priority;
    .locals 1

    sget-object v0, Lcom/audible/license/refresh/Priority;->$VALUES:[Lcom/audible/license/refresh/Priority;

    invoke-virtual {v0}, [Lcom/audible/license/refresh/Priority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/license/refresh/Priority;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/audible/license/refresh/Priority;->value:I

    return v0
.end method
