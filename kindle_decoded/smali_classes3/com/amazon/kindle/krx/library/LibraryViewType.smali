.class public final enum Lcom/amazon/kindle/krx/library/LibraryViewType;
.super Ljava/lang/Enum;
.source "LibraryViewType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/library/LibraryViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/library/LibraryViewType;

.field public static final enum CAROUSEL:Lcom/amazon/kindle/krx/library/LibraryViewType;

.field public static final enum DETAILS:Lcom/amazon/kindle/krx/library/LibraryViewType;

.field public static final enum GRID:Lcom/amazon/kindle/krx/library/LibraryViewType;

.field public static final enum LIST:Lcom/amazon/kindle/krx/library/LibraryViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 10
    new-instance v0, Lcom/amazon/kindle/krx/library/LibraryViewType;

    const/4 v1, 0x0

    const-string v2, "CAROUSEL"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/krx/library/LibraryViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/library/LibraryViewType;->CAROUSEL:Lcom/amazon/kindle/krx/library/LibraryViewType;

    .line 11
    new-instance v0, Lcom/amazon/kindle/krx/library/LibraryViewType;

    const/4 v2, 0x1

    const-string v3, "LIST"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/krx/library/LibraryViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/library/LibraryViewType;->LIST:Lcom/amazon/kindle/krx/library/LibraryViewType;

    .line 12
    new-instance v0, Lcom/amazon/kindle/krx/library/LibraryViewType;

    const/4 v3, 0x2

    const-string v4, "GRID"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/krx/library/LibraryViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/library/LibraryViewType;->GRID:Lcom/amazon/kindle/krx/library/LibraryViewType;

    .line 13
    new-instance v0, Lcom/amazon/kindle/krx/library/LibraryViewType;

    const/4 v4, 0x3

    const-string v5, "DETAILS"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/krx/library/LibraryViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/library/LibraryViewType;->DETAILS:Lcom/amazon/kindle/krx/library/LibraryViewType;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/kindle/krx/library/LibraryViewType;

    .line 8
    sget-object v6, Lcom/amazon/kindle/krx/library/LibraryViewType;->CAROUSEL:Lcom/amazon/kindle/krx/library/LibraryViewType;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/kindle/krx/library/LibraryViewType;->LIST:Lcom/amazon/kindle/krx/library/LibraryViewType;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/kindle/krx/library/LibraryViewType;->GRID:Lcom/amazon/kindle/krx/library/LibraryViewType;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/kindle/krx/library/LibraryViewType;->$VALUES:[Lcom/amazon/kindle/krx/library/LibraryViewType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/library/LibraryViewType;
    .locals 1

    .line 8
    const-class v0, Lcom/amazon/kindle/krx/library/LibraryViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/library/LibraryViewType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/library/LibraryViewType;
    .locals 1

    .line 8
    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryViewType;->$VALUES:[Lcom/amazon/kindle/krx/library/LibraryViewType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/library/LibraryViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/library/LibraryViewType;

    return-object v0
.end method
