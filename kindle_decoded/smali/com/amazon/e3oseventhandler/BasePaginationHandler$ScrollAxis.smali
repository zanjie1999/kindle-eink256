.class public final enum Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollAxis;
.super Ljava/lang/Enum;
.source "BasePaginationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/e3oseventhandler/BasePaginationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScrollAxis"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollAxis;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollAxis;

.field public static final enum X:Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollAxis;

.field public static final enum Y:Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollAxis;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 606
    new-instance v0, Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollAxis;

    const/4 v1, 0x0

    const-string v2, "X"

    invoke-direct {v0, v2, v1}, Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollAxis;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollAxis;->X:Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollAxis;

    .line 610
    new-instance v0, Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollAxis;

    const/4 v2, 0x1

    const-string v3, "Y"

    invoke-direct {v0, v3, v2}, Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollAxis;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollAxis;->Y:Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollAxis;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollAxis;

    .line 602
    sget-object v4, Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollAxis;->X:Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollAxis;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollAxis;->$VALUES:[Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollAxis;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 602
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollAxis;
    .locals 1

    .line 602
    const-class v0, Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollAxis;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollAxis;

    return-object p0
.end method

.method public static values()[Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollAxis;
    .locals 1

    .line 602
    sget-object v0, Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollAxis;->$VALUES:[Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollAxis;

    invoke-virtual {v0}, [Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollAxis;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollAxis;

    return-object v0
.end method
