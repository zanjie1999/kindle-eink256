.class final enum Lcom/amazon/kcp/library/LibraryContentListener$RefreshType;
.super Ljava/lang/Enum;
.source "LibraryContentListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/LibraryContentListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "RefreshType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/library/LibraryContentListener$RefreshType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/library/LibraryContentListener$RefreshType;

.field public static final enum NO_REFRESH:Lcom/amazon/kcp/library/LibraryContentListener$RefreshType;

.field public static final enum REFRESH_ALL:Lcom/amazon/kcp/library/LibraryContentListener$RefreshType;

.field public static final enum REFRESH_ITEM:Lcom/amazon/kcp/library/LibraryContentListener$RefreshType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 39
    new-instance v0, Lcom/amazon/kcp/library/LibraryContentListener$RefreshType;

    const/4 v1, 0x0

    const-string v2, "NO_REFRESH"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kcp/library/LibraryContentListener$RefreshType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/LibraryContentListener$RefreshType;->NO_REFRESH:Lcom/amazon/kcp/library/LibraryContentListener$RefreshType;

    new-instance v0, Lcom/amazon/kcp/library/LibraryContentListener$RefreshType;

    const/4 v2, 0x1

    const-string v3, "REFRESH_ITEM"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kcp/library/LibraryContentListener$RefreshType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/LibraryContentListener$RefreshType;->REFRESH_ITEM:Lcom/amazon/kcp/library/LibraryContentListener$RefreshType;

    new-instance v0, Lcom/amazon/kcp/library/LibraryContentListener$RefreshType;

    const/4 v3, 0x2

    const-string v4, "REFRESH_ALL"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kcp/library/LibraryContentListener$RefreshType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/LibraryContentListener$RefreshType;->REFRESH_ALL:Lcom/amazon/kcp/library/LibraryContentListener$RefreshType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/kcp/library/LibraryContentListener$RefreshType;

    .line 38
    sget-object v5, Lcom/amazon/kcp/library/LibraryContentListener$RefreshType;->NO_REFRESH:Lcom/amazon/kcp/library/LibraryContentListener$RefreshType;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/kcp/library/LibraryContentListener$RefreshType;->REFRESH_ITEM:Lcom/amazon/kcp/library/LibraryContentListener$RefreshType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/kcp/library/LibraryContentListener$RefreshType;->$VALUES:[Lcom/amazon/kcp/library/LibraryContentListener$RefreshType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/library/LibraryContentListener$RefreshType;
    .locals 1

    .line 38
    const-class v0, Lcom/amazon/kcp/library/LibraryContentListener$RefreshType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/library/LibraryContentListener$RefreshType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/library/LibraryContentListener$RefreshType;
    .locals 1

    .line 38
    sget-object v0, Lcom/amazon/kcp/library/LibraryContentListener$RefreshType;->$VALUES:[Lcom/amazon/kcp/library/LibraryContentListener$RefreshType;

    invoke-virtual {v0}, [Lcom/amazon/kcp/library/LibraryContentListener$RefreshType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/library/LibraryContentListener$RefreshType;

    return-object v0
.end method
