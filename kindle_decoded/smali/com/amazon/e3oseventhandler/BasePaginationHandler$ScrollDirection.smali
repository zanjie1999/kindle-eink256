.class public final enum Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;
.super Ljava/lang/Enum;
.source "BasePaginationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/e3oseventhandler/BasePaginationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScrollDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;

.field public static final enum Backward:Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;

.field public static final enum Forward:Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 592
    new-instance v0, Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;

    const/4 v1, 0x0

    const-string v2, "Forward"

    invoke-direct {v0, v2, v1}, Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;->Forward:Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;

    .line 596
    new-instance v0, Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;

    const/4 v2, 0x1

    const-string v3, "Backward"

    invoke-direct {v0, v3, v2}, Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;->Backward:Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;

    .line 588
    sget-object v4, Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;->Forward:Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;->$VALUES:[Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 588
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;
    .locals 1

    .line 588
    const-class v0, Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;

    return-object p0
.end method

.method public static values()[Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;
    .locals 1

    .line 588
    sget-object v0, Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;->$VALUES:[Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;

    invoke-virtual {v0}, [Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;

    return-object v0
.end method
