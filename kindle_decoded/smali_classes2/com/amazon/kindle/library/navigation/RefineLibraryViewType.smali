.class public final enum Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;
.super Ljava/lang/Enum;
.source "RefineLibraryViewType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

.field public static final enum COLLECTIONS:Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

.field public static final enum DETAILS:Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

.field public static final enum GRID:Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

.field public static final enum LIST:Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 8
    new-instance v0, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    const/4 v1, 0x0

    const-string v2, "DETAILS"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;->DETAILS:Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    .line 9
    new-instance v0, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    const/4 v2, 0x1

    const-string v3, "GRID"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;->GRID:Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    .line 10
    new-instance v0, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    const/4 v3, 0x2

    const-string v4, "LIST"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;->LIST:Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    .line 11
    new-instance v0, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    const/4 v4, 0x3

    const-string v5, "COLLECTIONS"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;->COLLECTIONS:Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    .line 7
    sget-object v6, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;->DETAILS:Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;->GRID:Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;->LIST:Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;->$VALUES:[Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromLibraryViewType(Lcom/amazon/kindle/krx/library/LibraryViewType;)Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;
    .locals 1

    .line 26
    sget-object v0, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType$1;->$SwitchMap$com$amazon$kindle$krx$library$LibraryViewType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 33
    sget-object p0, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;->GRID:Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    return-object p0

    .line 30
    :cond_0
    sget-object p0, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;->DETAILS:Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    return-object p0

    .line 28
    :cond_1
    sget-object p0, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;->LIST:Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    return-object p0
.end method

.method public static toLibraryViewType(Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;)Lcom/amazon/kindle/krx/library/LibraryViewType;
    .locals 1

    .line 14
    sget-object v0, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType$1;->$SwitchMap$com$amazon$kindle$library$navigation$RefineLibraryViewType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 21
    sget-object p0, Lcom/amazon/kindle/krx/library/LibraryViewType;->GRID:Lcom/amazon/kindle/krx/library/LibraryViewType;

    return-object p0

    .line 18
    :cond_0
    sget-object p0, Lcom/amazon/kindle/krx/library/LibraryViewType;->DETAILS:Lcom/amazon/kindle/krx/library/LibraryViewType;

    return-object p0

    .line 16
    :cond_1
    sget-object p0, Lcom/amazon/kindle/krx/library/LibraryViewType;->LIST:Lcom/amazon/kindle/krx/library/LibraryViewType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;
    .locals 1

    .line 7
    const-class v0, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;
    .locals 1

    .line 7
    sget-object v0, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;->$VALUES:[Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    return-object v0
.end method
