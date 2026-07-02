.class public final enum Lcom/amazon/krf/platform/ViewSettings$TextAlignment;
.super Ljava/lang/Enum;
.source "ViewSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/krf/platform/ViewSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextAlignment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/krf/platform/ViewSettings$TextAlignment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/krf/platform/ViewSettings$TextAlignment;

.field public static final enum BOOK_DEFAULT:Lcom/amazon/krf/platform/ViewSettings$TextAlignment;

.field public static final enum CENTERED:Lcom/amazon/krf/platform/ViewSettings$TextAlignment;

.field public static final enum JUSTIFIED:Lcom/amazon/krf/platform/ViewSettings$TextAlignment;

.field public static final enum LEFT_ALIGNED:Lcom/amazon/krf/platform/ViewSettings$TextAlignment;

.field public static final enum RIGHT_ALIGNED:Lcom/amazon/krf/platform/ViewSettings$TextAlignment;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 28
    new-instance v0, Lcom/amazon/krf/platform/ViewSettings$TextAlignment;

    const/4 v1, 0x0

    const-string v2, "RIGHT_ALIGNED"

    invoke-direct {v0, v2, v1}, Lcom/amazon/krf/platform/ViewSettings$TextAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/ViewSettings$TextAlignment;->RIGHT_ALIGNED:Lcom/amazon/krf/platform/ViewSettings$TextAlignment;

    .line 32
    new-instance v0, Lcom/amazon/krf/platform/ViewSettings$TextAlignment;

    const/4 v2, 0x1

    const-string v3, "CENTERED"

    invoke-direct {v0, v3, v2}, Lcom/amazon/krf/platform/ViewSettings$TextAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/ViewSettings$TextAlignment;->CENTERED:Lcom/amazon/krf/platform/ViewSettings$TextAlignment;

    .line 36
    new-instance v0, Lcom/amazon/krf/platform/ViewSettings$TextAlignment;

    const/4 v3, 0x2

    const-string v4, "LEFT_ALIGNED"

    invoke-direct {v0, v4, v3}, Lcom/amazon/krf/platform/ViewSettings$TextAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/ViewSettings$TextAlignment;->LEFT_ALIGNED:Lcom/amazon/krf/platform/ViewSettings$TextAlignment;

    .line 40
    new-instance v0, Lcom/amazon/krf/platform/ViewSettings$TextAlignment;

    const/4 v4, 0x3

    const-string v5, "JUSTIFIED"

    invoke-direct {v0, v5, v4}, Lcom/amazon/krf/platform/ViewSettings$TextAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/ViewSettings$TextAlignment;->JUSTIFIED:Lcom/amazon/krf/platform/ViewSettings$TextAlignment;

    .line 44
    new-instance v0, Lcom/amazon/krf/platform/ViewSettings$TextAlignment;

    const/4 v5, 0x4

    const-string v6, "BOOK_DEFAULT"

    invoke-direct {v0, v6, v5}, Lcom/amazon/krf/platform/ViewSettings$TextAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/ViewSettings$TextAlignment;->BOOK_DEFAULT:Lcom/amazon/krf/platform/ViewSettings$TextAlignment;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/krf/platform/ViewSettings$TextAlignment;

    .line 24
    sget-object v7, Lcom/amazon/krf/platform/ViewSettings$TextAlignment;->RIGHT_ALIGNED:Lcom/amazon/krf/platform/ViewSettings$TextAlignment;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/krf/platform/ViewSettings$TextAlignment;->CENTERED:Lcom/amazon/krf/platform/ViewSettings$TextAlignment;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/krf/platform/ViewSettings$TextAlignment;->LEFT_ALIGNED:Lcom/amazon/krf/platform/ViewSettings$TextAlignment;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/krf/platform/ViewSettings$TextAlignment;->JUSTIFIED:Lcom/amazon/krf/platform/ViewSettings$TextAlignment;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/krf/platform/ViewSettings$TextAlignment;->$VALUES:[Lcom/amazon/krf/platform/ViewSettings$TextAlignment;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static createFromInt(I)Lcom/amazon/krf/platform/ViewSettings$TextAlignment;
    .locals 1

    if-ltz p0, :cond_1

    .line 47
    invoke-static {}, Lcom/amazon/krf/platform/ViewSettings$TextAlignment;->values()[Lcom/amazon/krf/platform/ViewSettings$TextAlignment;

    move-result-object v0

    array-length v0, v0

    if-lt p0, v0, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    invoke-static {}, Lcom/amazon/krf/platform/ViewSettings$TextAlignment;->values()[Lcom/amazon/krf/platform/ViewSettings$TextAlignment;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0

    .line 48
    :cond_1
    :goto_0
    sget-object p0, Lcom/amazon/krf/platform/ViewSettings$TextAlignment;->BOOK_DEFAULT:Lcom/amazon/krf/platform/ViewSettings$TextAlignment;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/krf/platform/ViewSettings$TextAlignment;
    .locals 1

    .line 24
    const-class v0, Lcom/amazon/krf/platform/ViewSettings$TextAlignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/krf/platform/ViewSettings$TextAlignment;

    return-object p0
.end method

.method public static values()[Lcom/amazon/krf/platform/ViewSettings$TextAlignment;
    .locals 1

    .line 24
    sget-object v0, Lcom/amazon/krf/platform/ViewSettings$TextAlignment;->$VALUES:[Lcom/amazon/krf/platform/ViewSettings$TextAlignment;

    invoke-virtual {v0}, [Lcom/amazon/krf/platform/ViewSettings$TextAlignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/krf/platform/ViewSettings$TextAlignment;

    return-object v0
.end method
