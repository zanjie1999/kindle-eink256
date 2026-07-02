.class final enum Lcom/amazon/nwstd/toc/TOCListController$ItemType;
.super Ljava/lang/Enum;
.source "TOCListController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/nwstd/toc/TOCListController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ItemType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/nwstd/toc/TOCListController$ItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/nwstd/toc/TOCListController$ItemType;

.field public static final enum ITEM_TYPE_ARTICLE:Lcom/amazon/nwstd/toc/TOCListController$ItemType;

.field public static final enum ITEM_TYPE_SECTION_HEADER:Lcom/amazon/nwstd/toc/TOCListController$ItemType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 58
    new-instance v0, Lcom/amazon/nwstd/toc/TOCListController$ItemType;

    const/4 v1, 0x0

    const-string v2, "ITEM_TYPE_ARTICLE"

    invoke-direct {v0, v2, v1}, Lcom/amazon/nwstd/toc/TOCListController$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/toc/TOCListController$ItemType;->ITEM_TYPE_ARTICLE:Lcom/amazon/nwstd/toc/TOCListController$ItemType;

    .line 59
    new-instance v0, Lcom/amazon/nwstd/toc/TOCListController$ItemType;

    const/4 v2, 0x1

    const-string v3, "ITEM_TYPE_SECTION_HEADER"

    invoke-direct {v0, v3, v2}, Lcom/amazon/nwstd/toc/TOCListController$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/toc/TOCListController$ItemType;->ITEM_TYPE_SECTION_HEADER:Lcom/amazon/nwstd/toc/TOCListController$ItemType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/nwstd/toc/TOCListController$ItemType;

    .line 57
    sget-object v4, Lcom/amazon/nwstd/toc/TOCListController$ItemType;->ITEM_TYPE_ARTICLE:Lcom/amazon/nwstd/toc/TOCListController$ItemType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/nwstd/toc/TOCListController$ItemType;->$VALUES:[Lcom/amazon/nwstd/toc/TOCListController$ItemType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/nwstd/toc/TOCListController$ItemType;
    .locals 1

    .line 57
    const-class v0, Lcom/amazon/nwstd/toc/TOCListController$ItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/nwstd/toc/TOCListController$ItemType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/nwstd/toc/TOCListController$ItemType;
    .locals 1

    .line 57
    sget-object v0, Lcom/amazon/nwstd/toc/TOCListController$ItemType;->$VALUES:[Lcom/amazon/nwstd/toc/TOCListController$ItemType;

    invoke-virtual {v0}, [Lcom/amazon/nwstd/toc/TOCListController$ItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/nwstd/toc/TOCListController$ItemType;

    return-object v0
.end method
