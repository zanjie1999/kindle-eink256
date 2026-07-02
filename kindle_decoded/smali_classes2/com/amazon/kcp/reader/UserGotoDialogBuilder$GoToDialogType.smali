.class public final enum Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;
.super Ljava/lang/Enum;
.source "UserGotoDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/UserGotoDialogBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GoToDialogType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;

.field public static final enum LOCATION_ONLY:Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;

.field public static final enum PAGE_ONLY:Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;

.field public static final enum PAGE_OR_LOCATION:Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;

.field private static final idMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 294
    new-instance v0, Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;

    const/4 v1, 0x0

    const-string v2, "LOCATION_ONLY"

    invoke-direct {v0, v2, v1, v1}, Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;->LOCATION_ONLY:Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;

    .line 295
    new-instance v0, Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const-string v4, "PAGE_ONLY"

    invoke-direct {v0, v4, v3, v2}, Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;->PAGE_ONLY:Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;

    .line 296
    new-instance v0, Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;

    const/4 v4, 0x3

    const-string v5, "PAGE_OR_LOCATION"

    invoke-direct {v0, v5, v2, v4}, Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;->PAGE_OR_LOCATION:Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;

    new-array v4, v4, [Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;

    .line 293
    sget-object v5, Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;->LOCATION_ONLY:Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;

    aput-object v5, v4, v1

    sget-object v5, Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;->PAGE_ONLY:Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;

    aput-object v5, v4, v3

    aput-object v0, v4, v2

    sput-object v4, Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;->$VALUES:[Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;

    .line 304
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;->idMap:Ljava/util/Map;

    .line 307
    invoke-static {}, Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;->values()[Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;

    move-result-object v0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 308
    sget-object v4, Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;->idMap:Ljava/util/Map;

    iget v5, v3, Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 315
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 316
    iput p3, p0, Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;->id:I

    return-void
.end method

.method public static fromDialogId(I)Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;
    .locals 1

    .line 333
    sget-object v0, Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;->idMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;
    .locals 1

    .line 293
    const-class v0, Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;
    .locals 1

    .line 293
    sget-object v0, Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;->$VALUES:[Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;

    invoke-virtual {v0}, [Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;

    return-object v0
.end method
